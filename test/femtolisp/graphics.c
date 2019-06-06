#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <assert.h>
#include <sys/types.h>
#include <setjmp.h>
#include "llt.h"
#include "flisp.h"
#include "equalhash.h"

/*  ___ ___         _                     __  __         _     */
/* | _ ) _ ) ___ __| |___ __  __ _ _ _   |  \/  |___  __| |___ */
/* | _ \ _ \/ -_) _| / / '  \/ _` | ' \  | |\/| / _ \/ _` (_-< */
/* |___/___/\___\__|_\_\_|_|_\__,_|_||_| |_|  |_\___/\__,_/__/ */

#include <stdio.h>
#include <math.h>

#include "SDL_opengl.h"
#include "SDL_test_common.h"

typedef struct GL_Context
{
#define SDL_PROC(ret,func,params) ret (APIENTRY *func) params;
#include "../../src/render/opengl/SDL_glfuncs.h"
#undef SDL_PROC
} GL_Context;

#define SHADED_CUBE

static SDLTest_CommonState *state;
static SDL_GLContext sdl_glcontext; // of type void*; see SDL_video.h
static GL_Context glcontext;

static int LoadContext(GL_Context * data)
{
#if SDL_VIDEO_DRIVER_UIKIT
#define __SDL_NOGETPROCADDR__
#elif SDL_VIDEO_DRIVER_ANDROID
#define __SDL_NOGETPROCADDR__
#elif SDL_VIDEO_DRIVER_PANDORA
#define __SDL_NOGETPROCADDR__
#endif

#if defined __SDL_NOGETPROCADDR__
#define SDL_PROC(ret,func,params) data->func=func;
#else
#define SDL_PROC(ret,func,params)                                       \
    do {                                                                \
        data->func = SDL_GL_GetProcAddress(#func);                      \
        if ( ! data->func ) {                                           \
            return SDL_SetError("Couldn't load GL function %s: %s", #func, SDL_GetError()); \
        }                                                               \
    } while ( 0 );
#endif /* __SDL_NOGETPROCADDR__ */

#include "../../src/render/opengl/SDL_glfuncs.h"
#undef SDL_PROC
    return 0;
}



static void
close()
{
    if (sdl_glcontext) {
        /* SDL_GL_MakeCurrent(0, NULL); *//* doesn't do anything */
        SDL_GL_DeleteContext(sdl_glcontext);
    }
    SDLTest_CommonQuit(state);
}

/* Call this instead of exit(), so we can clean up SDL: atexit() is evil. */
static void
quit(int rc)
{
    close();
    exit(rc);
}

static void
Render()
{
    static float color[8][3] = {
        {1.0, 1.0, 0.0},
        {1.0, 0.0, 0.0},
        {0.0, 0.0, 0.0},
        {0.0, 1.0, 0.0},
        {0.0, 1.0, 1.0},
        {1.0, 1.0, 1.0},
        {1.0, 0.0, 1.0},
        {0.0, 0.0, 1.0}
    };
    static float cube[8][3] = {
        { 0.5,  0.5, -0.5},
        { 0.5, -0.5, -0.5},
        {-0.5, -0.5, -0.5},
        {-0.5,  0.5, -0.5},
        {-0.5,  0.5,  0.5},
        { 0.5,  0.5,  0.5},
        { 0.5, -0.5,  0.5},
        {-0.5, -0.5,  0.5}
    };

    /* Do our drawing, too. */
    glcontext.glClearColor(0.0, 0.0, 0.0, 1.0);
    glcontext.glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glcontext.glBegin(GL_QUADS);

#ifdef SHADED_CUBE
    glcontext.glColor3fv(color[0]);
    glcontext.glVertex3fv(cube[0]);
    glcontext.glColor3fv(color[1]);
    glcontext.glVertex3fv(cube[1]);
    glcontext.glColor3fv(color[2]);
    glcontext.glVertex3fv(cube[2]);
    glcontext.glColor3fv(color[3]);
    glcontext.glVertex3fv(cube[3]);

    glcontext.glColor3fv(color[3]);
    glcontext.glVertex3fv(cube[3]);
    glcontext.glColor3fv(color[4]);
    glcontext.glVertex3fv(cube[4]);
    glcontext.glColor3fv(color[7]);
    glcontext.glVertex3fv(cube[7]);
    glcontext.glColor3fv(color[2]);
    glcontext.glVertex3fv(cube[2]);

    glcontext.glColor3fv(color[0]);
    glcontext.glVertex3fv(cube[0]);
    glcontext.glColor3fv(color[5]);
    glcontext.glVertex3fv(cube[5]);
    glcontext.glColor3fv(color[6]);
    glcontext.glVertex3fv(cube[6]);
    glcontext.glColor3fv(color[1]);
    glcontext.glVertex3fv(cube[1]);

    glcontext.glColor3fv(color[5]);
    glcontext.glVertex3fv(cube[5]);
    glcontext.glColor3fv(color[4]);
    glcontext.glVertex3fv(cube[4]);
    glcontext.glColor3fv(color[7]);
    glcontext.glVertex3fv(cube[7]);
    glcontext.glColor3fv(color[6]);
    glcontext.glVertex3fv(cube[6]);

    glcontext.glColor3fv(color[5]);
    glcontext.glVertex3fv(cube[5]);
    glcontext.glColor3fv(color[0]);
    glcontext.glVertex3fv(cube[0]);
    glcontext.glColor3fv(color[3]);
    glcontext.glVertex3fv(cube[3]);
    glcontext.glColor3fv(color[4]);
    glcontext.glVertex3fv(cube[4]);

    glcontext.glColor3fv(color[6]);
    glcontext.glVertex3fv(cube[6]);
    glcontext.glColor3fv(color[1]);
    glcontext.glVertex3fv(cube[1]);
    glcontext.glColor3fv(color[2]);
    glcontext.glVertex3fv(cube[2]);
    glcontext.glColor3fv(color[7]);
    glcontext.glVertex3fv(cube[7]);
#else /* flat cube */
    glcontext.glColor3f(1.0, 0.0, 0.0);
    glcontext.glVertex3fv(cube[0]);
    glcontext.glVertex3fv(cube[1]);
    glcontext.glVertex3fv(cube[2]);
    glcontext.glVertex3fv(cube[3]);

    glcontext.glColor3f(0.0, 1.0, 0.0);
    glcontext.glVertex3fv(cube[3]);
    glcontext.glVertex3fv(cube[4]);
    glcontext.glVertex3fv(cube[7]);
    glcontext.glVertex3fv(cube[2]);

    glcontext.glColor3f(0.0, 0.0, 1.0);
    glcontext.glVertex3fv(cube[0]);
    glcontext.glVertex3fv(cube[5]);
    glcontext.glVertex3fv(cube[6]);
    glcontext.glVertex3fv(cube[1]);

    glcontext.glColor3f(0.0, 1.0, 1.0);
    glcontext.glVertex3fv(cube[5]);
    glcontext.glVertex3fv(cube[4]);
    glcontext.glVertex3fv(cube[7]);
    glcontext.glVertex3fv(cube[6]);

    glcontext.glColor3f(1.0, 1.0, 0.0);
    glcontext.glVertex3fv(cube[5]);
    glcontext.glVertex3fv(cube[0]);
    glcontext.glVertex3fv(cube[3]);
    glcontext.glVertex3fv(cube[4]);

    glcontext.glColor3f(1.0, 0.0, 1.0);
    glcontext.glVertex3fv(cube[6]);
    glcontext.glVertex3fv(cube[1]);
    glcontext.glVertex3fv(cube[2]);
    glcontext.glVertex3fv(cube[7]);
#endif /* SHADED_CUBE */

    glcontext.glEnd();

    glcontext.glMatrixMode(GL_MODELVIEW);
    glcontext.glRotatef(5.0, 1.0, 1.0, 1.0);
}

int
sdl_test_main(int argc, char *argv[])
{
    int fsaa, accel;
    int value;
    int i, done;
    SDL_DisplayMode mode;
    SDL_Event event;
    Uint32 then, now, frames;
    int status;
    int dw, dh;

    /* Enable standard application logging */
    SDL_LogSetPriority(SDL_LOG_CATEGORY_APPLICATION, SDL_LOG_PRIORITY_INFO);

    /* Initialize parameters */
    fsaa = 0;
    accel = -1;

    /* Initialize test framework */
    state = SDLTest_CommonCreateState(argv, SDL_INIT_VIDEO);
    if (!state) {
        return 1;
    }
    for (i = 1; i < argc;) {
        int consumed;

        consumed = SDLTest_CommonArg(state, i);
        if (consumed == 0) {
            if (SDL_strcasecmp(argv[i], "--fsaa") == 0 && i+1 < argc) {
                fsaa = atoi(argv[i+1]);
                consumed = 2;
            } else if (SDL_strcasecmp(argv[i], "--accel") == 0 && i+1 < argc) {
                accel = atoi(argv[i+1]);
                consumed = 2;
            } else {
                consumed = -1;
            }
        }
        if (consumed < 0) {
            SDL_Log("Usage: %s %s [--fsaa n] [--accel n]\n", argv[0],
                    SDLTest_CommonUsage(state));
            quit(1);
        }
        i += consumed;
    }

    /* Set OpenGL parameters */
    state->window_flags |= SDL_WINDOW_OPENGL;
    state->gl_red_size = 5;
    state->gl_green_size = 5;
    state->gl_blue_size = 5;
    state->gl_depth_size = 16;
    state->gl_double_buffer = 1;
    if (fsaa) {
        state->gl_multisamplebuffers = 1;
        state->gl_multisamplesamples = fsaa;
    }
    if (accel >= 0) {
        state->gl_accelerated = accel;
    }

    if (!SDLTest_CommonInit(state)) {
        quit(2);
    }

    /* Create OpenGL sdl_glcontext */
    sdl_glcontext = SDL_GL_CreateContext(state->windows[0]);
    if (!sdl_glcontext) {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION, "SDL_GL_CreateContext(): %s\n", SDL_GetError());
        quit(2);
    }

    /* Important: call this *after* creating the sdl_glcontext */
    if (LoadContext(&glcontext) < 0) {
        SDL_Log("Could not load GL functions\n");
        quit(2);
        return 0;
    }

    if (state->render_flags & SDL_RENDERER_PRESENTVSYNC) {
        /* try late-swap-tearing first. If not supported, try normal vsync. */
        if (SDL_GL_SetSwapInterval(-1) == -1) {
            SDL_GL_SetSwapInterval(1);
        }
    } else {
        SDL_GL_SetSwapInterval(0);  /* disable vsync. */
    }

    SDL_GetCurrentDisplayMode(0, &mode);
    SDL_Log("Screen BPP    : %d\n", SDL_BITSPERPIXEL(mode.format));
    SDL_Log("Swap Interval : %d\n", SDL_GL_GetSwapInterval());
    SDL_GetWindowSize(state->windows[0], &dw, &dh);
    SDL_Log("Window Size   : %d,%d\n", dw, dh);
    SDL_GL_GetDrawableSize(state->windows[0], &dw, &dh);
    SDL_Log("Draw Size     : %d,%d\n", dw, dh);
    SDL_Log("\n");
    SDL_Log("Vendor        : %s\n", glcontext.glGetString(GL_VENDOR));
    SDL_Log("Renderer      : %s\n", glcontext.glGetString(GL_RENDERER));
    SDL_Log("Version       : %s\n", glcontext.glGetString(GL_VERSION));
    SDL_Log("Extensions    : %s\n", glcontext.glGetString(GL_EXTENSIONS));
    SDL_Log("\n");

    status = SDL_GL_GetAttribute(SDL_GL_RED_SIZE, &value);
    if (!status) {
        SDL_Log("SDL_GL_RED_SIZE: requested %d, got %d\n", 5, value);
    } else {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
                     "Failed to get SDL_GL_RED_SIZE: %s\n", SDL_GetError());
    }
    status = SDL_GL_GetAttribute(SDL_GL_GREEN_SIZE, &value);
    if (!status) {
        SDL_Log("SDL_GL_GREEN_SIZE: requested %d, got %d\n", 5, value);
    } else {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
                     "Failed to get SDL_GL_GREEN_SIZE: %s\n", SDL_GetError());
    }
    status = SDL_GL_GetAttribute(SDL_GL_BLUE_SIZE, &value);
    if (!status) {
        SDL_Log("SDL_GL_BLUE_SIZE: requested %d, got %d\n", 5, value);
    } else {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
                     "Failed to get SDL_GL_BLUE_SIZE: %s\n", SDL_GetError());
    }
    status = SDL_GL_GetAttribute(SDL_GL_DEPTH_SIZE, &value);
    if (!status) {
        SDL_Log("SDL_GL_DEPTH_SIZE: requested %d, got %d\n", 16, value);
    } else {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
                     "Failed to get SDL_GL_DEPTH_SIZE: %s\n", SDL_GetError());
    }
    if (fsaa) {
        status = SDL_GL_GetAttribute(SDL_GL_MULTISAMPLEBUFFERS, &value);
        if (!status) {
            SDL_Log("SDL_GL_MULTISAMPLEBUFFERS: requested 1, got %d\n", value);
        } else {
            SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
                         "Failed to get SDL_GL_MULTISAMPLEBUFFERS: %s\n", SDL_GetError());
        }
        status = SDL_GL_GetAttribute(SDL_GL_MULTISAMPLESAMPLES, &value);
        if (!status) {
            SDL_Log("SDL_GL_MULTISAMPLESAMPLES: requested %d, got %d\n", fsaa,
                   value);
        } else {
            SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
                         "Failed to get SDL_GL_MULTISAMPLESAMPLES: %s\n", SDL_GetError());
        }
    }
    if (accel >= 0) {
        status = SDL_GL_GetAttribute(SDL_GL_ACCELERATED_VISUAL, &value);
        if (!status) {
            SDL_Log("SDL_GL_ACCELERATED_VISUAL: requested %d, got %d\n", accel,
                   value);
        } else {
            SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
                         "Failed to get SDL_GL_ACCELERATED_VISUAL: %s\n", SDL_GetError());
        }
    }

    /* Set rendering settings */
    glcontext.glMatrixMode(GL_PROJECTION);
    glcontext.glLoadIdentity();
    glcontext.glOrtho(-2.0, 2.0, -2.0, 2.0, -20.0, 20.0);
    glcontext.glMatrixMode(GL_MODELVIEW);
    glcontext.glLoadIdentity();
    glcontext.glEnable(GL_DEPTH_TEST);
    glcontext.glDepthFunc(GL_LESS);
    glcontext.glShadeModel(GL_SMOOTH);

    /* Main render loop */
    frames = 0;
    then = SDL_GetTicks();
    done = 0;
    while (!done && frames < 10000) {
        /* Check for events */
        ++frames;
        while (SDL_PollEvent(&event)) {
            SDLTest_CommonEvent(state, &event, &done);
        }
        for (i = 0; i < state->num_windows; ++i) {
            int w, h;
            if (state->windows[i] == NULL)
                continue;
            SDL_GL_MakeCurrent(state->windows[i], sdl_glcontext);
            SDL_GL_GetDrawableSize(state->windows[i], &w, &h);
            glcontext.glViewport(0, 0, w, h);
            Render();
            SDL_GL_SwapWindow(state->windows[i]);
        }
    }

    /* Print out some timing information */
    now = SDL_GetTicks();
    if (now > then) {
        SDL_Log("%2.2f frames per second\n",
               ((double) frames * 1000) / (now - then));
    }
    close();
    //    quit(0);
    return 0;
}

/*  ___         _   ___ ___         _                     __  __         _     */
/* | __|_ _  __| | | _ ) _ ) ___ __| |___ __  __ _ _ _   |  \/  |___  __| |___ */
/* | _|| ' \/ _` | | _ \ _ \/ -_) _| / / '  \/ _` | ' \  | |\/| / _ \/ _` (_-< */
/* |___|_||_\__,_| |___/___/\___\__|_\_\_|_|_\__,_|_||_| |_|  |_\___/\__,_/__/ */

value_t fl_graphics_demo(value_t * args, uint32_t nargs)
{
    argcount("graphics-demo", nargs, 0);
    printf("hit the graphics demo\n");
    char * argv[2];
    argv[0] = "flisp";
    argv[1] = 0;
    sdl_test_main(1, argv);
    return FL_T;
}

value_t fl_static_SDL_context(value_t * args, uint32_t nargs)
{
    argcount("graphics-static-sdl-glcontext", nargs, 0);
    printf("returning static sdl_glcontext\n");
    value_t nt = cvalue(sdl_glcontext, sizeof(void*));
    return nt;
}

static builtinspec_t graphics_info[] = {
    { "graphics-demo", fl_graphics_demo },
    { NULL, NULL }
};

void graphics_init(void)
{
    assign_global_builtins(graphics_info);
}
