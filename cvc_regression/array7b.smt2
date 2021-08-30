; COMMAND-LINE: --incremental --strings-exp --strings-seq-update
; EXPECT: sat

(set-logic ALL)
(declare-fun f ((Seq Int)) (Seq Int))
(declare-fun g ((Seq Int)) (Seq Int))

(assert (forall ((x (Seq Int))) (= (g (f x)) x)))
(assert (forall ((x (Seq Int)) (y (Seq Int))) (or (distinct (f x) (f y)) (= x y))))

(check-sat)

