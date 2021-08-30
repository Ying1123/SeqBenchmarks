; COMMAND-LINE: --incremental --strings-exp --strings-seq-update
; EXPECT: sat

(set-logic ALL)
(declare-fun A () (Seq Int))
(assert (not (or (= 0 (- 1 (seq.len A))) 
                 (= (seq.nth A 0) (seq.nth A 1)) 
				 (= (seq.extract A 0 0) (seq.extract A 0 1))
				 )))
(check-sat)
