(define (tan-cf x k)
        (define (tan-cf-i x k i)
             (if (= i k)
                 0
                 (/ (square x) 
                    (- (+ (* 2 i) 1) (tan-cf-i x k (+ i 1))))))

        (exact->inexact (/ x (- 1 (tan-cf-i x k 1)))))