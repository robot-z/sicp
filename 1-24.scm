(define (expmod base exp m)
        (cond ((= exp 0) 1)
              ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
              (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (fermat-test n)
        (define (try-it a) 
            (= (expmod a n n) a))
        (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
        (cond ((= times 0) #t)
              ((fermat-test n) (fast-prime? n (- times 1)))
              (else #f)))

(define (prime? n)
        (fast-prime? n 1000))

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

(define (search-for-primes start end number)
        (if (and (< start end) (> number 0))
                (if (timed-prime-test start)
                    (search-for-primes (next-odd start) end (- number 1))
                    (search-for-primes (next-odd start) end number))))
