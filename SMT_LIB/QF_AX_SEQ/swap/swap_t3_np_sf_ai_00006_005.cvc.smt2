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
(declare-fun a_317 () (Seq Element))
(declare-fun a_319 () (Seq Element))
(declare-fun a_321 () (Seq Element))
(declare-fun a_323 () (Seq Element))
(declare-fun a_325 () (Seq Element))
(declare-fun a_327 () (Seq Element))
(declare-fun a_329 () (Seq Element))
(declare-fun a_331 () (Seq Element))
(declare-fun a_333 () (Seq Element))
(declare-fun a_335 () (Seq Element))
(declare-fun a_337 () (Seq Element))
(declare-fun a_339 () (Seq Element))
(declare-fun a_340 () (Seq Element))
(declare-fun a_341 () (Seq Element))
(declare-fun a_343 () (Seq Element))
(declare-fun a_345 () (Seq Element))
(declare-fun a_347 () (Seq Element))
(declare-fun a_349 () (Seq Element))
(declare-fun a_351 () (Seq Element))
(declare-fun a_353 () (Seq Element))
(declare-fun a_355 () (Seq Element))
(declare-fun a_357 () (Seq Element))
(declare-fun a_359 () (Seq Element))
(declare-fun a_361 () (Seq Element))
(declare-fun e_316 () Element)
(declare-fun e_318 () Element)
(declare-fun e_320 () Element)
(declare-fun e_322 () Element)
(declare-fun e_324 () Element)
(declare-fun e_326 () Element)
(declare-fun e_328 () Element)
(declare-fun e_330 () Element)
(declare-fun e_332 () Element)
(declare-fun e_334 () Element)
(declare-fun e_336 () Element)
(declare-fun e_338 () Element)
(declare-fun e_342 () Element)
(declare-fun e_344 () Element)
(declare-fun e_346 () Element)
(declare-fun e_348 () Element)
(declare-fun e_350 () Element)
(declare-fun e_352 () Element)
(declare-fun e_354 () Element)
(declare-fun e_356 () Element)
(declare-fun e_358 () Element)
(declare-fun e_360 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(assert (= a_317 (seq.update a1 i5 (seq.unit e_316))))
(assert (= a_319 (seq.update a_317 i3 (seq.unit e_318))))
(assert (= a_321 (seq.update a_319 i0 (seq.unit e_320))))
(assert (= a_323 (seq.update a_321 i1 (seq.unit e_322))))
(assert (= a_325 (seq.update a_323 i1 (seq.unit e_324))))
(assert (= a_327 (seq.update a_325 i4 (seq.unit e_326))))
(assert (= a_329 (seq.update a_327 i4 (seq.unit e_328))))
(assert (= a_331 (seq.update a_329 i0 (seq.unit e_330))))
(assert (= a_333 (seq.update a_331 i4 (seq.unit e_332))))
(assert (= a_335 (seq.update a_333 i5 (seq.unit e_334))))
(assert (= a_337 (seq.update a_335 i2 (seq.unit e_336))))
(assert (= a_339 (seq.update a_337 i0 (seq.unit e_338))))
(assert (= a_340 (seq.update a1 i3 (seq.unit e_318))))
(assert (= a_341 (seq.update a_340 i5 (seq.unit e_316))))
(assert (= a_343 (seq.update a_341 i1 (seq.unit e_342))))
(assert (= a_345 (seq.update a_343 i0 (seq.unit e_344))))
(assert (= a_347 (seq.update a_345 i4 (seq.unit e_346))))
(assert (= a_349 (seq.update a_347 i1 (seq.unit e_348))))
(assert (= a_351 (seq.update a_349 i4 (seq.unit e_350))))
(assert (= a_353 (seq.update a_351 i0 (seq.unit e_352))))
(assert (= a_355 (seq.update a_353 i4 (seq.unit e_354))))
(assert (= a_357 (seq.update a_355 i5 (seq.unit e_356))))
(assert (= a_359 (seq.update a_357 i0 (seq.unit e_358))))
(assert (= a_361 (seq.update a_359 i2 (seq.unit e_360))))
(assert (= e_316 (seq.nth a1 i3)))
(assert (= e_318 (seq.nth a1 i5)))
(assert (= e_320 (seq.nth a_319 i1)))
(assert (= e_322 (seq.nth a_319 i0)))
(assert (= e_324 (seq.nth a_323 i4)))
(assert (= e_326 (seq.nth a_323 i1)))
(assert (= e_328 (seq.nth a_327 i0)))
(assert (= e_330 (seq.nth a_327 i4)))
(assert (= e_332 (seq.nth a_331 i5)))
(assert (= e_334 (seq.nth a_331 i4)))
(assert (= e_336 (seq.nth a_335 i0)))
(assert (= e_338 (seq.nth a_335 i2)))
(assert (= e_342 (seq.nth a_341 i0)))
(assert (= e_344 (seq.nth a_341 i1)))
(assert (= e_346 (seq.nth a_345 i1)))
(assert (= e_348 (seq.nth a_345 i4)))
(assert (= e_350 (seq.nth a_349 i0)))
(assert (= e_352 (seq.nth a_349 i4)))
(assert (= e_354 (seq.nth a_353 i5)))
(assert (= e_356 (seq.nth a_353 i4)))
(assert (= e_358 (seq.nth a_357 i2)))
(assert (= e_360 (seq.nth a_357 i0)))
(assert (not (= a_339 a_361)))
(check-sat)
(exit)