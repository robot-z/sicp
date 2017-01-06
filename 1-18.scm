(define (double n)
        (+ n n))

(define (fast-mul-i b n product)
        (cond ((= n 0) product)
              ((= (remainder n 2) 0) (fast-mul-i (double b) (/ n 2) product))
              (else (fast-mul-i b (- n 1) (+ b product)))))

(define (fast-mul a b)
              (fast-mul-i a b 0))
