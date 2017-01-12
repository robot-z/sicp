(define (sum f a next b)
    (define (iter x result)
        (if (> x b)
            result
            (iter (next x) (+ result (f x)))))
    (iter a 0))