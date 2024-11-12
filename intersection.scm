(define member?
(lambda (a lat)
 (cond
  ((null? lat) #f)
  (else (or (eq? (car lat) a)
          (member? a (cdr lat)))))))        

(define intersection 
  (lambda (set1 set2 set3)
    (cond 
      ((null? set1) `())
      ((null? set2) `())
      ((null? set3) `())
      ((and (member? (car set1) set2) (member? (car set1) set3))
        (cons (car set1) (intersection (cdr set1) set2 set3)))
      (else (intersection (cdr set1) set2 set3)))))

(print (intersection `(a b c d) `(c d e f) `(a g e f)))
(print (intersection `(a b d g) `(c d e f) `(a c e f)))
; (print (intersection `(d e f) `(a c f)))