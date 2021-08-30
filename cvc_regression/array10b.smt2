; COMMAND-LINE: --incremental --strings-exp --strings-seq-update
; EXPECT: unsat

(set-logic ALL)
(declare-fun A () (Seq Int))
(declare-fun B () (Seq Int))
(declare-fun f (Int) Int)
(declare-fun g (Int) Int)

(assert (distinct (seq.++ (seq.rev A) (seq.rev B)) (seq.rev (seq.++ B A))))

(check-sat)
