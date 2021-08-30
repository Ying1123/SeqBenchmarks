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
(declare-fun a_1 () (Seq Element))
(declare-fun a_11 () (Seq Element))
(declare-fun a_13 () (Seq Element))
(declare-fun a_15 () (Seq Element))
(declare-fun a_17 () (Seq Element))
(declare-fun a_19 () (Seq Element))
(declare-fun a_21 () (Seq Element))
(declare-fun a_23 () (Seq Element))
(declare-fun a_25 () (Seq Element))
(declare-fun a_27 () (Seq Element))
(declare-fun a_29 () (Seq Element))
(declare-fun a_3 () (Seq Element))
(declare-fun a_31 () (Seq Element))
(declare-fun a_5 () (Seq Element))
(declare-fun a_7 () (Seq Element))
(declare-fun a_9 () (Seq Element))
(declare-fun e_0 () Element)
(declare-fun e_10 () Element)
(declare-fun e_12 () Element)
(declare-fun e_14 () Element)
(declare-fun e_16 () Element)
(declare-fun e_18 () Element)
(declare-fun e_2 () Element)
(declare-fun e_20 () Element)
(declare-fun e_22 () Element)
(declare-fun e_24 () Element)
(declare-fun e_26 () Element)
(declare-fun e_28 () Element)
(declare-fun e_30 () Element)
(declare-fun e_4 () Element)
(declare-fun e_6 () Element)
(declare-fun e_8 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun a2 () (Seq Element))
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (= a_1 (seq.update a1 i1 (seq.unit e_0))))
(assert (= a_11 (seq.update a_7 i3 (seq.unit e_10))))
(assert (= a_13 (seq.update a_9 i4 (seq.unit e_12))))
(assert (= a_15 (seq.update a_11 i4 (seq.unit e_14))))
(assert (= a_17 (seq.update a_13 i5 (seq.unit e_16))))
(assert (= a_19 (seq.update a_15 i5 (seq.unit e_18))))
(assert (= a_21 (seq.update a_17 i6 (seq.unit e_20))))
(assert (= a_23 (seq.update a_19 i6 (seq.unit e_22))))
(assert (= a_25 (seq.update a_21 i7 (seq.unit e_24))))
(assert (= a_27 (seq.update a_23 i7 (seq.unit e_26))))
(assert (= a_29 (seq.update a_25 i1 (seq.unit e_28))))
(assert (= a_3 (seq.update a2 i1 (seq.unit e_2))))
(assert (= a_31 (seq.update a_27 i8 (seq.unit e_30))))
(assert (= a_5 (seq.update a_1 i2 (seq.unit e_4))))
(assert (= a_7 (seq.update a_3 i2 (seq.unit e_6))))
(assert (= a_9 (seq.update a_5 i3 (seq.unit e_8))))
(assert (= e_0 (seq.nth a2 i1)))
(assert (= e_10 (seq.nth a_5 i3)))
(assert (= e_12 (seq.nth a_11 i4)))
(assert (= e_14 (seq.nth a_9 i4)))
(assert (= e_16 (seq.nth a_15 i5)))
(assert (= e_18 (seq.nth a_13 i5)))
(assert (= e_2 (seq.nth a1 i1)))
(assert (= e_20 (seq.nth a_19 i6)))
(assert (= e_22 (seq.nth a_17 i6)))
(assert (= e_24 (seq.nth a_23 i7)))
(assert (= e_26 (seq.nth a_21 i7)))
(assert (= e_28 (seq.nth a_27 i8)))
(assert (= e_30 (seq.nth a_25 i8)))
(assert (= e_4 (seq.nth a_3 i2)))
(assert (= e_6 (seq.nth a_1 i2)))
(assert (= e_8 (seq.nth a_7 i3)))
(assert (= a_29 a_31))
(assert (not (= a1 a2)))
(check-sat)
(exit)
