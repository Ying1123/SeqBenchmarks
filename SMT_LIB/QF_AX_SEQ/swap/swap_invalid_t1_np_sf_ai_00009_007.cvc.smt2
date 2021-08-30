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
(declare-fun a_269 () (Seq Element))
(declare-fun a_271 () (Seq Element))
(declare-fun a_273 () (Seq Element))
(declare-fun a_275 () (Seq Element))
(declare-fun a_277 () (Seq Element))
(declare-fun a_279 () (Seq Element))
(declare-fun a_281 () (Seq Element))
(declare-fun a_283 () (Seq Element))
(declare-fun a_285 () (Seq Element))
(declare-fun a_287 () (Seq Element))
(declare-fun a_289 () (Seq Element))
(declare-fun a_291 () (Seq Element))
(declare-fun a_293 () (Seq Element))
(declare-fun a_295 () (Seq Element))
(declare-fun a_297 () (Seq Element))
(declare-fun a_299 () (Seq Element))
(declare-fun a_301 () (Seq Element))
(declare-fun a_303 () (Seq Element))
(declare-fun a_304 () (Seq Element))
(declare-fun a_305 () (Seq Element))
(declare-fun a_307 () (Seq Element))
(declare-fun a_309 () (Seq Element))
(declare-fun a_311 () (Seq Element))
(declare-fun a_313 () (Seq Element))
(declare-fun a_315 () (Seq Element))
(declare-fun a_317 () (Seq Element))
(declare-fun a_319 () (Seq Element))
(declare-fun a_321 () (Seq Element))
(declare-fun a_323 () (Seq Element))
(declare-fun a_325 () (Seq Element))
(declare-fun a_327 () (Seq Element))
(declare-fun a_329 () (Seq Element))
(declare-fun a_331 () (Seq Element))
(declare-fun a_333 () (Seq Element))
(declare-fun e_268 () Element)
(declare-fun e_270 () Element)
(declare-fun e_272 () Element)
(declare-fun e_274 () Element)
(declare-fun e_276 () Element)
(declare-fun e_278 () Element)
(declare-fun e_280 () Element)
(declare-fun e_282 () Element)
(declare-fun e_284 () Element)
(declare-fun e_286 () Element)
(declare-fun e_288 () Element)
(declare-fun e_290 () Element)
(declare-fun e_292 () Element)
(declare-fun e_294 () Element)
(declare-fun e_296 () Element)
(declare-fun e_298 () Element)
(declare-fun e_300 () Element)
(declare-fun e_302 () Element)
(declare-fun e_306 () Element)
(declare-fun e_308 () Element)
(declare-fun e_310 () Element)
(declare-fun e_312 () Element)
(declare-fun e_314 () Element)
(declare-fun e_316 () Element)
(declare-fun e_318 () Element)
(declare-fun e_320 () Element)
(declare-fun e_322 () Element)
(declare-fun e_324 () Element)
(declare-fun e_326 () Element)
(declare-fun e_328 () Element)
(declare-fun e_330 () Element)
(declare-fun e_332 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (= a_269 (seq.update a1 i6 (seq.unit e_268))))
(assert (= a_271 (seq.update a_269 i8 (seq.unit e_270))))
(assert (= a_273 (seq.update a_271 i3 (seq.unit e_272))))
(assert (= a_275 (seq.update a_273 i1 (seq.unit e_274))))
(assert (= a_277 (seq.update a_275 i6 (seq.unit e_276))))
(assert (= a_279 (seq.update a_277 i5 (seq.unit e_278))))
(assert (= a_281 (seq.update a_279 i6 (seq.unit e_280))))
(assert (= a_283 (seq.update a_281 i1 (seq.unit e_282))))
(assert (= a_285 (seq.update a_283 i5 (seq.unit e_284))))
(assert (= a_287 (seq.update a_285 i7 (seq.unit e_286))))
(assert (= a_289 (seq.update a_287 i7 (seq.unit e_288))))
(assert (= a_291 (seq.update a_289 i2 (seq.unit e_290))))
(assert (= a_293 (seq.update a_291 i2 (seq.unit e_292))))
(assert (= a_295 (seq.update a_293 i1 (seq.unit e_294))))
(assert (= a_297 (seq.update a_295 i8 (seq.unit e_296))))
(assert (= a_299 (seq.update a_297 i5 (seq.unit e_298))))
(assert (= a_301 (seq.update a_299 i7 (seq.unit e_300))))
(assert (= a_303 (seq.update a_301 i0 (seq.unit e_302))))
(assert (= a_304 (seq.update a_271 i1 (seq.unit e_274))))
(assert (= a_305 (seq.update a_304 i3 (seq.unit e_272))))
(assert (= a_307 (seq.update a_305 i5 (seq.unit e_306))))
(assert (= a_309 (seq.update a_307 i6 (seq.unit e_308))))
(assert (= a_311 (seq.update a_309 i1 (seq.unit e_310))))
(assert (= a_313 (seq.update a_311 i6 (seq.unit e_312))))
(assert (= a_315 (seq.update a_313 i7 (seq.unit e_314))))
(assert (= a_317 (seq.update a_315 i5 (seq.unit e_316))))
(assert (= a_319 (seq.update a_317 i7 (seq.unit e_318))))
(assert (= a_321 (seq.update a_319 i2 (seq.unit e_320))))
(assert (= a_323 (seq.update a_321 i1 (seq.unit e_322))))
(assert (= a_325 (seq.update a_323 i2 (seq.unit e_324))))
(assert (= a_327 (seq.update a_325 i8 (seq.unit e_326))))
(assert (= a_329 (seq.update a_327 i5 (seq.unit e_328))))
(assert (= a_331 (seq.update a_329 i7 (seq.unit e_330))))
(assert (= a_333 (seq.update a_331 i1 (seq.unit e_332))))
(assert (= e_268 (seq.nth a1 i8)))
(assert (= e_270 (seq.nth a1 i6)))
(assert (= e_272 (seq.nth a_271 i1)))
(assert (= e_274 (seq.nth a_271 i3)))
(assert (= e_276 (seq.nth a_275 i5)))
(assert (= e_278 (seq.nth a_275 i6)))
(assert (= e_280 (seq.nth a_279 i1)))
(assert (= e_282 (seq.nth a_279 i6)))
(assert (= e_284 (seq.nth a_283 i7)))
(assert (= e_286 (seq.nth a_283 i5)))
(assert (= e_288 (seq.nth a_287 i2)))
(assert (= e_290 (seq.nth a_287 i7)))
(assert (= e_292 (seq.nth a_291 i1)))
(assert (= e_294 (seq.nth a_291 i2)))
(assert (= e_296 (seq.nth a_295 i5)))
(assert (= e_298 (seq.nth a_295 i8)))
(assert (= e_300 (seq.nth a_299 i0)))
(assert (= e_302 (seq.nth a_299 i7)))
(assert (= e_306 (seq.nth a_305 i6)))
(assert (= e_308 (seq.nth a_305 i5)))
(assert (= e_310 (seq.nth a_309 i6)))
(assert (= e_312 (seq.nth a_309 i1)))
(assert (= e_314 (seq.nth a_313 i5)))
(assert (= e_316 (seq.nth a_313 i7)))
(assert (= e_318 (seq.nth a_317 i2)))
(assert (= e_320 (seq.nth a_317 i7)))
(assert (= e_322 (seq.nth a_321 i2)))
(assert (= e_324 (seq.nth a_321 i1)))
(assert (= e_326 (seq.nth a_325 i5)))
(assert (= e_328 (seq.nth a_325 i8)))
(assert (= e_330 (seq.nth a_329 i1)))
(assert (= e_332 (seq.nth a_329 i7)))
(assert (not (= a_303 a_333)))
(check-sat)
(exit)
