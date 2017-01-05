(define (count-change amount) (cc amount 5))

(define (cc amount kind-of-coins) 
  (cond  ((= amount 0) 1)
  ((or (< amount 0) (= kind-of-coins 0)) 0)
    (else (+ (cc amount 
                 (- kind-of-coins 1))
             (cc (- amount (find-deno kind-of-coins))
                 kind-of-coins)))))

(define (find-deno k)
  (cond ((= 1 k) 1)
        ((= 2 k) 5)
        ((= 3 k) 10)
        ((= 4 k) 25)
        ((= 5 k) 50)
        )
  )

(count-change 100)
