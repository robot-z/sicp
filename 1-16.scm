(define (fast-expt b n)
        (fast-expt-i b n 1))

(define (fast-expt-i b n tmp)
        (cond ((= n 0) b)
              ((= (remainder n 2) 0) (fast-expt-i (square b) (/ n 2) tmp))
              (else (fast-expt-i (* b tmp) (- n 1) b))))
