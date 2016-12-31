(define (fun1 n) 
        (cond ((< n 3) n)
              (else (+ (fun1 (- n 1))
                       (* 2 (fun1 (- n 2)))
                       (* 3 (fun1 (- n 3)))))))

(define (fun2-i a b c n)
        (if (= n 0)
	    c
            (fun2-i (+ a
		       (* 2 b)
		       (* 3 c))   
		     a
		     b    
		     (- n 1))))

(define (fun2 n)
        (fun2-i 2 1 0 n))


