(define (accumulate combiner filter null-value term a next b)
        (cond ((> a b) null-value)
            ((filter a) (combiner (term a) (accumulate combiner filter null-value term (next a) next b)))
            (else (accumulate combiner filter null-value term (next a) next b))))

(define (accumulate combiner filter null-value f a next b)
    (define (iter x result)
        (cond ((> x b) result)
              ((filter a) (iter (next x) (combiner result (f x))))
              (else (iter (next x) result))))
    (iter a null-value))