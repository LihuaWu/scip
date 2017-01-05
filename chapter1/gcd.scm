(define (gcd-h a b) 
  (cond ((= 0 b) a)
        (else (gcd-h b (remainder a b)))))
(gcd-h 206 40)
