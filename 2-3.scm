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

(define (make-rectangle a b c d)
        (cons (cons a b) (cons c d)))

(define (a-segment rectangle)
        (car (car rectangle)))

(define (b-segment rectangle)
        (cdr (car rectangle)))

(define (c-segment rectangle)
        (car (cdr rectangle)))

(define (d-segment rectangle)
        (cdr (cdr rectangle)))

(define (heigh rect)
        (let ((x (abs (- (x-point (start-segment (a-segment rect)))
                         (x-point (end-segment (a-segment rect)))))
              (y (abs (- (y-point (start-segment (a-segment rect)))
                         (y-point (end-segment (a-segment rect))))))))
             (sqrt (+ (square x) (square y)))))

(define (width rect)
        (let ((x (abs (- (x-point (start-segment (b-segment rect)))
                         (x-point (end-segment (b-segment rect)))))
              (y (abs (- (y-point (start-segment (b-segment rect)))
                         (y-point (end-segment (b-segment rect))))))))
             (sqrt (+ (square x) (square y)))))

(define (perimeter rect)
        (* (+ (heigh rect) (width rect)) 2))

(define (area rect)
        (* (heigh rect) (width rect)))