(define (compose f g)
        (lambda (x)
                (f (g x))))

(define (repeated f n)
        (define (repeated-i f n i product)
                (if (= i n)
                    product
                    (repeated-i f n (+ i 1) (compose f product))))
        (repeated-i f n 1 f))

(define (smooth f)
        (lambda (x) (/ (+ (f x) (f (- x dx)) (f (+ x dx))) 3)))

(define (repeated-smooth f n)
        (let ((smooth-times (repeated smooth n)))
            (smooth-times f)))