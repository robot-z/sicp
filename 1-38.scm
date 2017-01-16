(define (d i)
        (let ((rem (remainder i 3)))
             (if (or (= rem 1) (= rem 0))
                 1
                 (* (/ (+ i 1) 3) 2))))

(+ (cont-frac (lambda (x) 1.0)
           d
           100) 2)