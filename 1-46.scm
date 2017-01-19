(define (iterative-improve good-enough? improve)
        (define (iterative-improve-i good-enough? improve guess)
                (if (good-enough? guess)
                    guess
                    (iterative-improve-i good-enough? improve (improve guess))))

        (lambda (guess) 
                (iterative-improve-i good-enough? improve guess)))

(define (sqrt x)
        ((iterative-improve (lambda (g) (< (abs (- (square g) x)) 0.001))
                           (lambda (g) (average g (/ x g)))) 1.0))

(define (fixed-point f first-guess)
        ((iterative-improve (lambda (g) (< (abs (- (f g) g)) 0.001))
                            (lambda (g) (f g))) first-guess))
