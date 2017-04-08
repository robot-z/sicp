(define (make-interval a b) (cons a b))

(define (upper-bound interval) (cdr interval))

(define (lower-bound interval) (car interval))

(define (sub-interval a b)
        (make-interval (- (lower-bound a) (upper-bound b))
                       (- (upper-bound a) (lower-bound b))))