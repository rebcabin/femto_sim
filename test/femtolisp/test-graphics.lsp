(let* ((first  (graphics-static-sdl-glcontext))
       (second (graphics-static-sdl-glcontext)) ;; Test idempotency.
       (_ (graphics-demo))
       (third  (graphics-static-sdl-glcontext)))

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

  )
