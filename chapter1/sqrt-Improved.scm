(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    (improve guess x)
    (sqrt-iter (improve guess x) x)
    )
  )

(define (good-enough? old_guess new_guess)
  ( >  
    0.01
    (/ 
       (abs (- new_guess old_guess)) 
       old_guess)
    )
  )

(define (improve guess x)
  (average 
    guess 
    (/
      x
      guess)) 
  )

(define (average x y)
  (/ (+ x y) 2)
  )

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 3)

(sqrt 0.00009)
(sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
