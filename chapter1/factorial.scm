(define (factorial-R n) 
  (if (= n 1)
    1
  (* n (factorial-R (- n 1))))
  )

(define (fact-iter product startIdx maxIdx)
  (if (> startIdx maxIdx)
    product
    (fact-iter 
      (* product startIdx)
      (+ startIdx 1)
      maxIdx
      )
    )
  )

(define (factorial n)
  (fact-iter 1 1 n)
  )

(factorial-R 4)
(factorial 4)
