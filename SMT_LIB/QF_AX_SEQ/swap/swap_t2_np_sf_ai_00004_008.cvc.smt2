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
(declare-fun a_48 () (Seq Element))
(declare-fun a_50 () (Seq Element))
(declare-fun a_52 () (Seq Element))
(declare-fun a_54 () (Seq Element))
(declare-fun a_56 () (Seq Element))
(declare-fun a_58 () (Seq Element))
(declare-fun a_60 () (Seq Element))
(declare-fun a_62 () (Seq Element))
(declare-fun a_63 () (Seq Element))
(declare-fun a_64 () (Seq Element))
(declare-fun a_66 () (Seq Element))
(declare-fun a_68 () (Seq Element))
(declare-fun a_70 () (Seq Element))
(declare-fun a_72 () (Seq Element))
(declare-fun a_74 () (Seq Element))
(declare-fun a_76 () (Seq Element))
(declare-fun e_47 () Element)
(declare-fun e_49 () Element)
(declare-fun e_51 () Element)
(declare-fun e_53 () Element)
(declare-fun e_55 () Element)
(declare-fun e_57 () Element)
(declare-fun e_59 () Element)
(declare-fun e_61 () Element)
(declare-fun e_65 () Element)
(declare-fun e_67 () Element)
(declare-fun e_69 () Element)
(declare-fun e_71 () Element)
(declare-fun e_73 () Element)
(declare-fun e_75 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(assert (= a_48 (seq.update a1 i3 (seq.unit e_47))))
(assert (= a_50 (seq.update a_48 i1 (seq.unit e_49))))
(assert (= a_52 (seq.update a_50 i1 (seq.unit e_51))))
(assert (= a_54 (seq.update a_52 i3 (seq.unit e_53))))
(assert (= a_56 (seq.update a_54 i3 (seq.unit e_55))))
(assert (= a_58 (seq.update a_56 i2 (seq.unit e_57))))
(assert (= a_60 (seq.update a_58 i3 (seq.unit e_59))))
(assert (= a_62 (seq.update a_60 i1 (seq.unit e_61))))
(assert (= a_63 (seq.update a1 i1 (seq.unit e_49))))
(assert (= a_64 (seq.update a_63 i3 (seq.unit e_47))))
(assert (= a_66 (seq.update a_64 i1 (seq.unit e_65))))
(assert (= a_68 (seq.update a_66 i3 (seq.unit e_67))))
(assert (= a_70 (seq.update a_68 i3 (seq.unit e_69))))
(assert (= a_72 (seq.update a_70 i2 (seq.unit e_71))))
(assert (= a_74 (seq.update a_72 i1 (seq.unit e_73))))
(assert (= a_76 (seq.update a_74 i3 (seq.unit e_75))))
(assert (= e_47 (seq.nth a1 i1)))
(assert (= e_49 (seq.nth a1 i3)))
(assert (= e_51 (seq.nth a_50 i3)))
(assert (= e_53 (seq.nth a_50 i1)))
(assert (= e_55 (seq.nth a_54 i2)))
(assert (= e_57 (seq.nth a_54 i3)))
(assert (= e_59 (seq.nth a_58 i1)))
(assert (= e_61 (seq.nth a_58 i3)))
(assert (= e_65 (seq.nth a_64 i3)))
(assert (= e_67 (seq.nth a_64 i1)))
(assert (= e_69 (seq.nth a_68 i2)))
(assert (= e_71 (seq.nth a_68 i3)))
(assert (= e_73 (seq.nth a_72 i3)))
(assert (= e_75 (seq.nth a_72 i1)))
(assert (not (= a_62 a_76)))
(check-sat)
(exit)