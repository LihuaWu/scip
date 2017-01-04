(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
    (improve guess x)
    (cube-iter (improve guess x) x)
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
  (/ 
    (+
      (/ x (* guess guess))
       (* 2 guess)  
       )
    3)
  )

(define (average x y)
  (/ (+ x y) 2)
  )

(define (cube x) (cube-iter 1.0 x))

(cube 27)
(cube 8)

