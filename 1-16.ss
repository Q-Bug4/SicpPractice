(define (fast-expt b n)
  (m-expt 1 b n b))

(define (m-expt con base cnt res)
  (if (= cnt 0)
    1
    (if (= cnt 1)
      (* con res)
      (if (even? cnt)
        (m-expt con (* base base) (/ cnt 2) (* res res))
        (m-expt (* con base) base (- cnt 1) res)))))

#|
(fast-expt 2 6)
(m-expt 1 2 6 2)
(m-expt 1 4 3 4)
(m-expt 4 4 2 4)
(m-expt 4 4 1 16)
64
|#
(fast-expt 2 0)
(fast-expt 2 1)
(fast-expt 2 2)
(fast-expt 2 6)
(fast-expt 2 7)
(fast-expt 2 8)
(fast-expt 2 9)
(fast-expt 2 10)
