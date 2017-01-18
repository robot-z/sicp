(define (double f)
        (lambda (x)
                (f (f x))))

(define (ins x)
        (+ x 1))

((double ins) 1)
(((double (double double)) ins) 5)