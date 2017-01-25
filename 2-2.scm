(define (make-segment start end)
        (cons start end))

(define (start-segment segment)
        (car segment))

(define (end-segment segment)
        (cdr segment))

(define (make-point x y)
        (cons x y))

(define (x-point point)
        (car point))

(define (y-point point)
        (cdr point))

(define (midpoint pointA pointB)
        (make-point (/ (+ (x-point pointA) (x-point pointB)) 2)
                    (/ (+ (y-point pointA) (y-point pointB)) 2)))

(define (midpoint-segment segment)
        (midpoint (start-segment segment) 
                   (end-segment segment)))

(define (print-point p)
        (newline)
        (display "(")
        (display (x-point p))
        (display ",")
        (display (y-point p))
        (display ")"))