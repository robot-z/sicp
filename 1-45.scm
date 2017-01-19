(define (log2 x) (/ (log x) (log 2)))

(define (compose f g)
        (lambda (x)
                (f (g x))))

(define (repeated f n)
        (define (repeated-i f n i product)
                (if (= i n)
                    product
                    (repeated-i f n (+ i 1) (compose f product))))
        (repeated-i f n 1 f))

(define (average-damp f)
        (lambda (x) (average (f x) x)))

(define (repeated-average-damp f n)
        (let ((average-damp-times (repeated average-damp n)))
            (average-damp-times f)))

(define (fast-expt b n)
        (fast-expt-i b n 1))

(define (fast-expt-i b n tmp)
        (cond ((= n 0) b)
              ((= (remainder n 2) 0) (fast-expt-i (square b) (/ n 2) tmp))
              (else (fast-expt-i (* b tmp) (- n 1) b))))

(define (check-close next guest)
        (< (abs (- next guest)) 0.001))

(define (fixed-point f first-guest)  
        (define (try-it f guest)
                (newline)
                (let ((next (f guest)))
                     (if (check-close next guest)
                         guest
                         (try-it f next))))
       (try-it f first-guest))

(define (rt x n) 
        (fixed-point (repeated-average-damp (lambda (y) (/ x (fast-expt y (- n 1)))) (floor (log2 n))) 1.0))

