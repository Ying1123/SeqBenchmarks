(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :full-saturate-quant false)
(set-logic ALL)
; done setting options


(declare-fun A () (Seq Int))
(declare-fun i () Int)
(declare-fun S () (Seq Int))

(assert (<= 0 i))
(assert (< i (- (seq.len A) 1)))
(assert (= (seq.nth A i) (seq.nth A (+ i 1))))
(assert (distinct (seq.update (seq.update A (+ i 1) (seq.extract A i 1)) i (seq.extract A (+ i 1) 1)) A))
(check-sat)
