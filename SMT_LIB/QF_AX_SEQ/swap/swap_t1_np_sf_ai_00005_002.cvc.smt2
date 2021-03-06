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
(declare-fun a_441 () (Seq Element))
(declare-fun a_443 () (Seq Element))
(declare-fun a_445 () (Seq Element))
(declare-fun a_447 () (Seq Element))
(declare-fun a_449 () (Seq Element))
(declare-fun a_451 () (Seq Element))
(declare-fun a_453 () (Seq Element))
(declare-fun a_455 () (Seq Element))
(declare-fun a_457 () (Seq Element))
(declare-fun a_459 () (Seq Element))
(declare-fun a_460 () (Seq Element))
(declare-fun a_461 () (Seq Element))
(declare-fun a_463 () (Seq Element))
(declare-fun a_465 () (Seq Element))
(declare-fun a_467 () (Seq Element))
(declare-fun a_469 () (Seq Element))
(declare-fun a_471 () (Seq Element))
(declare-fun a_473 () (Seq Element))
(declare-fun a_475 () (Seq Element))
(declare-fun a_477 () (Seq Element))
(declare-fun e_440 () Element)
(declare-fun e_442 () Element)
(declare-fun e_444 () Element)
(declare-fun e_446 () Element)
(declare-fun e_448 () Element)
(declare-fun e_450 () Element)
(declare-fun e_452 () Element)
(declare-fun e_454 () Element)
(declare-fun e_456 () Element)
(declare-fun e_458 () Element)
(declare-fun e_462 () Element)
(declare-fun e_464 () Element)
(declare-fun e_466 () Element)
(declare-fun e_468 () Element)
(declare-fun e_470 () Element)
(declare-fun e_472 () Element)
(declare-fun e_474 () Element)
(declare-fun e_476 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i4 () Int)
(assert (= a_441 (seq.update a1 i2 (seq.unit e_440))))
(assert (= a_443 (seq.update a_441 i0 (seq.unit e_442))))
(assert (= a_445 (seq.update a_443 i1 (seq.unit e_444))))
(assert (= a_447 (seq.update a_445 i2 (seq.unit e_446))))
(assert (= a_449 (seq.update a_447 i4 (seq.unit e_448))))
(assert (= a_451 (seq.update a_449 i2 (seq.unit e_450))))
(assert (= a_453 (seq.update a_451 i4 (seq.unit e_452))))
(assert (= a_455 (seq.update a_453 i1 (seq.unit e_454))))
(assert (= a_457 (seq.update a_455 i0 (seq.unit e_456))))
(assert (= a_459 (seq.update a_457 i2 (seq.unit e_458))))
(assert (= a_460 (seq.update a1 i0 (seq.unit e_442))))
(assert (= a_461 (seq.update a_460 i2 (seq.unit e_440))))
(assert (= a_463 (seq.update a_461 i2 (seq.unit e_462))))
(assert (= a_465 (seq.update a_463 i1 (seq.unit e_464))))
(assert (= a_467 (seq.update a_465 i2 (seq.unit e_466))))
(assert (= a_469 (seq.update a_467 i4 (seq.unit e_468))))
(assert (= a_471 (seq.update a_469 i1 (seq.unit e_470))))
(assert (= a_473 (seq.update a_471 i4 (seq.unit e_472))))
(assert (= a_475 (seq.update a_473 i0 (seq.unit e_474))))
(assert (= a_477 (seq.update a_475 i2 (seq.unit e_476))))
(assert (= e_440 (seq.nth a1 i0)))
(assert (= e_442 (seq.nth a1 i2)))
(assert (= e_444 (seq.nth a_443 i2)))
(assert (= e_446 (seq.nth a_443 i1)))
(assert (= e_448 (seq.nth a_447 i2)))
(assert (= e_450 (seq.nth a_447 i4)))
(assert (= e_452 (seq.nth a_451 i1)))
(assert (= e_454 (seq.nth a_451 i4)))
(assert (= e_456 (seq.nth a_455 i2)))
(assert (= e_458 (seq.nth a_455 i0)))
(assert (= e_462 (seq.nth a_461 i1)))
(assert (= e_464 (seq.nth a_461 i2)))
(assert (= e_466 (seq.nth a_465 i4)))
(assert (= e_468 (seq.nth a_465 i2)))
(assert (= e_470 (seq.nth a_469 i4)))
(assert (= e_472 (seq.nth a_469 i1)))
(assert (= e_474 (seq.nth a_473 i2)))
(assert (= e_476 (seq.nth a_473 i0)))
(assert (not (= a_459 a_477)))
(check-sat)
(exit)
