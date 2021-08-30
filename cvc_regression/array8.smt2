; COMMAND-LINE: --incremental
; EXPECT: sat

(set-logic ALL)
(declare-fun f (Int) Int)
(declare-fun g (Int) Int)

(assert (forall ((x Int)) (= (g (f x)) x)))
(assert (forall ((x Int) (y Int)) (or (distinct (f x) (f y)) (= x y))))

(check-sat)
