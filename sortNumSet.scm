(define sort-num-set
  (lambda (x set)
    (cond
      ((null? set) (cons x '()))
      ((< x (car set)) (cons x set))
      (else (cons (car set) (sort-num-set x (cdr set)))))))

(define sort
  (lambda (set)
    (cond 
      ((null? set) `())
      (else (sort-num-set (car set) (sort (cdr set)))))))


(print (sort '(1 3 5 2 4)))
(print (sort '(1 3 2 4 5)))
(print (sort '(9 8 10 7)))
(print (sort '(1 2 3)))
