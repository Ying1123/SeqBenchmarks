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
(declare-fun a_100 () (Array Index Element))
(declare-fun a_102 () (Array Index Element))
(declare-fun a_104 () (Array Index Element))
(declare-fun a_106 () (Array Index Element))
(declare-fun a_108 () (Array Index Element))
(declare-fun a_64 () (Array Index Element))
(declare-fun a_66 () (Array Index Element))
(declare-fun a_68 () (Array Index Element))
(declare-fun a_70 () (Array Index Element))
(declare-fun a_72 () (Array Index Element))
(declare-fun a_74 () (Array Index Element))
(declare-fun a_76 () (Array Index Element))
(declare-fun a_78 () (Array Index Element))
(declare-fun a_80 () (Array Index Element))
(declare-fun a_82 () (Array Index Element))
(declare-fun a_84 () (Array Index Element))
(declare-fun a_86 () (Array Index Element))
(declare-fun a_87 () (Array Index Element))
(declare-fun a_88 () (Array Index Element))
(declare-fun a_90 () (Array Index Element))
(declare-fun a_92 () (Array Index Element))
(declare-fun a_94 () (Array Index Element))
(declare-fun a_96 () (Array Index Element))
(declare-fun a_98 () (Array Index Element))
(declare-fun e_101 () Element)
(declare-fun e_103 () Element)
(declare-fun e_105 () Element)
(declare-fun e_107 () Element)
(declare-fun e_63 () Element)
(declare-fun e_65 () Element)
(declare-fun e_67 () Element)
(declare-fun e_69 () Element)
(declare-fun e_71 () Element)
(declare-fun e_73 () Element)
(declare-fun e_75 () Element)
(declare-fun e_77 () Element)
(declare-fun e_79 () Element)
(declare-fun e_81 () Element)
(declare-fun e_83 () Element)
(declare-fun e_85 () Element)
(declare-fun e_89 () Element)
(declare-fun e_91 () Element)
(declare-fun e_93 () Element)
(declare-fun e_95 () Element)
(declare-fun e_97 () Element)
(declare-fun e_99 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(assert (= a_100 (store a_98 i2 e_99)))
(assert (= a_102 (store a_100 i3 e_101)))
(assert (= a_104 (store a_102 i4 e_103)))
(assert (= a_106 (store a_104 i5 e_105)))
(assert (= a_108 (store a_106 i1 e_107)))
(assert (= a_64 (store a1 i1 e_63)))
(assert (= a_66 (store a_64 i0 e_65)))
(assert (= a_68 (store a_66 i4 e_67)))
(assert (= a_70 (store a_68 i5 e_69)))
(assert (= a_72 (store a_70 i2 e_71)))
(assert (= a_74 (store a_72 i4 e_73)))
(assert (= a_76 (store a_74 i0 e_75)))
(assert (= a_78 (store a_76 i2 e_77)))
(assert (= a_80 (store a_78 i4 e_79)))
(assert (= a_82 (store a_80 i3 e_81)))
(assert (= a_84 (store a_82 i1 e_83)))
(assert (= a_86 (store a_84 i5 e_85)))
(assert (= a_87 (store a1 i0 e_65)))
(assert (= a_88 (store a_87 i1 e_63)))
(assert (= a_90 (store a_88 i4 e_89)))
(assert (= a_92 (store a_90 i5 e_91)))
(assert (= a_94 (store a_92 i4 e_93)))
(assert (= a_96 (store a_94 i2 e_95)))
(assert (= a_98 (store a_96 i0 e_97)))
(assert (= e_101 (select a_100 i4)))
(assert (= e_103 (select a_100 i3)))
(assert (= e_105 (select a_104 i1)))
(assert (= e_107 (select a_104 i5)))
(assert (= e_63 (select a1 i0)))
(assert (= e_65 (select a1 i1)))
(assert (= e_67 (select a_66 i5)))
(assert (= e_69 (select a_66 i4)))
(assert (= e_71 (select a_70 i4)))
(assert (= e_73 (select a_70 i2)))
(assert (= e_75 (select a_74 i2)))
(assert (= e_77 (select a_74 i0)))
(assert (= e_79 (select a_78 i3)))
(assert (= e_81 (select a_78 i4)))
(assert (= e_83 (select a_82 i5)))
(assert (= e_85 (select a_82 i1)))
(assert (= e_89 (select a_88 i5)))
(assert (= e_91 (select a_88 i4)))
(assert (= e_93 (select a_92 i2)))
(assert (= e_95 (select a_92 i4)))
(assert (= e_97 (select a_96 i2)))
(assert (= e_99 (select a_96 i0)))
(assert (not (= a_86 a_108)))
(check-sat)
(exit)
