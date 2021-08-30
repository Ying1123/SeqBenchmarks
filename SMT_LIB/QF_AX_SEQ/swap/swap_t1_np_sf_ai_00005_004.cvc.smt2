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
(declare-fun a_318 () (Seq Element))
(declare-fun a_320 () (Seq Element))
(declare-fun a_322 () (Seq Element))
(declare-fun a_323 () (Seq Element))
(declare-fun a_325 () (Seq Element))
(declare-fun a_327 () (Seq Element))
(declare-fun a_329 () (Seq Element))
(declare-fun a_331 () (Seq Element))
(declare-fun a_333 () (Seq Element))
(declare-fun a_335 () (Seq Element))
(declare-fun a_336 () (Seq Element))
(declare-fun a_337 () (Seq Element))
(declare-fun a_339 () (Seq Element))
(declare-fun a_340 () (Seq Element))
(declare-fun a_342 () (Seq Element))
(declare-fun a_344 () (Seq Element))
(declare-fun a_346 () (Seq Element))
(declare-fun a_348 () (Seq Element))
(declare-fun a_350 () (Seq Element))
(declare-fun a_352 () (Seq Element))
(declare-fun e_317 () Element)
(declare-fun e_319 () Element)
(declare-fun e_321 () Element)
(declare-fun e_324 () Element)
(declare-fun e_326 () Element)
(declare-fun e_328 () Element)
(declare-fun e_330 () Element)
(declare-fun e_332 () Element)
(declare-fun e_334 () Element)
(declare-fun e_338 () Element)
(declare-fun e_341 () Element)
(declare-fun e_343 () Element)
(declare-fun e_345 () Element)
(declare-fun e_347 () Element)
(declare-fun e_349 () Element)
(declare-fun e_351 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(assert (= a_318 (seq.update a1 i3 (seq.unit e_317))))
(assert (= a_320 (seq.update a_318 i4 (seq.unit e_319))))
(assert (= a_322 (seq.update a_320 i3 (seq.unit e_321))))
(assert (= a_323 (seq.update a_322 i3 (seq.unit e_321))))
(assert (= a_325 (seq.update a_323 i1 (seq.unit e_324))))
(assert (= a_327 (seq.update a_325 i2 (seq.unit e_326))))
(assert (= a_329 (seq.update a_327 i1 (seq.unit e_328))))
(assert (= a_331 (seq.update a_329 i2 (seq.unit e_330))))
(assert (= a_333 (seq.update a_331 i4 (seq.unit e_332))))
(assert (= a_335 (seq.update a_333 i0 (seq.unit e_334))))
(assert (= a_336 (seq.update a1 i4 (seq.unit e_319))))
(assert (= a_337 (seq.update a_336 i3 (seq.unit e_317))))
(assert (= a_339 (seq.update a_337 i3 (seq.unit e_338))))
(assert (= a_340 (seq.update a_339 i3 (seq.unit e_338))))
(assert (= a_342 (seq.update a_340 i2 (seq.unit e_341))))
(assert (= a_344 (seq.update a_342 i1 (seq.unit e_343))))
(assert (= a_346 (seq.update a_344 i2 (seq.unit e_345))))
(assert (= a_348 (seq.update a_346 i1 (seq.unit e_347))))
(assert (= a_350 (seq.update a_348 i4 (seq.unit e_349))))
(assert (= a_352 (seq.update a_350 i0 (seq.unit e_351))))
(assert (= e_317 (seq.nth a1 i4)))
(assert (= e_319 (seq.nth a1 i3)))
(assert (= e_321 (seq.nth a_320 i3)))
(assert (= e_324 (seq.nth a_323 i2)))
(assert (= e_326 (seq.nth a_323 i1)))
(assert (= e_328 (seq.nth a_327 i2)))
(assert (= e_330 (seq.nth a_327 i1)))
(assert (= e_332 (seq.nth a_331 i0)))
(assert (= e_334 (seq.nth a_331 i4)))
(assert (= e_338 (seq.nth a_337 i3)))
(assert (= e_341 (seq.nth a_340 i1)))
(assert (= e_343 (seq.nth a_340 i2)))
(assert (= e_345 (seq.nth a_344 i1)))
(assert (= e_347 (seq.nth a_344 i2)))
(assert (= e_349 (seq.nth a_348 i0)))
(assert (= e_351 (seq.nth a_348 i4)))
(assert (not (= a_335 a_352)))
(check-sat)
(exit)
