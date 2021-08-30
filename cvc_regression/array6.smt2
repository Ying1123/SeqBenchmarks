; COMMAND-LINE: --incremental --strings-exp --strings-seq-update
; EXPECT: unsat

(set-logic ALL)
(declare-fun A () (Seq Int))
(declare-fun B () (Seq Int))
(declare-fun C () (Seq Int))
(declare-fun e () Int)
(declare-fun f ((Seq Int)) (Seq Int))

(assert (not (= (f A) (f B))))
(assert (= C (seq.++ A (seq.unit e))))
(assert (= B (seq.extract C 0 (- (seq.len C) 1))))

(check-sat)
