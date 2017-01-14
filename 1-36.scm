(define (check-close next guest)
        (< (abs (- next guest)) 0.001))

(define (fixed-point f first-guest)  
        (define (try-it f guest)
                (display guest)
                (newline)
                (let ((next (f guest)))
                     (if (check-close next guest)
                         guest
                         (try-it f next))))
       (try-it f first-guest))

(fixed-point (lambda (x) (/ (log 1000) (log x))) (exact->inexact 2))

(fixed-point (lambda (x) ((lambda (a b) (/ (+ a b) 2)) x (/ (log 1000) (log x)))) (exact->inexact 2))