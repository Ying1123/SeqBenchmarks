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
(set-info :status sat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_123 () (Array Index Element))
(declare-fun a_125 () (Array Index Element))
(declare-fun a_127 () (Array Index Element))
(declare-fun a_129 () (Array Index Element))
(declare-fun a_131 () (Array Index Element))
(declare-fun a_133 () (Array Index Element))
(declare-fun a_135 () (Array Index Element))
(declare-fun a_137 () (Array Index Element))
(declare-fun a_139 () (Array Index Element))
(declare-fun a_141 () (Array Index Element))
(declare-fun a_142 () (Array Index Element))
(declare-fun a_143 () (Array Index Element))
(declare-fun a_145 () (Array Index Element))
(declare-fun a_147 () (Array Index Element))
(declare-fun a_149 () (Array Index Element))
(declare-fun a_151 () (Array Index Element))
(declare-fun a_153 () (Array Index Element))
(declare-fun a_155 () (Array Index Element))
(declare-fun a_157 () (Array Index Element))
(declare-fun a_158 () (Array Index Element))
(declare-fun e_122 () Element)
(declare-fun e_124 () Element)
(declare-fun e_126 () Element)
(declare-fun e_128 () Element)
(declare-fun e_130 () Element)
(declare-fun e_132 () Element)
(declare-fun e_134 () Element)
(declare-fun e_136 () Element)
(declare-fun e_138 () Element)
(declare-fun e_140 () Element)
(declare-fun e_144 () Element)
(declare-fun e_146 () Element)
(declare-fun e_148 () Element)
(declare-fun e_150 () Element)
(declare-fun e_152 () Element)
(declare-fun e_154 () Element)
(declare-fun e_156 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(assert (= a_123 (store a1 i4 e_122)))
(assert (= a_125 (store a_123 i2 e_124)))
(assert (= a_127 (store a_125 i0 e_126)))
(assert (= a_129 (store a_127 i3 e_128)))
(assert (= a_131 (store a_129 i2 e_130)))
(assert (= a_133 (store a_131 i1 e_132)))
(assert (= a_135 (store a_133 i4 e_134)))
(assert (= a_137 (store a_135 i3 e_136)))
(assert (= a_139 (store a_137 i3 e_138)))
(assert (= a_141 (store a_139 i2 e_140)))
(assert (= a_142 (store a1 i2 e_124)))
(assert (= a_143 (store a_142 i4 e_122)))
(assert (= a_145 (store a_143 i0 e_144)))
(assert (= a_147 (store a_145 i3 e_146)))
(assert (= a_149 (store a_147 i1 e_148)))
(assert (= a_151 (store a_149 i2 e_150)))
(assert (= a_153 (store a_151 i3 e_152)))
(assert (= a_155 (store a_153 i4 e_154)))
(assert (= a_157 (store a_155 i3 e_156)))
(assert (= a_158 (store a_157 i3 e_156)))
(assert (= e_122 (select a1 i2)))
(assert (= e_124 (select a1 i4)))
(assert (= e_126 (select a_125 i3)))
(assert (= e_128 (select a_125 i0)))
(assert (= e_130 (select a_129 i1)))
(assert (= e_132 (select a_129 i2)))
(assert (= e_134 (select a_133 i3)))
(assert (= e_136 (select a_133 i4)))
(assert (= e_138 (select a_137 i2)))
(assert (= e_140 (select a_137 i3)))
(assert (= e_144 (select a_143 i3)))
(assert (= e_146 (select a_143 i0)))
(assert (= e_148 (select a_147 i2)))
(assert (= e_150 (select a_147 i1)))
(assert (= e_152 (select a_151 i4)))
(assert (= e_154 (select a_151 i3)))
(assert (= e_156 (select a_155 i3)))
(assert (not (= a_141 a_158)))
(check-sat)
(exit)
