(define (cont-frac n d k)
        (define (cont-frac-i n d k i)
                (if (> i k)
                    0
                    (/ (n i) (+ (d i) (cont-frac-i n d k (+ i 1))))))

        (cont-frac-i n d k 0))

(define (cont-frac n d k)
        (define (cont-frac-i n d k product)
                (if (= k 1)
                    product
                    (cont-frac-i n d (- k 1)  (/ (n (- k 1)) (+ (d (- k 1)) product)))))
        (cont-frac-i n d k (/ (n k) (d k))))
        

(cont-frac (lambda (x) 1.0)
           (lambda (x) 1.0)
           100)
                    