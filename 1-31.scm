(define (product f a next b)
        (if (> a b) 
            1
            (* (f a) (product f (next a) next b))))

(define (product f a next b)
    (define (iter x result)
        (if (> x b)
            result
            (iter (next x) (* result (f x)))))
    (iter a 1))

(define (f a) a)
(define (next a) (+ a 1))

(product f 1 next 10)

(define (p n) (* (/ (* 2 n) (+ (* 2 n) 1))
                 (/ (+ (* 2 n) 2) (+ (* 2 n) 1))))

(define (compute-pi n) (* 4 (product p (exact->inexact 1) next n)))

(define (product f a next b)
    (define (iter x result)
        (if (> x b)
            result
            (iter (next x) (* result (f x)))))
    (iter a 1))