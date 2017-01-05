(define (double n) (* n 2))
(define (halve n) (/ n 2))

(define (fast-multi a b) (fast-iter a b 0))

(define (fast-iter a b c)
 (cond ((= 0 b) c)
       ((even? b) (fast-iter (double a) (halve b) c))
       (else (fast-iter a (- b 1) (+ c a)))))

(fast-multi 3 4)

(fast-multi 4 5)


