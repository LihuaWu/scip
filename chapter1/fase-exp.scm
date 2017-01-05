(define (fast-exp base n) 
  (fast-iter base n 1))

(define (fast-iter base n a)
  (cond ((= 0 n) a)
        ((even? n) (fast-iter (square base) (/ n 2) a))
        (else (fast-iter base (- n 1) (* base a)))))

(fast-exp 2 3)


