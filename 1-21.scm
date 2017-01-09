(define (smallest-divisor-i n count)
        (cond ((> (square count) n) n)
              ((= (remainder n count) 0) count)
              (else (smallest-divisor-i n (+ count 1)))))

(define (smallest-divisor n)
        (smallest-divisor-i n 2))

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)