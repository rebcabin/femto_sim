(princ "SDL_LogSetPriority(SDL_LOG_CATEGORY_APPLICATION, SDL_LOG_PRIORITY_INFO)\n")
(print *graphics-sdl-log-category-application*) (princ "\n")
(print *graphics-sdl-log-priority-info*)        (princ "\n")
(graphics-sdl-logsetpriority *graphics-sdl-log-category-application*
                             *graphics-sdl-log-priority-info*)

;; CHECK CYCLIC IDEMPOTENCY:
;;
;; If running this script multiple times consecutively, with no other
;; intervening interactions with the C layer, check that the old SDL_GLContext
;; (in the C layer), was not disturbed. Save the SDL_GLContext created by
;; 'graphics-demo' in the global *last-sdl-glcontext*. Run this script again.
;; During each iteration of the script, check that the SDL_GLContext inside the
;; C layer, before the new run of 'graphics-demo,' has that same old value saved
;; last iteration. Initialize *last-sdl-glcontext* to 'nil' to avoid checking
;; against it the first time around. If this script runs before any other
;; interaction with the C layer, then SDL_GLContext will be 0 (C NULL), but we
;; want to run this script potentially after other interactions. In that case,
;; there is no way to know the old value of SDL_GLContext in the C layer. Give
;; up on the checking against 0 (C NULL) to gain flexibility on when to run this
;; script.

(if (not (bound? '*last-sdl-glcontext*))
    (define *last-sdl-glcontext* '()))

(let* ((first  (graphics-static-sdl-glcontext))  ;; the old value
       (second (graphics-static-sdl-glcontext))  ;; Test idempotency.
       (_ (graphics-demo))                       ;; By side-effect, creates a new SDL_GLContext.
       (third  (graphics-static-sdl-glcontext))) ;; Get that new SDL_GLContext out for checking.

  (princ "Before SDL Test initialization: next two pointers should be equal.\n")

  (print first)
  (print second)
  (princ "\n")

  (assert (graphics-is-sdl-glcontext first))
  (assert (graphics-is-sdl-glcontext second))
  (assert (equal? (graphics-get-sdl-glcontext first)
                  (graphics-get-sdl-glcontext second)))

  (princ "After SDL Test initialization: next pointer should be different to the prior two.\n")
  (print third)  (princ "\n")

  (assert (graphics-is-sdl-glcontext third))
  (assert (not (equal? (graphics-get-sdl-glcontext first)
                       (graphics-get-sdl-glcontext third))))

  (princ "After SDL Test initialization: next pointer should be equal to the first\n")
  (princ "(visual check only to see whether data changed under the pointer).\n")
  (print first)  (princ "\n")

  ;; Don't check when *last-sdl-glcontext* is null because we might change this
  ;; script in the middle of a session when the SDL_GLContext is not zero.
  (if (not (null? *last-sdl-glcontext*))
      (assert (equal? *last-sdl-glcontext*
                      (graphics-get-sdl-glcontext first))))

  (set! *last-sdl-glcontext* (graphics-get-sdl-glcontext third))

  )
