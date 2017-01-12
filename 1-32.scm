(define (accumulate combiner null-value term a next b)
        (if (> a b) 
            null-value
            (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (product term a next b)
        (accumulate * 1 term a next b))

(define (sum term a next b)
        (accumulate + 0 term a next b))

(define (accumulate combiner null-value f a next b)
    (define (iter x result)
        (if (> x b)
            result
            (iter (next x) (combiner result (f x)))))
    (iter a null-value))