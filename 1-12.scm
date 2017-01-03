(define (pascal p n)
              (cond ((> p n) 0)
                    ((or (= p 0) (= n 0)) 0)
                    ((or (= p 1) (= p n)) 1)                   
                    (else (+ (pascal (- p 1) (- n 1)) (pascal p (- n 1))))))

;f(p,n)=n!/p!(n-p)!
(define (factorial-i a b count)
            (if (> b count) 
                 a
                 (factorial-i (* a b) (+ b 1) count)))

(define (factorial n)
            (factorial-i 1 1 n))

(define (pascal2 p n)
            (/ (factorial n)
                  (* (factorial p) (factorial (- n p)))))

      