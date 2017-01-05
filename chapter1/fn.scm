; recursive version
(define (f-R n)
  (cond ((< n 3) n)
  (else (+ (f-R (- n 1))
           (* 2 (f-R (- n 2)))
           (* 3 (f-R (- n 3)))))))

; iterative version.
(define (f n) 
  (cond ((< n 3) n)
  (else (f-iter 0 1 2 3 n))
        ))

(define (f-iter a b c counter n)
  (cond ((= counter n) 
         (+ (* 3 a) (* 2 b) c))
  (else (f-iter b 
                c
                (+ (* 3 a) (* 2 b) c)
                (+ counter 1) 
                n))))

(f-R 4)
(f 4)
