(define (sum f a next b)
        (if (> a b) 
            0
            (+ (f a) (sum f (next a) next b))))

(define (simpson f a b n)
    (define h (/ (- b a) n))

    (define (factor k)
            (cond ((or (= k 0) (= k n)) 1)
                  (even? 2)
                  (else 4)))

    (define (y k)
            (f (+ a (* k h))))

    (define (term k)
            (* (factor k)
               (y k)))

    (define (next k)
            (+ k 1))

    (* (/ h 3) (sum term (exact->inexact 0) next n)))

(define (cube x) (* x x x))

(simpson cube 0 1 100)