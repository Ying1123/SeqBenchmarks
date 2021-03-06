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
(declare-fun a_251 () (Seq Element))
(declare-fun a_253 () (Seq Element))
(declare-fun a_255 () (Seq Element))
(declare-fun a_257 () (Seq Element))
(declare-fun a_259 () (Seq Element))
(declare-fun a_261 () (Seq Element))
(declare-fun a_263 () (Seq Element))
(declare-fun a_265 () (Seq Element))
(declare-fun a_266 () (Seq Element))
(declare-fun a_267 () (Seq Element))
(declare-fun a_269 () (Seq Element))
(declare-fun a_271 () (Seq Element))
(declare-fun a_273 () (Seq Element))
(declare-fun a_275 () (Seq Element))
(declare-fun e_250 () Element)
(declare-fun e_252 () Element)
(declare-fun e_254 () Element)
(declare-fun e_256 () Element)
(declare-fun e_258 () Element)
(declare-fun e_260 () Element)
(declare-fun e_262 () Element)
(declare-fun e_264 () Element)
(declare-fun e_268 () Element)
(declare-fun e_270 () Element)
(declare-fun e_272 () Element)
(declare-fun e_274 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(assert (= a_251 (seq.update a1 i2 (seq.unit e_250))))
(assert (= a_253 (seq.update a_251 i0 (seq.unit e_252))))
(assert (= a_255 (seq.update a_253 i0 (seq.unit e_254))))
(assert (= a_257 (seq.update a_255 i2 (seq.unit e_256))))
(assert (= a_259 (seq.update a_257 i3 (seq.unit e_258))))
(assert (= a_261 (seq.update a_259 i2 (seq.unit e_260))))
(assert (= a_263 (seq.update a_261 i1 (seq.unit e_262))))
(assert (= a_265 (seq.update a_263 i0 (seq.unit e_264))))
(assert (= a_266 (seq.update a_253 i2 (seq.unit e_256))))
(assert (= a_267 (seq.update a_266 i0 (seq.unit e_254))))
(assert (= a_269 (seq.update a_267 i2 (seq.unit e_268))))
(assert (= a_271 (seq.update a_269 i3 (seq.unit e_270))))
(assert (= a_273 (seq.update a_271 i1 (seq.unit e_272))))
(assert (= a_275 (seq.update a_273 i0 (seq.unit e_274))))
(assert (= e_250 (seq.nth a1 i0)))
(assert (= e_252 (seq.nth a1 i2)))
(assert (= e_254 (seq.nth a_253 i2)))
(assert (= e_256 (seq.nth a_253 i0)))
(assert (= e_258 (seq.nth a_257 i2)))
(assert (= e_260 (seq.nth a_257 i3)))
(assert (= e_262 (seq.nth a_261 i0)))
(assert (= e_264 (seq.nth a_261 i1)))
(assert (= e_268 (seq.nth a_267 i3)))
(assert (= e_270 (seq.nth a_267 i2)))
(assert (= e_272 (seq.nth a_271 i0)))
(assert (= e_274 (seq.nth a_271 i1)))
(assert (not (= a_265 a_275)))
(check-sat)
(exit)
