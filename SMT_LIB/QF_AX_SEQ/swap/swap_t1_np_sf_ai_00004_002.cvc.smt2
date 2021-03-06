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
(declare-fun a_344 () (Seq Element))
(declare-fun a_346 () (Seq Element))
(declare-fun a_348 () (Seq Element))
(declare-fun a_350 () (Seq Element))
(declare-fun a_352 () (Seq Element))
(declare-fun a_354 () (Seq Element))
(declare-fun a_356 () (Seq Element))
(declare-fun a_358 () (Seq Element))
(declare-fun a_359 () (Seq Element))
(declare-fun a_360 () (Seq Element))
(declare-fun a_362 () (Seq Element))
(declare-fun a_364 () (Seq Element))
(declare-fun a_366 () (Seq Element))
(declare-fun a_368 () (Seq Element))
(declare-fun e_343 () Element)
(declare-fun e_345 () Element)
(declare-fun e_347 () Element)
(declare-fun e_349 () Element)
(declare-fun e_351 () Element)
(declare-fun e_353 () Element)
(declare-fun e_355 () Element)
(declare-fun e_357 () Element)
(declare-fun e_361 () Element)
(declare-fun e_363 () Element)
(declare-fun e_365 () Element)
(declare-fun e_367 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(assert (= a_344 (seq.update a1 i1 (seq.unit e_343))))
(assert (= a_346 (seq.update a_344 i3 (seq.unit e_345))))
(assert (= a_348 (seq.update a_346 i0 (seq.unit e_347))))
(assert (= a_350 (seq.update a_348 i2 (seq.unit e_349))))
(assert (= a_352 (seq.update a_350 i2 (seq.unit e_351))))
(assert (= a_354 (seq.update a_352 i1 (seq.unit e_353))))
(assert (= a_356 (seq.update a_354 i2 (seq.unit e_355))))
(assert (= a_358 (seq.update a_356 i0 (seq.unit e_357))))
(assert (= a_359 (seq.update a_346 i2 (seq.unit e_349))))
(assert (= a_360 (seq.update a_359 i0 (seq.unit e_347))))
(assert (= a_362 (seq.update a_360 i1 (seq.unit e_361))))
(assert (= a_364 (seq.update a_362 i2 (seq.unit e_363))))
(assert (= a_366 (seq.update a_364 i2 (seq.unit e_365))))
(assert (= a_368 (seq.update a_366 i0 (seq.unit e_367))))
(assert (= e_343 (seq.nth a1 i3)))
(assert (= e_345 (seq.nth a1 i1)))
(assert (= e_347 (seq.nth a_346 i2)))
(assert (= e_349 (seq.nth a_346 i0)))
(assert (= e_351 (seq.nth a_350 i1)))
(assert (= e_353 (seq.nth a_350 i2)))
(assert (= e_355 (seq.nth a_354 i0)))
(assert (= e_357 (seq.nth a_354 i2)))
(assert (= e_361 (seq.nth a_360 i2)))
(assert (= e_363 (seq.nth a_360 i1)))
(assert (= e_365 (seq.nth a_364 i0)))
(assert (= e_367 (seq.nth a_364 i2)))
(assert (not (= a_358 a_368)))
(check-sat)
(exit)
