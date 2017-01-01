(define (pascal p n)
              (cond ((> p n) 0)
                    ((or (= p 0) (= n 0)) 0)
                    ((or (= p 1) (= p n)) 1)                   
                    (else (+ (pascal (- p 1) (- n 1)) (pascal p (- n 1))))))

