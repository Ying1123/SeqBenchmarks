(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status sat)

(declare-sort Element 0)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (let ((?v_10 (seq.nth a1 i8)) (?v_11 (seq.nth a1 i2))) (let ((?v_0 (seq.update (seq.update a1 i8 (seq.unit ?v_11)) i2 (seq.unit ?v_10)))) (let ((?v_1 (seq.nth ?v_0 i4))) (let ((?v_2 (seq.update (seq.update ?v_0 i4 (seq.unit ?v_1)) i4 (seq.unit ?v_1)))) (let ((?v_3 (seq.update (seq.update ?v_2 i2 (seq.unit (seq.nth ?v_2 i7))) i7 (seq.unit (seq.nth ?v_2 i2))))) (let ((?v_4 (seq.update (seq.update ?v_3 i1 (seq.unit (seq.nth ?v_3 i6))) i6 (seq.unit (seq.nth ?v_3 i1))))) (let ((?v_5 (seq.update (seq.update ?v_4 i0 (seq.unit (seq.nth ?v_4 i8))) i8 (seq.unit (seq.nth ?v_4 i0))))) (let ((?v_6 (seq.nth ?v_5 i6))) (let ((?v_7 (seq.update (seq.update ?v_5 i6 (seq.unit ?v_6)) i6 (seq.unit ?v_6)))) (let ((?v_8 (seq.update (seq.update ?v_7 i1 (seq.unit (seq.nth ?v_7 i5))) i5 (seq.unit (seq.nth ?v_7 i1))))) (let ((?v_9 (seq.update (seq.update ?v_8 i3 (seq.unit (seq.nth ?v_8 i6))) i6 (seq.unit (seq.nth ?v_8 i3)))) (?v_12 (seq.update (seq.update a1 i2 (seq.unit ?v_10)) i8 (seq.unit ?v_11)))) (let ((?v_13 (seq.nth ?v_12 i4))) (let ((?v_14 (seq.update (seq.update ?v_12 i4 (seq.unit ?v_13)) i4 (seq.unit ?v_13)))) (let ((?v_15 (seq.update (seq.update ?v_14 i2 (seq.unit (seq.nth ?v_14 i7))) i7 (seq.unit (seq.nth ?v_14 i2))))) (let ((?v_16 (seq.update (seq.update ?v_15 i6 (seq.unit (seq.nth ?v_15 i1))) i1 (seq.unit (seq.nth ?v_15 i6))))) (let ((?v_17 (seq.update (seq.update ?v_16 i0 (seq.unit (seq.nth ?v_16 i8))) i8 (seq.unit (seq.nth ?v_16 i0))))) (let ((?v_18 (seq.nth ?v_17 i6))) (let ((?v_19 (seq.update (seq.update ?v_17 i6 (seq.unit ?v_18)) i6 (seq.unit ?v_18)))) (let ((?v_20 (seq.update (seq.update ?v_19 i1 (seq.unit (seq.nth ?v_19 i5))) i5 (seq.unit (seq.nth ?v_19 i1))))) (let ((?v_21 (seq.update (seq.update ?v_20 i3 (seq.unit (seq.nth ?v_20 i6))) i6 (seq.unit (seq.nth ?v_20 i3))))) (not (= (seq.update (seq.update ?v_9 i0 (seq.unit (seq.nth ?v_9 i4))) i4 (seq.unit (seq.nth ?v_9 i0))) (seq.update (seq.update ?v_21 i5 (seq.unit (seq.nth ?v_21 i0))) i0 (seq.unit (seq.nth ?v_21 i5))))))))))))))))))))))))))
(check-sat)
(exit)
