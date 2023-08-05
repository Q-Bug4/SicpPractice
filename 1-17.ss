(define (slow-multi a b)
  (if (= b 0)
    0
    (+ a (slow-multi a (- b 1)))))

#|
(fm 7 7)
(+ (fm 7 6) 7)
(+ (+ (fm 7 3) (fm 7 3)) 7)   | (fm 7 3) -> (+ (fm 7 2) 7)
(+ (+ (fm 7 3) (fm 7 3)) 7)
|#
(define (fast-multi base cnt)
  (if (= cnt 0)
    0
    (if (even? cnt)
      (double (fast-multi base (/ cnt 2)))
      (+ (fast-multi base (- cnt 1)) base))))

(define (double a)
  (+ a a))

(fast-multi 7 7)
(slow-multi 7 7)
(fast-multi 10 7)
(slow-multi 10 7)
(fast-multi 7 10)
(slow-multi 7 10)
(fast-multi 7 9)
(slow-multi 7 9)
