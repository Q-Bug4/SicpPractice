(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

(define % remainder)

#| normal-order
(gcd 206 40)

(if (= 40 0)
  206
  (gcd 40 (% 206 40))
)

x0 => (% 206 40)
(gcd 40 x0)

; x0 => 6
; times: 0+1=1
(if (= x0 0)
  40
  (gcd x0 (% 40 x0))
)

x1 => (% 40 x0)
(gcd x0 x1)

; x1 => 4
; times: 1+2=3
(if (= x1 0)
  x0
  (gcd x1 (% x0 x1))
)

; x2 => (% x0 x1)
(gcd x1 x2)

; x2 => 2
; times: 3+4=7
(if (= x2 0)
  x1
  (gcd x2 (% x1 x2))
)

; x3 => (% x1 x2)
(gcd x2 x3)

; x3 => 0
; times: 7+7=14
(if (= x3 0)
  x2
  (gcd x3 (% x2 x3))
)

; times: 14+4=18
(x2)
(% x0 x1)
(% (% 206 40) (% 40 (% 206 40)))

so normal-order will performed remainder 18 times
|#


#| applicative-order
(gcd 206 40)

(if (= 40 0)
  206
  (gcd 40 (% 206 40))
)

(gcd 40 (% 206 40)) ; times: 0+1=1
(gcd 40 6)

(if (= 6 0)
  40
  (gcd 6 (% 40 6))
)

(gcd 6 (% 40 6)) ; times: 1+1=2
(gcd 6 4)

(if (= 4 0)
  6
  (gcd 4 (% 6 4))
)

(gcd 4 (% 6 4)) ; times: 2+1=3
(gcd 4 2)

(if (= 2 0)
  4
  (gcd 2 (% 4 2))
)

(gcd 2 (% 4 2)) ; times: 3+1=4
(gcd 2 0)

(if (= 0 0)
  2
  (gcd 0 (% 2 0))
)

2

so applicative-order will performed remainder 4 times
|#


(gcd 206 40)
