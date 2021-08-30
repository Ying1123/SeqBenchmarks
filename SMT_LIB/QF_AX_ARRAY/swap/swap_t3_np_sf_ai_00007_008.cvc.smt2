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
(declare-fun a_110 () (Array Index Element))
(declare-fun a_112 () (Array Index Element))
(declare-fun a_114 () (Array Index Element))
(declare-fun a_116 () (Array Index Element))
(declare-fun a_118 () (Array Index Element))
(declare-fun a_119 () (Array Index Element))
(declare-fun a_120 () (Array Index Element))
(declare-fun a_122 () (Array Index Element))
(declare-fun a_124 () (Array Index Element))
(declare-fun a_126 () (Array Index Element))
(declare-fun a_128 () (Array Index Element))
(declare-fun a_130 () (Array Index Element))
(declare-fun a_132 () (Array Index Element))
(declare-fun a_134 () (Array Index Element))
(declare-fun a_136 () (Array Index Element))
(declare-fun a_138 () (Array Index Element))
(declare-fun a_140 () (Array Index Element))
(declare-fun a_92 () (Array Index Element))
(declare-fun a_94 () (Array Index Element))
(declare-fun a_96 () (Array Index Element))
(declare-fun a_98 () (Array Index Element))
(declare-fun e_101 () Element)
(declare-fun e_103 () Element)
(declare-fun e_105 () Element)
(declare-fun e_107 () Element)
(declare-fun e_109 () Element)
(declare-fun e_111 () Element)
(declare-fun e_113 () Element)
(declare-fun e_115 () Element)
(declare-fun e_117 () Element)
(declare-fun e_121 () Element)
(declare-fun e_123 () Element)
(declare-fun e_125 () Element)
(declare-fun e_127 () Element)
(declare-fun e_129 () Element)
(declare-fun e_131 () Element)
(declare-fun e_133 () Element)
(declare-fun e_135 () Element)
(declare-fun e_137 () Element)
(declare-fun e_139 () Element)
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
(declare-fun i6 () Index)
(assert (= a_100 (store a_98 i4 e_99)))
(assert (= a_102 (store a_100 i2 e_101)))
(assert (= a_104 (store a_102 i6 e_103)))
(assert (= a_106 (store a_104 i0 e_105)))
(assert (= a_108 (store a_106 i5 e_107)))
(assert (= a_110 (store a_108 i3 e_109)))
(assert (= a_112 (store a_110 i6 e_111)))
(assert (= a_114 (store a_112 i5 e_113)))
(assert (= a_116 (store a_114 i3 e_115)))
(assert (= a_118 (store a_116 i4 e_117)))
(assert (= a_119 (store a_94 i5 e_97)))
(assert (= a_120 (store a_119 i2 e_95)))
(assert (= a_122 (store a_120 i2 e_121)))
(assert (= a_124 (store a_122 i4 e_123)))
(assert (= a_126 (store a_124 i0 e_125)))
(assert (= a_128 (store a_126 i6 e_127)))
(assert (= a_130 (store a_128 i5 e_129)))
(assert (= a_132 (store a_130 i3 e_131)))
(assert (= a_134 (store a_132 i6 e_133)))
(assert (= a_136 (store a_134 i5 e_135)))
(assert (= a_138 (store a_136 i3 e_137)))
(assert (= a_140 (store a_138 i4 e_139)))
(assert (= a_92 (store a1 i1 e_91)))
(assert (= a_94 (store a_92 i4 e_93)))
(assert (= a_96 (store a_94 i2 e_95)))
(assert (= a_98 (store a_96 i5 e_97)))
(assert (= e_101 (select a_98 i4)))
(assert (= e_103 (select a_102 i0)))
(assert (= e_105 (select a_102 i6)))
(assert (= e_107 (select a_106 i3)))
(assert (= e_109 (select a_106 i5)))
(assert (= e_111 (select a_110 i5)))
(assert (= e_113 (select a_110 i6)))
(assert (= e_115 (select a_114 i4)))
(assert (= e_117 (select a_114 i3)))
(assert (= e_121 (select a_120 i4)))
(assert (= e_123 (select a_120 i2)))
(assert (= e_125 (select a_124 i6)))
(assert (= e_127 (select a_124 i0)))
(assert (= e_129 (select a_128 i3)))
(assert (= e_131 (select a_128 i5)))
(assert (= e_133 (select a_132 i5)))
(assert (= e_135 (select a_132 i6)))
(assert (= e_137 (select a_136 i4)))
(assert (= e_139 (select a_136 i3)))
(assert (= e_91 (select a1 i4)))
(assert (= e_93 (select a1 i1)))
(assert (= e_95 (select a_94 i5)))
(assert (= e_97 (select a_94 i2)))
(assert (= e_99 (select a_98 i2)))
(assert (not (= a_118 a_140)))
(check-sat)
(exit)
