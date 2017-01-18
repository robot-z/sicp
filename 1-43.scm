(define (compose f g)
        (lambda (x)
                (f (g x))))

(define (repeated f n)
        (define (repeated-i f n i product)
                (if (= i n)
                    product
                    (repeated-i f n (+ i 1) (compose f product))))
        (repeated-i f n 1 f))