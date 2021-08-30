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
(declare-fun a_250 () (Seq Element))
(declare-fun a_252 () (Seq Element))
(declare-fun a_254 () (Seq Element))
(declare-fun a_256 () (Seq Element))
(declare-fun a_258 () (Seq Element))
(declare-fun a_260 () (Seq Element))
(declare-fun a_262 () (Seq Element))
(declare-fun a_264 () (Seq Element))
(declare-fun a_266 () (Seq Element))
(declare-fun a_268 () (Seq Element))
(declare-fun a_269 () (Seq Element))
(declare-fun a_270 () (Seq Element))
(declare-fun a_272 () (Seq Element))
(declare-fun a_274 () (Seq Element))
(declare-fun a_276 () (Seq Element))
(declare-fun a_278 () (Seq Element))
(declare-fun a_280 () (Seq Element))
(declare-fun a_282 () (Seq Element))
(declare-fun a_284 () (Seq Element))
(declare-fun a_286 () (Seq Element))
(declare-fun e_249 () Element)
(declare-fun e_251 () Element)
(declare-fun e_253 () Element)
(declare-fun e_255 () Element)
(declare-fun e_257 () Element)
(declare-fun e_259 () Element)
(declare-fun e_261 () Element)
(declare-fun e_263 () Element)
(declare-fun e_265 () Element)
(declare-fun e_267 () Element)
(declare-fun e_271 () Element)
(declare-fun e_273 () Element)
(declare-fun e_275 () Element)
(declare-fun e_277 () Element)
(declare-fun e_279 () Element)
(declare-fun e_281 () Element)
(declare-fun e_283 () Element)
(declare-fun e_285 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(assert (= a_250 (seq.update a1 i0 (seq.unit e_249))))
(assert (= a_252 (seq.update a_250 i1 (seq.unit e_251))))
(assert (= a_254 (seq.update a_252 i3 (seq.unit e_253))))
(assert (= a_256 (seq.update a_254 i2 (seq.unit e_255))))
(assert (= a_258 (seq.update a_256 i3 (seq.unit e_257))))
(assert (= a_260 (seq.update a_258 i0 (seq.unit e_259))))
(assert (= a_262 (seq.update a_260 i3 (seq.unit e_261))))
(assert (= a_264 (seq.update a_262 i0 (seq.unit e_263))))
(assert (= a_266 (seq.update a_264 i4 (seq.unit e_265))))
(assert (= a_268 (seq.update a_266 i1 (seq.unit e_267))))
(assert (= a_269 (seq.update a1 i1 (seq.unit e_251))))
(assert (= a_270 (seq.update a_269 i0 (seq.unit e_249))))
(assert (= a_272 (seq.update a_270 i3 (seq.unit e_271))))
(assert (= a_274 (seq.update a_272 i2 (seq.unit e_273))))
(assert (= a_276 (seq.update a_274 i0 (seq.unit e_275))))
(assert (= a_278 (seq.update a_276 i3 (seq.unit e_277))))
(assert (= a_280 (seq.update a_278 i3 (seq.unit e_279))))
(assert (= a_282 (seq.update a_280 i0 (seq.unit e_281))))
(assert (= a_284 (seq.update a_282 i1 (seq.unit e_283))))
(assert (= a_286 (seq.update a_284 i4 (seq.unit e_285))))
(assert (= e_249 (seq.nth a1 i1)))
(assert (= e_251 (seq.nth a1 i0)))
(assert (= e_253 (seq.nth a_252 i2)))
(assert (= e_255 (seq.nth a_252 i3)))
(assert (= e_257 (seq.nth a_256 i0)))
(assert (= e_259 (seq.nth a_256 i3)))
(assert (= e_261 (seq.nth a_260 i0)))
(assert (= e_263 (seq.nth a_260 i3)))
(assert (= e_265 (seq.nth a_264 i1)))
(assert (= e_267 (seq.nth a_264 i4)))
(assert (= e_271 (seq.nth a_270 i2)))
(assert (= e_273 (seq.nth a_270 i3)))
(assert (= e_275 (seq.nth a_274 i3)))
(assert (= e_277 (seq.nth a_274 i0)))
(assert (= e_279 (seq.nth a_278 i0)))
(assert (= e_281 (seq.nth a_278 i3)))
(assert (= e_283 (seq.nth a_282 i4)))
(assert (= e_285 (seq.nth a_282 i1)))
(assert (not (= a_268 a_286)))
(check-sat)
(exit)