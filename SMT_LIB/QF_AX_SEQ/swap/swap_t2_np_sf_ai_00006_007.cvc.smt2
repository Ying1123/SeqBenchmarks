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
(declare-fun a_154 () (Seq Element))
(declare-fun a_156 () (Seq Element))
(declare-fun a_158 () (Seq Element))
(declare-fun a_160 () (Seq Element))
(declare-fun a_162 () (Seq Element))
(declare-fun a_164 () (Seq Element))
(declare-fun a_166 () (Seq Element))
(declare-fun a_168 () (Seq Element))
(declare-fun a_170 () (Seq Element))
(declare-fun a_172 () (Seq Element))
(declare-fun a_174 () (Seq Element))
(declare-fun a_176 () (Seq Element))
(declare-fun a_177 () (Seq Element))
(declare-fun a_178 () (Seq Element))
(declare-fun a_180 () (Seq Element))
(declare-fun a_182 () (Seq Element))
(declare-fun a_184 () (Seq Element))
(declare-fun a_186 () (Seq Element))
(declare-fun a_188 () (Seq Element))
(declare-fun a_190 () (Seq Element))
(declare-fun a_192 () (Seq Element))
(declare-fun a_194 () (Seq Element))
(declare-fun e_153 () Element)
(declare-fun e_155 () Element)
(declare-fun e_157 () Element)
(declare-fun e_159 () Element)
(declare-fun e_161 () Element)
(declare-fun e_163 () Element)
(declare-fun e_165 () Element)
(declare-fun e_167 () Element)
(declare-fun e_169 () Element)
(declare-fun e_171 () Element)
(declare-fun e_173 () Element)
(declare-fun e_175 () Element)
(declare-fun e_179 () Element)
(declare-fun e_181 () Element)
(declare-fun e_183 () Element)
(declare-fun e_185 () Element)
(declare-fun e_187 () Element)
(declare-fun e_189 () Element)
(declare-fun e_191 () Element)
(declare-fun e_193 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(assert (= a_154 (seq.update a1 i4 (seq.unit e_153))))
(assert (= a_156 (seq.update a_154 i5 (seq.unit e_155))))
(assert (= a_158 (seq.update a_156 i2 (seq.unit e_157))))
(assert (= a_160 (seq.update a_158 i0 (seq.unit e_159))))
(assert (= a_162 (seq.update a_160 i5 (seq.unit e_161))))
(assert (= a_164 (seq.update a_162 i0 (seq.unit e_163))))
(assert (= a_166 (seq.update a_164 i3 (seq.unit e_165))))
(assert (= a_168 (seq.update a_166 i1 (seq.unit e_167))))
(assert (= a_170 (seq.update a_168 i3 (seq.unit e_169))))
(assert (= a_172 (seq.update a_170 i4 (seq.unit e_171))))
(assert (= a_174 (seq.update a_172 i5 (seq.unit e_173))))
(assert (= a_176 (seq.update a_174 i0 (seq.unit e_175))))
(assert (= a_177 (seq.update a_156 i0 (seq.unit e_159))))
(assert (= a_178 (seq.update a_177 i2 (seq.unit e_157))))
(assert (= a_180 (seq.update a_178 i0 (seq.unit e_179))))
(assert (= a_182 (seq.update a_180 i5 (seq.unit e_181))))
(assert (= a_184 (seq.update a_182 i3 (seq.unit e_183))))
(assert (= a_186 (seq.update a_184 i1 (seq.unit e_185))))
(assert (= a_188 (seq.update a_186 i4 (seq.unit e_187))))
(assert (= a_190 (seq.update a_188 i3 (seq.unit e_189))))
(assert (= a_192 (seq.update a_190 i5 (seq.unit e_191))))
(assert (= a_194 (seq.update a_192 i0 (seq.unit e_193))))
(assert (= e_153 (seq.nth a1 i5)))
(assert (= e_155 (seq.nth a1 i4)))
(assert (= e_157 (seq.nth a_156 i0)))
(assert (= e_159 (seq.nth a_156 i2)))
(assert (= e_161 (seq.nth a_160 i0)))
(assert (= e_163 (seq.nth a_160 i5)))
(assert (= e_165 (seq.nth a_164 i1)))
(assert (= e_167 (seq.nth a_164 i3)))
(assert (= e_169 (seq.nth a_168 i4)))
(assert (= e_171 (seq.nth a_168 i3)))
(assert (= e_173 (seq.nth a_172 i0)))
(assert (= e_175 (seq.nth a_172 i5)))
(assert (= e_179 (seq.nth a_178 i5)))
(assert (= e_181 (seq.nth a_178 i0)))
(assert (= e_183 (seq.nth a_182 i1)))
(assert (= e_185 (seq.nth a_182 i3)))
(assert (= e_187 (seq.nth a_186 i3)))
(assert (= e_189 (seq.nth a_186 i4)))
(assert (= e_191 (seq.nth a_190 i0)))
(assert (= e_193 (seq.nth a_190 i5)))
(assert (not (= a_176 a_194)))
(check-sat)
(exit)
