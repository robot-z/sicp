(define (check-close next guest)
        (< (abs (- next guest)) 0.001))

(define (fixed-point f first-guest)
        (define (try-it f guest)
                (let ((next (f guest)))
                     (if (check-close next guest)
                         guest
                         (try-it f next))))
       (try-it f first-guest))

(define (fs x) (+ 1 (/ 1 x)))


(fixed-point fs (exact->inexact 1))
                