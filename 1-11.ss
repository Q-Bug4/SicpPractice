; recursive way
(define (recurse n)
  (cond ((< n 3) n)
    (else (+ (recurse (- n 1)) (* 2 (recurse (- n 2))) (* 3 (recurse (- n 3)))))))

(recurse 4)

; iterative way
#|
(i 5)
(+ (i 4) (* 2 (i 3)) (* 3 (i 2)))
(i 4)
(+ (i 3) (* 2 (i 2)) (* 3 (i 1)))
(i 3)
(+ (i 2) (* 2 (i 1)) (* 3 (i 0)))
|#
(define (iter n)
  (if (< n 3)
    n
    (iter-inner 2 1 0 (- n 2))
    )
  )

(define (iter-inner a b c cnt)
  (if (< cnt 1)
    a
    (iter-inner (+ a (* 2 b) (* 3 c)) a b (- cnt 1))
    )
  )

(iter 4)

