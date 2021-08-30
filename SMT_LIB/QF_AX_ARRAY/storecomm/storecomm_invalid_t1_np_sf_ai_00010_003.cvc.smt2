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
(declare-fun a_239 () (Array Index Element))
(declare-fun a_240 () (Array Index Element))
(declare-fun a_241 () (Array Index Element))
(declare-fun a_242 () (Array Index Element))
(declare-fun a_243 () (Array Index Element))
(declare-fun a_244 () (Array Index Element))
(declare-fun a_245 () (Array Index Element))
(declare-fun a_246 () (Array Index Element))
(declare-fun a_247 () (Array Index Element))
(declare-fun a_248 () (Array Index Element))
(declare-fun a_249 () (Array Index Element))
(declare-fun a_250 () (Array Index Element))
(declare-fun a_251 () (Array Index Element))
(declare-fun a_252 () (Array Index Element))
(declare-fun a_253 () (Array Index Element))
(declare-fun a_254 () (Array Index Element))
(declare-fun a_255 () (Array Index Element))
(declare-fun a_256 () (Array Index Element))
(declare-fun a_257 () (Array Index Element))
(declare-fun a_258 () (Array Index Element))
(declare-fun a1 () (Array Index Element))
(declare-fun e1 () Element)
(declare-fun e10 () Element)
(declare-fun e2 () Element)
(declare-fun e3 () Element)
(declare-fun e4 () Element)
(declare-fun e5 () Element)
(declare-fun e6 () Element)
(declare-fun e7 () Element)
(declare-fun e8 () Element)
(declare-fun e9 () Element)
(declare-fun i1 () Index)
(declare-fun i10 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(declare-fun i9 () Index)
(assert (= a_239 (store a1 i1 e1)))
(assert (= a_240 (store a_239 i2 e2)))
(assert (= a_241 (store a_240 i3 e3)))
(assert (= a_242 (store a_241 i4 e4)))
(assert (= a_243 (store a_242 i5 e5)))
(assert (= a_244 (store a_243 i6 e6)))
(assert (= a_245 (store a_244 i7 e7)))
(assert (= a_246 (store a_245 i8 e8)))
(assert (= a_247 (store a_246 i9 e9)))
(assert (= a_248 (store a_247 i1 e1)))
(assert (= a_249 (store a1 i8 e8)))
(assert (= a_250 (store a_249 i2 e2)))
(assert (= a_251 (store a_250 i4 e4)))
(assert (= a_252 (store a_251 i7 e7)))
(assert (= a_253 (store a_252 i6 e6)))
(assert (= a_254 (store a_253 i1 e1)))
(assert (= a_255 (store a_254 i3 e3)))
(assert (= a_256 (store a_255 i9 e9)))
(assert (= a_257 (store a_256 i10 e10)))
(assert (= a_258 (store a_257 i5 e5)))
(assert (not (= i9 i10)))
(assert (not (= i8 i10)))
(assert (not (= i8 i9)))
(assert (not (= i7 i10)))
(assert (not (= i7 i9)))
(assert (not (= i7 i8)))
(assert (not (= i6 i10)))
(assert (not (= i6 i9)))
(assert (not (= i6 i8)))
(assert (not (= i6 i7)))
(assert (not (= i5 i10)))
(assert (not (= i5 i9)))
(assert (not (= i5 i8)))
(assert (not (= i5 i7)))
(assert (not (= i5 i6)))
(assert (not (= i4 i10)))
(assert (not (= i4 i9)))
(assert (not (= i4 i8)))
(assert (not (= i4 i7)))
(assert (not (= i4 i6)))
(assert (not (= i4 i5)))
(assert (not (= i3 i10)))
(assert (not (= i3 i9)))
(assert (not (= i3 i8)))
(assert (not (= i3 i7)))
(assert (not (= i3 i6)))
(assert (not (= i3 i5)))
(assert (not (= i3 i4)))
(assert (not (= i2 i10)))
(assert (not (= i2 i9)))
(assert (not (= i2 i8)))
(assert (not (= i2 i7)))
(assert (not (= i2 i6)))
(assert (not (= i2 i5)))
(assert (not (= i2 i4)))
(assert (not (= i2 i3)))
(assert (not (= i1 i10)))
(assert (not (= i1 i9)))
(assert (not (= i1 i8)))
(assert (not (= i1 i7)))
(assert (not (= i1 i6)))
(assert (not (= i1 i5)))
(assert (not (= i1 i4)))
(assert (not (= i1 i3)))
(assert (not (= i1 i2)))
(assert (not (= a_248 a_258)))
(check-sat)
(exit)
