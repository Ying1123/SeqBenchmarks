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
(set-info :status unsat)

(declare-sort Element 0)
(declare-fun a_67 () (Seq Element))
(declare-fun a_68 () (Seq Element))
(declare-fun a_70 () (Seq Element))
(declare-fun a_71 () (Seq Element))
(declare-fun a_73 () (Seq Element))
(declare-fun a_75 () (Seq Element))
(declare-fun a_77 () (Seq Element))
(declare-fun a_78 () (Seq Element))
(declare-fun a_80 () (Seq Element))
(declare-fun a_82 () (Seq Element))
(declare-fun a_83 () (Seq Element))
(declare-fun a_84 () (Seq Element))
(declare-fun e_66 () Element)
(declare-fun e_69 () Element)
(declare-fun e_72 () Element)
(declare-fun e_74 () Element)
(declare-fun e_76 () Element)
(declare-fun e_79 () Element)
(declare-fun e_81 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i4 () Int)
(assert (= a_67 (seq.update a1 i2 (seq.unit e_66))))
(assert (= a_68 (seq.update a_67 i2 (seq.unit e_66))))
(assert (= a_70 (seq.update a_68 i4 (seq.unit e_69))))
(assert (= a_71 (seq.update a_70 i4 (seq.unit e_69))))
(assert (= a_73 (seq.update a_71 i4 (seq.unit e_72))))
(assert (= a_75 (seq.update a_73 i1 (seq.unit e_74))))
(assert (= a_77 (seq.update a_75 i2 (seq.unit e_76))))
(assert (= a_78 (seq.update a_77 i2 (seq.unit e_76))))
(assert (= a_80 (seq.update a_78 i1 (seq.unit e_79))))
(assert (= a_82 (seq.update a_80 i2 (seq.unit e_81))))
(assert (= a_83 (seq.update a_78 i2 (seq.unit e_81))))
(assert (= a_84 (seq.update a_83 i1 (seq.unit e_79))))
(assert (= e_66 (seq.nth a1 i2)))
(assert (= e_69 (seq.nth a_68 i4)))
(assert (= e_72 (seq.nth a_71 i1)))
(assert (= e_74 (seq.nth a_71 i4)))
(assert (= e_76 (seq.nth a_75 i2)))
(assert (= e_79 (seq.nth a_78 i2)))
(assert (= e_81 (seq.nth a_78 i1)))
(assert (not (= a_82 a_84)))
(check-sat)
(exit)
