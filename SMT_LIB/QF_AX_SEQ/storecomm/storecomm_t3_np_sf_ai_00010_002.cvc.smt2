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
(declare-fun a_278 () (Seq Element))
(declare-fun a_279 () (Seq Element))
(declare-fun a_280 () (Seq Element))
(declare-fun a_281 () (Seq Element))
(declare-fun a_282 () (Seq Element))
(declare-fun a_283 () (Seq Element))
(declare-fun a_284 () (Seq Element))
(declare-fun a_285 () (Seq Element))
(declare-fun a_286 () (Seq Element))
(declare-fun a_287 () (Seq Element))
(declare-fun a_288 () (Seq Element))
(declare-fun a_289 () (Seq Element))
(declare-fun a_290 () (Seq Element))
(declare-fun a_291 () (Seq Element))
(declare-fun a_292 () (Seq Element))
(declare-fun a_293 () (Seq Element))
(declare-fun a_294 () (Seq Element))
(declare-fun a_295 () (Seq Element))
(declare-fun a_296 () (Seq Element))
(declare-fun a_297 () (Seq Element))
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
(assert (= a_278 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_279 (seq.update a_278 i2 (seq.unit e2))))
(assert (= a_280 (seq.update a_279 i3 (seq.unit e3))))
(assert (= a_281 (seq.update a_280 i4 (seq.unit e4))))
(assert (= a_282 (seq.update a_281 i5 (seq.unit e5))))
(assert (= a_283 (seq.update a_282 i6 (seq.unit e6))))
(assert (= a_284 (seq.update a_283 i7 (seq.unit e7))))
(assert (= a_285 (seq.update a_284 i8 (seq.unit e8))))
(assert (= a_286 (seq.update a_285 i9 (seq.unit e9))))
(assert (= a_287 (seq.update a_286 i10 (seq.unit e10))))
(assert (= a_288 (seq.update a1 i10 (seq.unit e10))))
(assert (= a_289 (seq.update a_288 i6 (seq.unit e6))))
(assert (= a_290 (seq.update a_289 i9 (seq.unit e9))))
(assert (= a_291 (seq.update a_290 i7 (seq.unit e7))))
(assert (= a_292 (seq.update a_291 i3 (seq.unit e3))))
(assert (= a_293 (seq.update a_292 i4 (seq.unit e4))))
(assert (= a_294 (seq.update a_293 i5 (seq.unit e5))))
(assert (= a_295 (seq.update a_294 i2 (seq.unit e2))))
(assert (= a_296 (seq.update a_295 i1 (seq.unit e1))))
(assert (= a_297 (seq.update a_296 i8 (seq.unit e8))))
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
(assert (not (= a_287 a_297)))
(check-sat)
(exit)
