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
(set-info :status unsat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_270 () (Array Index Element))
(declare-fun a_272 () (Array Index Element))
(declare-fun a_274 () (Array Index Element))
(declare-fun a_276 () (Array Index Element))
(declare-fun a_278 () (Array Index Element))
(declare-fun a_280 () (Array Index Element))
(declare-fun a_282 () (Array Index Element))
(declare-fun a_283 () (Array Index Element))
(declare-fun a_285 () (Array Index Element))
(declare-fun a_287 () (Array Index Element))
(declare-fun a_289 () (Array Index Element))
(declare-fun a_291 () (Array Index Element))
(declare-fun a_293 () (Array Index Element))
(declare-fun a_295 () (Array Index Element))
(declare-fun a_296 () (Array Index Element))
(declare-fun a_297 () (Array Index Element))
(declare-fun a_299 () (Array Index Element))
(declare-fun a_301 () (Array Index Element))
(declare-fun a_303 () (Array Index Element))
(declare-fun a_304 () (Array Index Element))
(declare-fun a_306 () (Array Index Element))
(declare-fun a_308 () (Array Index Element))
(declare-fun a_310 () (Array Index Element))
(declare-fun a_312 () (Array Index Element))
(declare-fun a_314 () (Array Index Element))
(declare-fun a_316 () (Array Index Element))
(declare-fun e_269 () Element)
(declare-fun e_271 () Element)
(declare-fun e_273 () Element)
(declare-fun e_275 () Element)
(declare-fun e_277 () Element)
(declare-fun e_279 () Element)
(declare-fun e_281 () Element)
(declare-fun e_284 () Element)
(declare-fun e_286 () Element)
(declare-fun e_288 () Element)
(declare-fun e_290 () Element)
(declare-fun e_292 () Element)
(declare-fun e_294 () Element)
(declare-fun e_298 () Element)
(declare-fun e_300 () Element)
(declare-fun e_302 () Element)
(declare-fun e_305 () Element)
(declare-fun e_307 () Element)
(declare-fun e_309 () Element)
(declare-fun e_311 () Element)
(declare-fun e_313 () Element)
(declare-fun e_315 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(assert (= a_270 (store a1 i6 e_269)))
(assert (= a_272 (store a_270 i3 e_271)))
(assert (= a_274 (store a_272 i1 e_273)))
(assert (= a_276 (store a_274 i4 e_275)))
(assert (= a_278 (store a_276 i2 e_277)))
(assert (= a_280 (store a_278 i6 e_279)))
(assert (= a_282 (store a_280 i4 e_281)))
(assert (= a_283 (store a_282 i4 e_281)))
(assert (= a_285 (store a_283 i0 e_284)))
(assert (= a_287 (store a_285 i2 e_286)))
(assert (= a_289 (store a_287 i2 e_288)))
(assert (= a_291 (store a_289 i6 e_290)))
(assert (= a_293 (store a_291 i5 e_292)))
(assert (= a_295 (store a_293 i3 e_294)))
(assert (= a_296 (store a_272 i4 e_275)))
(assert (= a_297 (store a_296 i1 e_273)))
(assert (= a_299 (store a_297 i6 e_298)))
(assert (= a_301 (store a_299 i2 e_300)))
(assert (= a_303 (store a_301 i4 e_302)))
(assert (= a_304 (store a_303 i4 e_302)))
(assert (= a_306 (store a_304 i0 e_305)))
(assert (= a_308 (store a_306 i2 e_307)))
(assert (= a_310 (store a_308 i6 e_309)))
(assert (= a_312 (store a_310 i2 e_311)))
(assert (= a_314 (store a_312 i5 e_313)))
(assert (= a_316 (store a_314 i3 e_315)))
(assert (= e_269 (select a1 i3)))
(assert (= e_271 (select a1 i6)))
(assert (= e_273 (select a_272 i4)))
(assert (= e_275 (select a_272 i1)))
(assert (= e_277 (select a_276 i6)))
(assert (= e_279 (select a_276 i2)))
(assert (= e_281 (select a_280 i4)))
(assert (= e_284 (select a_283 i2)))
(assert (= e_286 (select a_283 i0)))
(assert (= e_288 (select a_287 i6)))
(assert (= e_290 (select a_287 i2)))
(assert (= e_292 (select a_291 i3)))
(assert (= e_294 (select a_291 i5)))
(assert (= e_298 (select a_297 i2)))
(assert (= e_300 (select a_297 i6)))
(assert (= e_302 (select a_301 i4)))
(assert (= e_305 (select a_304 i2)))
(assert (= e_307 (select a_304 i0)))
(assert (= e_309 (select a_308 i2)))
(assert (= e_311 (select a_308 i6)))
(assert (= e_313 (select a_312 i3)))
(assert (= e_315 (select a_312 i5)))
(assert (not (= a_295 a_316)))
(check-sat)
(exit)
