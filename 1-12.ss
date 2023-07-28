(define (get row col)
  (cond
    ((= col 1) 1)
    ((= row 1) 1)
    ((= row col) 1)
    (else (+ (get (- row 1) col) (get (- row 1) (- col 1))))
    ))

(get 2 1)
(get 5 3)
