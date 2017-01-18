(define dx 0.001)

(define (deriv g)
        (lambda (x) (/ (- (g (+ x dx)) (g x))
                        dx)))

(define (newton-transform g)
        (lambda (x)
        (- x
           (/ (g x)
              ((deriv g) x)))))

(define (check-close next guest)
        (< (abs (- next guest)) 0.001))

(define (fixed-point f first-guest)  
        (define (try-it f guest)
                (display guest)
                (newline)
                (let ((next (f guest)))
                     (if (check-close next guest)
                         guest
                         (try-it f next))))
       (try-it f first-guest))

(define (newton-method g guess)
        (fixed-point (newton-transform g) guess))

(define (cubic a b c)
        (lambda (x) (+ (cube x)
                       (* a (square x))
                       (* b x)
                       c)))

(newton-method (cubic a b c) 1)

