
(define (slow-multi a b)
  (if (= b 0)
    0
    (+ a (slow-multi a (- b 1)))))

#|
(multi 7 7 0)
(+ (multi 7 6 0) 7)
(+ (multi 7 6 0) 7)
(+ (multi 7 6 0) 7)
(+ (double (multi 7 3 0)) 7)
|#
(define (iter-multi base cnt reg)
  (if (= cnt 1)
    (+ base reg)
    (if (even? cnt)
      (iter-multi (double base) (/ cnt 2) reg)
      (+ (iter-multi base (- cnt 1) (+ reg base))))))

(define (double a)
  (+ a a))

(define (fast-multi a b)
  (cond ((< a 0) 0)
    ((< b 0) 0)
    (else (if (> a b)
            (iter-multi a b 0)
            (iter-multi b a 0)))))

(fast-multi 7 7)
(slow-multi 7 7)
(fast-multi 10 7)
(slow-multi 10 7)
(fast-multi 7 10)
(slow-multi 7 10)
(fast-multi 7 9)
(slow-multi 7 9)