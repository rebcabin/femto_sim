#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <assert.h>
#include <sys/types.h>
#include <setjmp.h>
#include <stdio.h>
#include <math.h>

#include "llt.h"
#include "flisp.h"
#include "equalhash.h"

/*   ___                       _   ___                 */
/*  / __|__ _ _ _  _ _  ___ __| | |   \ ___ _ __  ___  */
/* | (__/ _` | ' \| ' \/ -_) _` | | |) / -_) '  \/ _ \ */
/*  \___\__,_|_||_|_||_\___\__,_| |___/\___|_|_|_\___/ */

#include "SDL_opengl.h"
#include "SDL_test_common.h"

typedef struct GL_Context
{
#define SDL_PROC(ret,func,params) ret (APIENTRY *func) params;
#include "../../src/render/opengl/SDL_glfuncs.h"
#undef SDL_PROC
} GL_Context;

#define SHADED_CUBE

static SDLTest_CommonState * state;
static SDL_GLContext         sdl_glcontext; // of type void *; see SDL_video.h
static GL_Context            glcontext;

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
    while (!done && frames < 2000) {
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

/*   __          _         _     _                     _   _           */
/*  / _|___ _ __| |_ ___  (_)_ _| |_ ___ __ _ _ _ __ _| |_(_)___ _ _   */
/* |  _/ -_) '  \  _/ _ \ | | ' \  _/ -_) _` | '_/ _` |  _| / _ \ ' \  */
/* |_| \___|_|_|_\__\___/ |_|_||_\__\___\__, |_| \__,_|\__|_\___/_||_| */
/*                                      |___/                          */

/* Run the canned demo. */

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

/*  _                                    _   _         _                        */
/* | |_ _  _ _ __  ___ ___  __ _ _ _  __| | (_)_ _  __| |_ __ _ _ _  __ ___ ___ */
/* |  _| || | '_ \/ -_|_-< / _` | ' \/ _` | | | ' \(_-<  _/ _` | ' \/ _/ -_|_-< */
/*  \__|\_, | .__/\___/__/ \__,_|_||_\__,_| |_|_||_/__/\__\__,_|_||_\__\___/__/ */
/*      |__/|_|                                                                 */

// bbeckman: Following the example in table.c for extending lisp with
// user-defined types (UDTs). We need sdl_glcontext and glcontext and some
// others.
//
// VTables have a canonical form; from flisp.h:
//
//     typedef struct {
//         void (*print)(value_t self, ios_t *f);
//         void (*relocate)(value_t oldv, value_t newv);
//         void (*finalize)(value_t self);
//         void (*print_traverse)(value_t self);
//     } cvtable_t;
//
// TODO: Consider making the finalizer for sdl-glcontext call "close" above.

// bbeckman: TODO: Move all this to a general-purpose utility library.

static inline value_t instance(fltype_t * p_type)
{
    // bbeckman: TODO why 2 * ?
    return cvalue(p_type, 2 * sizeof(void*));
}

static inline void ** pp_data_slot(value_t instance)
{
    return cv_data((cvalue_t*)ptr(instance));
}

static inline value_t poke_pointer_into_instance(fltype_t * p_type, void * p_datum)
{
    value_t inst_ = instance(p_type);
    void ** ppc = pp_data_slot(inst_);
    * ppc = p_datum;
    return inst_;
}

/*  ___ ___  _       ___ _    ___         _           _    */
/* / __|   \| |     / __| |  / __|___ _ _| |_ _____ _| |_  */
/* \__ \ |) | |__  | (_ | |_| (__/ _ \ ' \  _/ -_) \ /  _| */
/* |___/___/|____|  \___|____\___\___/_||_\__\___/_\_\\__| */

static value_t    sdl_glcontext_sym;
static fltype_t * sdl_glcontext_type;

value_t fl_is_sdl_glcontext(value_t * args, uint32_t nargs)
{
    argcount("graphics-is-sdl-glcontext", nargs, 1);
    value_t candidate = args[0];
    return (iscvalue(candidate) &&
            sdl_glcontext_type == cv_class((cvalue_t*)ptr(candidate))) ? FL_T : FL_F;
}

value_t fl_get_sdl_glcontext(value_t * args, uint32_t nargs)
{
    argcount("graphics-get-sdl-glcontext", nargs, 1);
    value_t v = args[0];
    cvalue_t * p_datum = ((cvalue_t *)(ptr(v)));
    assert(iscvalue(v) && (sdl_glcontext_type == cv_class(p_datum)));
    value_t result = fixnum((fixnum_t)( * ((void**)cv_data(p_datum)) ));
    return result;
}

value_t fl_static_SDL_context(value_t * args, uint32_t nargs)
{
    argcount("graphics-static-sdl-glcontext", nargs, 0);
    value_t instance = poke_pointer_into_instance(sdl_glcontext_type,
                                                  sdl_glcontext);
    return instance;
}

void print_sdl_glcontext(value_t self, ios_t * fd)
{
    const SDL_GLContext * pc = ((SDL_GLContext *)(cv_data((cvalue_t*)ptr(self))));
    // StackOverflow Q 436367 for old-school safe printing.
    char * buf = 0;
    size_t bufsize = 0;
    size_t sz;

    const char * format="0x%016X)\n";
    if (4 == sizeof(*pc)) {
        format="0x%08X)\n";
    } else if (8 == sizeof(*pc)) {
        ; // do nothing
    } else {
        format="0x%0X)\n";
    }

    sz = snprintf (buf, bufsize, format, *pc);

    buf = malloc (sz + 1);
    if ( ! buf ) {
        lerror(MemoryError, "print_sdl_glcontext error: can't allocate snprintf buffer");
        return;
    }
    bufsize = sz + 1;
    buf[bufsize - 1] = '\0';
    sz = snprintf (buf, bufsize, format, *pc);

    fl_print_str("#sdl_glcontext(", fd);
    fl_print_str(buf, fd);

    free (buf);
    return;
}

static cvtable_t sdl_glcontext_vtable =
    {print_sdl_glcontext, // print
     NULL, // relocate
     NULL, // finalize
     NULL  // print_traverse
    };

static void sdl_glcontext_UDT_init()
{
    sdl_glcontext_sym = symbol("graphics-sdl-glcontext");
    sdl_glcontext_type = define_opaque_type
        (sdl_glcontext_sym,
         sizeof(SDL_GLContext),
         & sdl_glcontext_vtable, // & vtable
         NULL  // init-func
         );
}

/*  ___ ___  _      _                   _ */
/* / __|   \| |    | |   ___  __ _ __ _(_)_ _  __ _ */
/* \__ \ |) | |__  | |__/ _ \/ _` / _` | | ' \/ _` | */
/* |___/___/|____| |____\___/\__, \__, |_|_||_\__, | */
/*                           |___/|___/       |___/ */

/* value_t test_symbol = symbol("*graphics-test-global*"); */
/* setc(test_symbol, fixnum(42)); */

value_t sdl_log_category_application;
value_t sdl_log_priority_info;

value_t fl_sdl_logsetpriority(value_t * args, uint32_t nargs)
{
    argcount("graphics-sdl-logsetpriority", nargs, 2);
    value_t category = args[0];
    if ( ! fl_isnumber(category) ) {
        type_error("graphics-sdl_logsetpriority:category", "number", category);
    }
    value_t priority = args[1];
    if ( ! fl_isnumber(priority) ) {
        type_error("graphics-sdl_logsetpriority:number", "number", priority);
    }
    SDL_LogSetPriority(numval(category), numval(priority));
    return FL_T;
}

static void sdl_logging_UDT_init()
{
    sdl_log_category_application =
        symbol("*graphics-sdl-log-category-application*");
    setc(sdl_log_category_application, fixnum(SDL_LOG_CATEGORY_APPLICATION));

    sdl_log_priority_info = symbol("*graphics-sdl-log-priority-info*");
    setc(sdl_log_priority_info, fixnum(SDL_LOG_PRIORITY_INFO));
}


/*  ___ ___  _      _____       _     ___ _        _ */
/* / __|   \| |    |_   _|__ __| |_  / __| |_ __ _| |_ ___ */
/* \__ \ |) | |__    | |/ -_|_-<  _| \__ \  _/ _` |  _/ -_) */
/* |___/___/|____|   |_|\___/__/\__| |___/\__\__,_|\__\___| */

static value_t    sdltest_commonstate_sym;
static fltype_t * sdltest_commonstate_type;

static cvtable_t sdltest_commonstate_vtable =
    {NULL, // print
     NULL, // relocate
     NULL, // finalize
     NULL  // print_traverse
    };

static void sdltest_commonstate_UDT_init()
{
    sdltest_commonstate_sym = symbol("graphics-sdltest-commonstate");
    sdltest_commonstate_type = define_opaque_type
        (sdltest_commonstate_sym,
         sizeof(SDLTest_CommonState),
         & sdltest_commonstate_vtable,
         NULL // init-func
         );
}

/*                     _    _         _      _ _    */
/*  __ _ _ _ __ _ _ __| |_ (_)__ ___ (_)_ _ (_) |_  */
/* / _` | '_/ _` | '_ \ ' \| / _(_-< | | ' \| |  _| */
/* \__, |_| \__,_| .__/_||_|_\__/__/ |_|_||_|_|\__| */
/* |___/         |_|                                */

static builtinspec_t graphics_info[] =
    {
     { "graphics-demo",                    fl_graphics_demo },

     { "graphics-is-sdl-glcontext",        fl_is_sdl_glcontext },
     { "graphics-get-sdl-glcontext",       fl_get_sdl_glcontext },
     { "graphics-static-sdl-glcontext",    fl_static_SDL_context },

     { "graphics-sdl-logsetpriority",      fl_sdl_logsetpriority },

     { NULL, NULL }
    };

void graphics_init(void)
{
    sdl_glcontext_UDT_init();
    sdltest_commonstate_UDT_init();
    sdl_logging_UDT_init();

    assign_global_builtins(graphics_info);
}
