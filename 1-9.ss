(define (inc a) (+ a 1))
(define (dec a) (- a 1))

#|
(madd 3 7)
(inc (madd (dec 3) 7))
(inc (madd 2 7))
(inc ((inc (madd (dec 2) 7))))
(inc ((inc (madd 1 7))))
(inc ((inc ((inc (madd (dec 1) 7))))))
(inc ((inc ((inc (madd 0 7))))))
(inc ((inc ((inc 7)))))
(inc ((inc 8)))
(inc 9)
(10)
|#
; method v1
(define (madd a b)
  (if (= a 0)
    b
    (inc (madd (dec a) b))))
(madd 3 7)

#|
(maddV2 3 7)
(maddV2 (dec 3) (inc 7))
(maddV2 2 8)
(maddV2 (dec 2) (inc 8))
(maddV2 1 9)
(maddV2 (dec 1) (inc 9))
(maddV2 0 10)
(10)
|#
; method v2
(define (maddV2 a b)
  (if (= a 0)
    b
    (maddV2 (dec a) (inc b))))

(maddV2 3 7)

; seems like the method1 need more steps because of contraction
