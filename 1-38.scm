(define (d i)
        (let ((rem (remainder i 3)))
             (if (or (= rem 1) (= rem 0))
                 1
                 (* (+ (/ i 3) 1) 2))))