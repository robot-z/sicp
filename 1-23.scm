(define (smallest-divisor-i n count)
        (cond ((> (square count) n) n)
              ((= (remainder n count) 0) count)
              (else (smallest-divisor-i n (+ count 1)))))

(define (smallest-divisor n)
        (smallest-divisor-i n 2))

(define (prime? n)
        (= (smallest-divisor n) n))

(define (timed-prime-test n)
        (start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
        (if (prime? n)
            (begin
            (report-prime n (- (real-time-clock) start-time))
            #t)
            #f))

(define (report-prime number elapsed-time)  
  (display number)  
  (display " *** ")  
  (display elapsed-time)  
  (newline))

(define (next-odd n)
        (if (= (remainder n 2) 0)
                (+ n 1)
                (+ n 2)))

(define (search-for-primes start-n end-n number)
        (if (and (< start-n end-n) (> number 0))
                (begin
                (search-for-primes (next-odd start-n) end-n number)
                (if (= (timed-prime-test start-n) #t)
                    (begin
                    (+ number 1)
                    #t)
                    #f)
                #t)
                #f))
