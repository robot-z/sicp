(define (fast-mul a b)
        (fast-mul-i 0 b a))

(define (double n)
        (+ n n))

(define (fast-mul-i product b count)
        (cond ((= count 0) product)
              ((= (remainder count 2) 0) (fast-mul-i (+ product (double b)) b (- count 2)))
              (else (fast-mul-i (+ product b) b (- count 1)))))