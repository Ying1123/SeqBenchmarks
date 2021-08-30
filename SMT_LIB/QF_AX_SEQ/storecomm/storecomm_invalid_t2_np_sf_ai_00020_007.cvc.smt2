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
(declare-fun a_160 () (Seq Element))
(declare-fun a_161 () (Seq Element))
(declare-fun a_162 () (Seq Element))
(declare-fun a_163 () (Seq Element))
(declare-fun a_164 () (Seq Element))
(declare-fun a_165 () (Seq Element))
(declare-fun a_166 () (Seq Element))
(declare-fun a_167 () (Seq Element))
(declare-fun a_168 () (Seq Element))
(declare-fun a_169 () (Seq Element))
(declare-fun a_170 () (Seq Element))
(declare-fun a_171 () (Seq Element))
(declare-fun a_172 () (Seq Element))
(declare-fun a_173 () (Seq Element))
(declare-fun a_174 () (Seq Element))
(declare-fun a_175 () (Seq Element))
(declare-fun a_176 () (Seq Element))
(declare-fun a_177 () (Seq Element))
(declare-fun a_178 () (Seq Element))
(declare-fun a_179 () (Seq Element))
(declare-fun a_180 () (Seq Element))
(declare-fun a_181 () (Seq Element))
(declare-fun a_182 () (Seq Element))
(declare-fun a_183 () (Seq Element))
(declare-fun a_184 () (Seq Element))
(declare-fun a_185 () (Seq Element))
(declare-fun a_186 () (Seq Element))
(declare-fun a_187 () (Seq Element))
(declare-fun a_188 () (Seq Element))
(declare-fun a_189 () (Seq Element))
(declare-fun a_190 () (Seq Element))
(declare-fun a_191 () (Seq Element))
(declare-fun a_192 () (Seq Element))
(declare-fun a_193 () (Seq Element))
(declare-fun a_194 () (Seq Element))
(declare-fun a_195 () (Seq Element))
(declare-fun a_196 () (Seq Element))
(declare-fun a_197 () (Seq Element))
(declare-fun a_198 () (Seq Element))
(declare-fun a1 () (Seq Element))
(declare-fun e1 () Element)
(declare-fun e10 () Element)
(declare-fun e11 () Element)
(declare-fun e12 () Element)
(declare-fun e13 () Element)
(declare-fun e14 () Element)
(declare-fun e15 () Element)
(declare-fun e16 () Element)
(declare-fun e17 () Element)
(declare-fun e18 () Element)
(declare-fun e19 () Element)
(declare-fun e2 () Element)
(declare-fun e20 () Element)
(declare-fun e3 () Element)
(declare-fun e4 () Element)
(declare-fun e5 () Element)
(declare-fun e6 () Element)
(declare-fun e7 () Element)
(declare-fun e8 () Element)
(declare-fun e9 () Element)
(declare-fun i1 () Int)
(declare-fun i10 () Int)
(declare-fun i11 () Int)
(declare-fun i12 () Int)
(declare-fun i13 () Int)
(declare-fun i14 () Int)
(declare-fun i15 () Int)
(declare-fun i16 () Int)
(declare-fun i17 () Int)
(declare-fun i18 () Int)
(declare-fun i19 () Int)
(declare-fun i2 () Int)
(declare-fun i20 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_160 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_161 (seq.update a_160 i2 (seq.unit e2))))
(assert (= a_162 (seq.update a_161 i3 (seq.unit e3))))
(assert (= a_163 (seq.update a_162 i4 (seq.unit e4))))
(assert (= a_164 (seq.update a_163 i5 (seq.unit e5))))
(assert (= a_165 (seq.update a_164 i6 (seq.unit e6))))
(assert (= a_166 (seq.update a_165 i7 (seq.unit e7))))
(assert (= a_167 (seq.update a_166 i8 (seq.unit e8))))
(assert (= a_168 (seq.update a_167 i9 (seq.unit e9))))
(assert (= a_169 (seq.update a_168 i10 (seq.unit e10))))
(assert (= a_170 (seq.update a_169 i11 (seq.unit e11))))
(assert (= a_171 (seq.update a_170 i12 (seq.unit e12))))
(assert (= a_172 (seq.update a_171 i13 (seq.unit e13))))
(assert (= a_173 (seq.update a_172 i14 (seq.unit e14))))
(assert (= a_174 (seq.update a_173 i15 (seq.unit e15))))
(assert (= a_175 (seq.update a_174 i16 (seq.unit e16))))
(assert (= a_176 (seq.update a_175 i17 (seq.unit e17))))
(assert (= a_177 (seq.update a_176 i18 (seq.unit e18))))
(assert (= a_178 (seq.update a_177 i19 (seq.unit e19))))
(assert (= a_179 (seq.update a_178 i1 (seq.unit e1))))
(assert (= a_180 (seq.update a_160 i10 (seq.unit e10))))
(assert (= a_181 (seq.update a_180 i17 (seq.unit e17))))
(assert (= a_182 (seq.update a_181 i3 (seq.unit e3))))
(assert (= a_183 (seq.update a_182 i11 (seq.unit e11))))
(assert (= a_184 (seq.update a_183 i12 (seq.unit e12))))
(assert (= a_185 (seq.update a_184 i16 (seq.unit e16))))
(assert (= a_186 (seq.update a_185 i6 (seq.unit e6))))
(assert (= a_187 (seq.update a_186 i19 (seq.unit e19))))
(assert (= a_188 (seq.update a_187 i4 (seq.unit e4))))
(assert (= a_189 (seq.update a_188 i14 (seq.unit e14))))
(assert (= a_190 (seq.update a_189 i5 (seq.unit e5))))
(assert (= a_191 (seq.update a_190 i9 (seq.unit e9))))
(assert (= a_192 (seq.update a_191 i18 (seq.unit e18))))
(assert (= a_193 (seq.update a_192 i20 (seq.unit e20))))
(assert (= a_194 (seq.update a_193 i13 (seq.unit e13))))
(assert (= a_195 (seq.update a_194 i15 (seq.unit e15))))
(assert (= a_196 (seq.update a_195 i2 (seq.unit e2))))
(assert (= a_197 (seq.update a_196 i8 (seq.unit e8))))
(assert (= a_198 (seq.update a_197 i7 (seq.unit e7))))
(assert (not (= i19 i20)))
(assert (not (= i18 i20)))
(assert (not (= i18 i19)))
(assert (not (= i17 i20)))
(assert (not (= i17 i19)))
(assert (not (= i17 i18)))
(assert (not (= i16 i20)))
(assert (not (= i16 i19)))
(assert (not (= i16 i18)))
(assert (not (= i16 i17)))
(assert (not (= i15 i20)))
(assert (not (= i15 i19)))
(assert (not (= i15 i18)))
(assert (not (= i15 i17)))
(assert (not (= i15 i16)))
(assert (not (= i14 i20)))
(assert (not (= i14 i19)))
(assert (not (= i14 i18)))
(assert (not (= i14 i17)))
(assert (not (= i14 i16)))
(assert (not (= i14 i15)))
(assert (not (= i13 i20)))
(assert (not (= i13 i19)))
(assert (not (= i13 i18)))
(assert (not (= i13 i17)))
(assert (not (= i13 i16)))
(assert (not (= i13 i15)))
(assert (not (= i13 i14)))
(assert (not (= i12 i20)))
(assert (not (= i12 i19)))
(assert (not (= i12 i18)))
(assert (not (= i12 i17)))
(assert (not (= i12 i16)))
(assert (not (= i12 i15)))
(assert (not (= i12 i14)))
(assert (not (= i12 i13)))
(assert (not (= i11 i20)))
(assert (not (= i11 i19)))
(assert (not (= i11 i18)))
(assert (not (= i11 i17)))
(assert (not (= i11 i16)))
(assert (not (= i11 i15)))
(assert (not (= i11 i14)))
(assert (not (= i11 i13)))
(assert (not (= i11 i12)))
(assert (not (= i10 i20)))
(assert (not (= i10 i19)))
(assert (not (= i10 i18)))
(assert (not (= i10 i17)))
(assert (not (= i10 i16)))
(assert (not (= i10 i15)))
(assert (not (= i10 i14)))
(assert (not (= i10 i13)))
(assert (not (= i10 i12)))
(assert (not (= i10 i11)))
(assert (not (= i9 i20)))
(assert (not (= i9 i19)))
(assert (not (= i9 i18)))
(assert (not (= i9 i17)))
(assert (not (= i9 i16)))
(assert (not (= i9 i15)))
(assert (not (= i9 i14)))
(assert (not (= i9 i13)))
(assert (not (= i9 i12)))
(assert (not (= i9 i11)))
(assert (not (= i9 i10)))
(assert (not (= i8 i20)))
(assert (not (= i8 i19)))
(assert (not (= i8 i18)))
(assert (not (= i8 i17)))
(assert (not (= i8 i16)))
(assert (not (= i8 i15)))
(assert (not (= i8 i14)))
(assert (not (= i8 i13)))
(assert (not (= i8 i12)))
(assert (not (= i8 i11)))
(assert (not (= i8 i10)))
(assert (not (= i8 i9)))
(assert (not (= i7 i20)))
(assert (not (= i7 i19)))
(assert (not (= i7 i18)))
(assert (not (= i7 i17)))
(assert (not (= i7 i16)))
(assert (not (= i7 i15)))
(assert (not (= i7 i14)))
(assert (not (= i7 i13)))
(assert (not (= i7 i12)))
(assert (not (= i7 i11)))
(assert (not (= i7 i10)))
(assert (not (= i7 i9)))
(assert (not (= i7 i8)))
(assert (not (= i6 i20)))
(assert (not (= i6 i19)))
(assert (not (= i6 i18)))
(assert (not (= i6 i17)))
(assert (not (= i6 i16)))
(assert (not (= i6 i15)))
(assert (not (= i6 i14)))
(assert (not (= i6 i13)))
(assert (not (= i6 i12)))
(assert (not (= i6 i11)))
(assert (not (= i6 i10)))
(assert (not (= i6 i9)))
(assert (not (= i6 i8)))
(assert (not (= i6 i7)))
(assert (not (= i5 i20)))
(assert (not (= i5 i19)))
(assert (not (= i5 i18)))
(assert (not (= i5 i17)))
(assert (not (= i5 i16)))
(assert (not (= i5 i15)))
(assert (not (= i5 i14)))
(assert (not (= i5 i13)))
(assert (not (= i5 i12)))
(assert (not (= i5 i11)))
(assert (not (= i5 i10)))
(assert (not (= i5 i9)))
(assert (not (= i5 i8)))
(assert (not (= i5 i7)))
(assert (not (= i5 i6)))
(assert (not (= i4 i20)))
(assert (not (= i4 i19)))
(assert (not (= i4 i18)))
(assert (not (= i4 i17)))
(assert (not (= i4 i16)))
(assert (not (= i4 i15)))
(assert (not (= i4 i14)))
(assert (not (= i4 i13)))
(assert (not (= i4 i12)))
(assert (not (= i4 i11)))
(assert (not (= i4 i10)))
(assert (not (= i4 i9)))
(assert (not (= i4 i8)))
(assert (not (= i4 i7)))
(assert (not (= i4 i6)))
(assert (not (= i4 i5)))
(assert (not (= i3 i20)))
(assert (not (= i3 i19)))
(assert (not (= i3 i18)))
(assert (not (= i3 i17)))
(assert (not (= i3 i16)))
(assert (not (= i3 i15)))
(assert (not (= i3 i14)))
(assert (not (= i3 i13)))
(assert (not (= i3 i12)))
(assert (not (= i3 i11)))
(assert (not (= i3 i10)))
(assert (not (= i3 i9)))
(assert (not (= i3 i8)))
(assert (not (= i3 i7)))
(assert (not (= i3 i6)))
(assert (not (= i3 i5)))
(assert (not (= i3 i4)))
(assert (not (= i2 i20)))
(assert (not (= i2 i19)))
(assert (not (= i2 i18)))
(assert (not (= i2 i17)))
(assert (not (= i2 i16)))
(assert (not (= i2 i15)))
(assert (not (= i2 i14)))
(assert (not (= i2 i13)))
(assert (not (= i2 i12)))
(assert (not (= i2 i11)))
(assert (not (= i2 i10)))
(assert (not (= i2 i9)))
(assert (not (= i2 i8)))
(assert (not (= i2 i7)))
(assert (not (= i2 i6)))
(assert (not (= i2 i5)))
(assert (not (= i2 i4)))
(assert (not (= i2 i3)))
(assert (not (= i1 i20)))
(assert (not (= i1 i19)))
(assert (not (= i1 i18)))
(assert (not (= i1 i17)))
(assert (not (= i1 i16)))
(assert (not (= i1 i15)))
(assert (not (= i1 i14)))
(assert (not (= i1 i13)))
(assert (not (= i1 i12)))
(assert (not (= i1 i11)))
(assert (not (= i1 i10)))
(assert (not (= i1 i9)))
(assert (not (= i1 i8)))
(assert (not (= i1 i7)))
(assert (not (= i1 i6)))
(assert (not (= i1 i5)))
(assert (not (= i1 i4)))
(assert (not (= i1 i3)))
(assert (not (= i1 i2)))
(assert (not (= a_179 a_198)))
(check-sat)
(exit)