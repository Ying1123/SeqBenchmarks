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
(declare-fun a_437 () (Seq Element))
(declare-fun a_439 () (Seq Element))
(declare-fun a_441 () (Seq Element))
(declare-fun a_443 () (Seq Element))
(declare-fun a_445 () (Seq Element))
(declare-fun a_446 () (Seq Element))
(declare-fun a_448 () (Seq Element))
(declare-fun a_449 () (Seq Element))
(declare-fun a_451 () (Seq Element))
(declare-fun a_453 () (Seq Element))
(declare-fun a_455 () (Seq Element))
(declare-fun a_457 () (Seq Element))
(declare-fun a_459 () (Seq Element))
(declare-fun a_461 () (Seq Element))
(declare-fun a_463 () (Seq Element))
(declare-fun a_465 () (Seq Element))
(declare-fun a_467 () (Seq Element))
(declare-fun a_469 () (Seq Element))
(declare-fun a_471 () (Seq Element))
(declare-fun a_473 () (Seq Element))
(declare-fun a_474 () (Seq Element))
(declare-fun a_475 () (Seq Element))
(declare-fun a_477 () (Seq Element))
(declare-fun a_479 () (Seq Element))
(declare-fun a_481 () (Seq Element))
(declare-fun a_483 () (Seq Element))
(declare-fun a_485 () (Seq Element))
(declare-fun a_487 () (Seq Element))
(declare-fun a_489 () (Seq Element))
(declare-fun a_491 () (Seq Element))
(declare-fun e_436 () Element)
(declare-fun e_438 () Element)
(declare-fun e_440 () Element)
(declare-fun e_442 () Element)
(declare-fun e_444 () Element)
(declare-fun e_447 () Element)
(declare-fun e_450 () Element)
(declare-fun e_452 () Element)
(declare-fun e_454 () Element)
(declare-fun e_456 () Element)
(declare-fun e_458 () Element)
(declare-fun e_460 () Element)
(declare-fun e_462 () Element)
(declare-fun e_464 () Element)
(declare-fun e_466 () Element)
(declare-fun e_468 () Element)
(declare-fun e_470 () Element)
(declare-fun e_472 () Element)
(declare-fun e_476 () Element)
(declare-fun e_478 () Element)
(declare-fun e_480 () Element)
(declare-fun e_482 () Element)
(declare-fun e_484 () Element)
(declare-fun e_486 () Element)
(declare-fun e_488 () Element)
(declare-fun e_490 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (= a_437 (seq.update a1 i4 (seq.unit e_436))))
(assert (= a_439 (seq.update a_437 i7 (seq.unit e_438))))
(assert (= a_441 (seq.update a_439 i0 (seq.unit e_440))))
(assert (= a_443 (seq.update a_441 i3 (seq.unit e_442))))
(assert (= a_445 (seq.update a_443 i8 (seq.unit e_444))))
(assert (= a_446 (seq.update a_445 i8 (seq.unit e_444))))
(assert (= a_448 (seq.update a_446 i7 (seq.unit e_447))))
(assert (= a_449 (seq.update a_448 i7 (seq.unit e_447))))
(assert (= a_451 (seq.update a_449 i8 (seq.unit e_450))))
(assert (= a_453 (seq.update a_451 i2 (seq.unit e_452))))
(assert (= a_455 (seq.update a_453 i7 (seq.unit e_454))))
(assert (= a_457 (seq.update a_455 i6 (seq.unit e_456))))
(assert (= a_459 (seq.update a_457 i7 (seq.unit e_458))))
(assert (= a_461 (seq.update a_459 i2 (seq.unit e_460))))
(assert (= a_463 (seq.update a_461 i4 (seq.unit e_462))))
(assert (= a_465 (seq.update a_463 i0 (seq.unit e_464))))
(assert (= a_467 (seq.update a_465 i6 (seq.unit e_466))))
(assert (= a_469 (seq.update a_467 i7 (seq.unit e_468))))
(assert (= a_471 (seq.update a_469 i2 (seq.unit e_470))))
(assert (= a_473 (seq.update a_471 i6 (seq.unit e_472))))
(assert (= a_474 (seq.update a_453 i6 (seq.unit e_456))))
(assert (= a_475 (seq.update a_474 i7 (seq.unit e_454))))
(assert (= a_477 (seq.update a_475 i2 (seq.unit e_476))))
(assert (= a_479 (seq.update a_477 i7 (seq.unit e_478))))
(assert (= a_481 (seq.update a_479 i0 (seq.unit e_480))))
(assert (= a_483 (seq.update a_481 i4 (seq.unit e_482))))
(assert (= a_485 (seq.update a_483 i7 (seq.unit e_484))))
(assert (= a_487 (seq.update a_485 i6 (seq.unit e_486))))
(assert (= a_489 (seq.update a_487 i6 (seq.unit e_488))))
(assert (= a_491 (seq.update a_489 i3 (seq.unit e_490))))
(assert (= e_436 (seq.nth a1 i7)))
(assert (= e_438 (seq.nth a1 i4)))
(assert (= e_440 (seq.nth a_439 i3)))
(assert (= e_442 (seq.nth a_439 i0)))
(assert (= e_444 (seq.nth a_443 i8)))
(assert (= e_447 (seq.nth a_446 i7)))
(assert (= e_450 (seq.nth a_449 i2)))
(assert (= e_452 (seq.nth a_449 i8)))
(assert (= e_454 (seq.nth a_453 i6)))
(assert (= e_456 (seq.nth a_453 i7)))
(assert (= e_458 (seq.nth a_457 i2)))
(assert (= e_460 (seq.nth a_457 i7)))
(assert (= e_462 (seq.nth a_461 i0)))
(assert (= e_464 (seq.nth a_461 i4)))
(assert (= e_466 (seq.nth a_465 i7)))
(assert (= e_468 (seq.nth a_465 i6)))
(assert (= e_470 (seq.nth a_469 i6)))
(assert (= e_472 (seq.nth a_469 i2)))
(assert (= e_476 (seq.nth a_475 i7)))
(assert (= e_478 (seq.nth a_475 i2)))
(assert (= e_480 (seq.nth a_479 i4)))
(assert (= e_482 (seq.nth a_479 i0)))
(assert (= e_484 (seq.nth a_483 i6)))
(assert (= e_486 (seq.nth a_483 i7)))
(assert (= e_488 (seq.nth a_487 i3)))
(assert (= e_490 (seq.nth a_487 i6)))
(assert (not (= a_473 a_491)))
(check-sat)
(exit)
