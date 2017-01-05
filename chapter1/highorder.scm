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

(define (pi-sum a b)
  (define (pi-term a)
    (/ 1.0 (* a (+ a 2))))
  (define (pi-next a)
    (+ a 4)) 
  (sum pi-term a pi-next b))

(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx)) 
  (* (sum f a add-dx b) dx))

(sum-cubes 1 10)
(sum-int 1 10)

(* 8 (pi-sum 1 10000))

(integral cube 0 1 0.1)
(integral cube 0 1 0.01)
(integral cube 0 1 0.001)
(integral cube 0 1 0.0001)
