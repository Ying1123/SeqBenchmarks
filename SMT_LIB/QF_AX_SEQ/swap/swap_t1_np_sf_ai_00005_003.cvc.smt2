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
(declare-fun a_381 () (Seq Element))
(declare-fun a_382 () (Seq Element))
(declare-fun a_384 () (Seq Element))
(declare-fun a_385 () (Seq Element))
(declare-fun a_387 () (Seq Element))
(declare-fun a_389 () (Seq Element))
(declare-fun a_391 () (Seq Element))
(declare-fun a_392 () (Seq Element))
(declare-fun a_394 () (Seq Element))
(declare-fun a_396 () (Seq Element))
(declare-fun a_397 () (Seq Element))
(declare-fun a_398 () (Seq Element))
(declare-fun a_400 () (Seq Element))
(declare-fun a_401 () (Seq Element))
(declare-fun a_403 () (Seq Element))
(declare-fun a_405 () (Seq Element))
(declare-fun e_380 () Element)
(declare-fun e_383 () Element)
(declare-fun e_386 () Element)
(declare-fun e_388 () Element)
(declare-fun e_390 () Element)
(declare-fun e_393 () Element)
(declare-fun e_395 () Element)
(declare-fun e_399 () Element)
(declare-fun e_402 () Element)
(declare-fun e_404 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(assert (= a_381 (seq.update a1 i3 (seq.unit e_380))))
(assert (= a_382 (seq.update a_381 i3 (seq.unit e_380))))
(assert (= a_384 (seq.update a_382 i1 (seq.unit e_383))))
(assert (= a_385 (seq.update a_384 i1 (seq.unit e_383))))
(assert (= a_387 (seq.update a_385 i4 (seq.unit e_386))))
(assert (= a_389 (seq.update a_387 i2 (seq.unit e_388))))
(assert (= a_391 (seq.update a_389 i3 (seq.unit e_390))))
(assert (= a_392 (seq.update a_391 i3 (seq.unit e_390))))
(assert (= a_394 (seq.update a_392 i1 (seq.unit e_393))))
(assert (= a_396 (seq.update a_394 i3 (seq.unit e_395))))
(assert (= a_397 (seq.update a_385 i2 (seq.unit e_388))))
(assert (= a_398 (seq.update a_397 i4 (seq.unit e_386))))
(assert (= a_400 (seq.update a_398 i3 (seq.unit e_399))))
(assert (= a_401 (seq.update a_400 i3 (seq.unit e_399))))
(assert (= a_403 (seq.update a_401 i3 (seq.unit e_402))))
(assert (= a_405 (seq.update a_403 i1 (seq.unit e_404))))
(assert (= e_380 (seq.nth a1 i3)))
(assert (= e_383 (seq.nth a_382 i1)))
(assert (= e_386 (seq.nth a_385 i2)))
(assert (= e_388 (seq.nth a_385 i4)))
(assert (= e_390 (seq.nth a_389 i3)))
(assert (= e_393 (seq.nth a_392 i3)))
(assert (= e_395 (seq.nth a_392 i1)))
(assert (= e_399 (seq.nth a_398 i3)))
(assert (= e_402 (seq.nth a_401 i1)))
(assert (= e_404 (seq.nth a_401 i3)))
(assert (not (= a_396 a_405)))
(check-sat)
(exit)
