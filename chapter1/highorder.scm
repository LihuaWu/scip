(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

(define (inc a) (+ a 1))

(define (sum-cubes a b)
  (sum cube a inc b)
  )

(define (cube a) (* a a a))

(define (identity a) a)

(define (sum-int a b)
  (sum identity a inc b)
  
  )

(sum-cubes 1 10)
(sum-int 1 10)




