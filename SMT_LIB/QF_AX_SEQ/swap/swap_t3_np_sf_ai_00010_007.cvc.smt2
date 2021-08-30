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
(declare-fun a_288 () (Seq Element))
(declare-fun a_290 () (Seq Element))
(declare-fun a_292 () (Seq Element))
(declare-fun a_294 () (Seq Element))
(declare-fun a_296 () (Seq Element))
(declare-fun a_298 () (Seq Element))
(declare-fun a_300 () (Seq Element))
(declare-fun a_302 () (Seq Element))
(declare-fun a_304 () (Seq Element))
(declare-fun a_306 () (Seq Element))
(declare-fun a_308 () (Seq Element))
(declare-fun a_310 () (Seq Element))
(declare-fun a_312 () (Seq Element))
(declare-fun a_314 () (Seq Element))
(declare-fun a_316 () (Seq Element))
(declare-fun a_318 () (Seq Element))
(declare-fun a_320 () (Seq Element))
(declare-fun a_322 () (Seq Element))
(declare-fun a_324 () (Seq Element))
(declare-fun a_326 () (Seq Element))
(declare-fun a_327 () (Seq Element))
(declare-fun a_328 () (Seq Element))
(declare-fun a_330 () (Seq Element))
(declare-fun a_332 () (Seq Element))
(declare-fun a_334 () (Seq Element))
(declare-fun a_336 () (Seq Element))
(declare-fun a_338 () (Seq Element))
(declare-fun a_340 () (Seq Element))
(declare-fun a_342 () (Seq Element))
(declare-fun a_344 () (Seq Element))
(declare-fun a_346 () (Seq Element))
(declare-fun a_348 () (Seq Element))
(declare-fun a_350 () (Seq Element))
(declare-fun a_352 () (Seq Element))
(declare-fun a_354 () (Seq Element))
(declare-fun a_356 () (Seq Element))
(declare-fun a_358 () (Seq Element))
(declare-fun a_360 () (Seq Element))
(declare-fun a_362 () (Seq Element))
(declare-fun a_364 () (Seq Element))
(declare-fun e_287 () Element)
(declare-fun e_289 () Element)
(declare-fun e_291 () Element)
(declare-fun e_293 () Element)
(declare-fun e_295 () Element)
(declare-fun e_297 () Element)
(declare-fun e_299 () Element)
(declare-fun e_301 () Element)
(declare-fun e_303 () Element)
(declare-fun e_305 () Element)
(declare-fun e_307 () Element)
(declare-fun e_309 () Element)
(declare-fun e_311 () Element)
(declare-fun e_313 () Element)
(declare-fun e_315 () Element)
(declare-fun e_317 () Element)
(declare-fun e_319 () Element)
(declare-fun e_321 () Element)
(declare-fun e_323 () Element)
(declare-fun e_325 () Element)
(declare-fun e_329 () Element)
(declare-fun e_331 () Element)
(declare-fun e_333 () Element)
(declare-fun e_335 () Element)
(declare-fun e_337 () Element)
(declare-fun e_339 () Element)
(declare-fun e_341 () Element)
(declare-fun e_343 () Element)
(declare-fun e_345 () Element)
(declare-fun e_347 () Element)
(declare-fun e_349 () Element)
(declare-fun e_351 () Element)
(declare-fun e_353 () Element)
(declare-fun e_355 () Element)
(declare-fun e_357 () Element)
(declare-fun e_359 () Element)
(declare-fun e_361 () Element)
(declare-fun e_363 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i9 () Int)
(assert (= a_288 (seq.update a1 i4 (seq.unit e_287))))
(assert (= a_290 (seq.update a_288 i3 (seq.unit e_289))))
(assert (= a_292 (seq.update a_290 i5 (seq.unit e_291))))
(assert (= a_294 (seq.update a_292 i6 (seq.unit e_293))))
(assert (= a_296 (seq.update a_294 i4 (seq.unit e_295))))
(assert (= a_298 (seq.update a_296 i1 (seq.unit e_297))))
(assert (= a_300 (seq.update a_298 i9 (seq.unit e_299))))
(assert (= a_302 (seq.update a_300 i0 (seq.unit e_301))))
(assert (= a_304 (seq.update a_302 i7 (seq.unit e_303))))
(assert (= a_306 (seq.update a_304 i9 (seq.unit e_305))))
(assert (= a_308 (seq.update a_306 i1 (seq.unit e_307))))
(assert (= a_310 (seq.update a_308 i9 (seq.unit e_309))))
(assert (= a_312 (seq.update a_310 i7 (seq.unit e_311))))
(assert (= a_314 (seq.update a_312 i5 (seq.unit e_313))))
(assert (= a_316 (seq.update a_314 i9 (seq.unit e_315))))
(assert (= a_318 (seq.update a_316 i6 (seq.unit e_317))))
(assert (= a_320 (seq.update a_318 i6 (seq.unit e_319))))
(assert (= a_322 (seq.update a_320 i7 (seq.unit e_321))))
(assert (= a_324 (seq.update a_322 i0 (seq.unit e_323))))
(assert (= a_326 (seq.update a_324 i3 (seq.unit e_325))))
(assert (= a_327 (seq.update a1 i3 (seq.unit e_289))))
(assert (= a_328 (seq.update a_327 i4 (seq.unit e_287))))
(assert (= a_330 (seq.update a_328 i6 (seq.unit e_329))))
(assert (= a_332 (seq.update a_330 i5 (seq.unit e_331))))
(assert (= a_334 (seq.update a_332 i1 (seq.unit e_333))))
(assert (= a_336 (seq.update a_334 i4 (seq.unit e_335))))
(assert (= a_338 (seq.update a_336 i9 (seq.unit e_337))))
(assert (= a_340 (seq.update a_338 i0 (seq.unit e_339))))
(assert (= a_342 (seq.update a_340 i9 (seq.unit e_341))))
(assert (= a_344 (seq.update a_342 i7 (seq.unit e_343))))
(assert (= a_346 (seq.update a_344 i1 (seq.unit e_345))))
(assert (= a_348 (seq.update a_346 i9 (seq.unit e_347))))
(assert (= a_350 (seq.update a_348 i7 (seq.unit e_349))))
(assert (= a_352 (seq.update a_350 i5 (seq.unit e_351))))
(assert (= a_354 (seq.update a_352 i9 (seq.unit e_353))))
(assert (= a_356 (seq.update a_354 i6 (seq.unit e_355))))
(assert (= a_358 (seq.update a_356 i6 (seq.unit e_357))))
(assert (= a_360 (seq.update a_358 i7 (seq.unit e_359))))
(assert (= a_362 (seq.update a_360 i0 (seq.unit e_361))))
(assert (= a_364 (seq.update a_362 i3 (seq.unit e_363))))
(assert (= e_287 (seq.nth a1 i3)))
(assert (= e_289 (seq.nth a1 i4)))
(assert (= e_291 (seq.nth a_290 i6)))
(assert (= e_293 (seq.nth a_290 i5)))
(assert (= e_295 (seq.nth a_294 i1)))
(assert (= e_297 (seq.nth a_294 i4)))
(assert (= e_299 (seq.nth a_298 i0)))
(assert (= e_301 (seq.nth a_298 i9)))
(assert (= e_303 (seq.nth a_302 i9)))
(assert (= e_305 (seq.nth a_302 i7)))
(assert (= e_307 (seq.nth a_306 i9)))
(assert (= e_309 (seq.nth a_306 i1)))
(assert (= e_311 (seq.nth a_310 i5)))
(assert (= e_313 (seq.nth a_310 i7)))
(assert (= e_315 (seq.nth a_314 i6)))
(assert (= e_317 (seq.nth a_314 i9)))
(assert (= e_319 (seq.nth a_318 i7)))
(assert (= e_321 (seq.nth a_318 i6)))
(assert (= e_323 (seq.nth a_322 i3)))
(assert (= e_325 (seq.nth a_322 i0)))
(assert (= e_329 (seq.nth a_328 i5)))
(assert (= e_331 (seq.nth a_328 i6)))
(assert (= e_333 (seq.nth a_332 i4)))
(assert (= e_335 (seq.nth a_332 i1)))
(assert (= e_337 (seq.nth a_336 i0)))
(assert (= e_339 (seq.nth a_336 i9)))
(assert (= e_341 (seq.nth a_340 i7)))
(assert (= e_343 (seq.nth a_340 i9)))
(assert (= e_345 (seq.nth a_344 i9)))
(assert (= e_347 (seq.nth a_344 i1)))
(assert (= e_349 (seq.nth a_348 i5)))
(assert (= e_351 (seq.nth a_348 i7)))
(assert (= e_353 (seq.nth a_352 i6)))
(assert (= e_355 (seq.nth a_352 i9)))
(assert (= e_357 (seq.nth a_356 i7)))
(assert (= e_359 (seq.nth a_356 i6)))
(assert (= e_361 (seq.nth a_360 i3)))
(assert (= e_363 (seq.nth a_360 i0)))
(assert (not (= a_326 a_364)))
(check-sat)
(exit)
