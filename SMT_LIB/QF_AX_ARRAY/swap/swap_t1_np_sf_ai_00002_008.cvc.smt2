(set-info :smt-lib-version 2.6)
(set-logic QF_AX)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_10 () (Array Index Element))
(declare-fun a_12 () (Array Index Element))
(declare-fun a_14 () (Array Index Element))
(declare-fun a_15 () (Array Index Element))
(declare-fun a_16 () (Array Index Element))
(declare-fun a_17 () (Array Index Element))
(declare-fun a_19 () (Array Index Element))
(declare-fun a_20 () (Array Index Element))
(declare-fun e_11 () Element)
(declare-fun e_13 () Element)
(declare-fun e_18 () Element)
(declare-fun e_9 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(assert (= a_10 (store a1 i0 e_9)))
(assert (= a_12 (store a_10 i1 e_11)))
(assert (= a_14 (store a_12 i1 e_13)))
(assert (= a_15 (store a_14 i1 e_13)))
(assert (= a_16 (store a1 i1 e_11)))
(assert (= a_17 (store a_16 i0 e_9)))
(assert (= a_19 (store a_17 i1 e_18)))
(assert (= a_20 (store a_19 i1 e_18)))
(assert (= e_11 (select a1 i0)))
(assert (= e_13 (select a_12 i1)))
(assert (= e_18 (select a_17 i1)))
(assert (= e_9 (select a1 i1)))
(assert (not (= a_15 a_20)))
(check-sat)
(exit)
