(define (fast-expt b n)
        (fast-expt-i 1 b n))

(define (square x) (* x x))

(define (fast-expt-i a b n)
        (cond ((= n 0) a)
              ((= (% n 2) 0) (fast-expt-i (* a (square b)) b (- n 2)))
              (else (fast-expt-i (* a b) b (- n 1)))))