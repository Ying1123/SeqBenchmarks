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
(declare-fun a_239 () (Seq Element))
(declare-fun a_240 () (Seq Element))
(declare-fun a_241 () (Seq Element))
(declare-fun a_242 () (Seq Element))
(declare-fun a_243 () (Seq Element))
(declare-fun a_244 () (Seq Element))
(declare-fun a_245 () (Seq Element))
(declare-fun a_246 () (Seq Element))
(declare-fun a_247 () (Seq Element))
(declare-fun a_248 () (Seq Element))
(declare-fun a_249 () (Seq Element))
(declare-fun a_250 () (Seq Element))
(declare-fun a_251 () (Seq Element))
(declare-fun a_252 () (Seq Element))
(declare-fun a_253 () (Seq Element))
(declare-fun a_254 () (Seq Element))
(declare-fun a_255 () (Seq Element))
(declare-fun a_256 () (Seq Element))
(declare-fun a_257 () (Seq Element))
(declare-fun a_258 () (Seq Element))
(declare-fun a1 () (Seq Element))
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
(declare-fun i1 () Int)
(declare-fun i10 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_239 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_240 (seq.update a_239 i2 (seq.unit e2))))
(assert (= a_241 (seq.update a_240 i3 (seq.unit e3))))
(assert (= a_242 (seq.update a_241 i4 (seq.unit e4))))
(assert (= a_243 (seq.update a_242 i5 (seq.unit e5))))
(assert (= a_244 (seq.update a_243 i6 (seq.unit e6))))
(assert (= a_245 (seq.update a_244 i7 (seq.unit e7))))
(assert (= a_246 (seq.update a_245 i8 (seq.unit e8))))
(assert (= a_247 (seq.update a_246 i9 (seq.unit e9))))
(assert (= a_248 (seq.update a_247 i10 (seq.unit e10))))
(assert (= a_249 (seq.update a1 i8 (seq.unit e8))))
(assert (= a_250 (seq.update a_249 i2 (seq.unit e2))))
(assert (= a_251 (seq.update a_250 i4 (seq.unit e4))))
(assert (= a_252 (seq.update a_251 i7 (seq.unit e7))))
(assert (= a_253 (seq.update a_252 i6 (seq.unit e6))))
(assert (= a_254 (seq.update a_253 i1 (seq.unit e1))))
(assert (= a_255 (seq.update a_254 i3 (seq.unit e3))))
(assert (= a_256 (seq.update a_255 i9 (seq.unit e9))))
(assert (= a_257 (seq.update a_256 i10 (seq.unit e10))))
(assert (= a_258 (seq.update a_257 i5 (seq.unit e5))))
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