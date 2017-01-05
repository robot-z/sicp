(define (double n)
        (+ n n))

(define (fast-mul b n)
        (cond ((= n 0) 0)
              ((= (remainder n 2) 0) (double (fast-mul b (/ n 2))))
              (else (+ b (fast-mul b (- n 1))))))