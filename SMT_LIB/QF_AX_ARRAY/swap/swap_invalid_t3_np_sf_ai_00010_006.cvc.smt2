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
(set-info :status sat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_437 () (Array Index Element))
(declare-fun a_439 () (Array Index Element))
(declare-fun a_441 () (Array Index Element))
(declare-fun a_443 () (Array Index Element))
(declare-fun a_445 () (Array Index Element))
(declare-fun a_446 () (Array Index Element))
(declare-fun a_448 () (Array Index Element))
(declare-fun a_449 () (Array Index Element))
(declare-fun a_451 () (Array Index Element))
(declare-fun a_453 () (Array Index Element))
(declare-fun a_455 () (Array Index Element))
(declare-fun a_457 () (Array Index Element))
(declare-fun a_459 () (Array Index Element))
(declare-fun a_461 () (Array Index Element))
(declare-fun a_463 () (Array Index Element))
(declare-fun a_465 () (Array Index Element))
(declare-fun a_467 () (Array Index Element))
(declare-fun a_469 () (Array Index Element))
(declare-fun a_471 () (Array Index Element))
(declare-fun a_473 () (Array Index Element))
(declare-fun a_474 () (Array Index Element))
(declare-fun a_475 () (Array Index Element))
(declare-fun a_477 () (Array Index Element))
(declare-fun a_479 () (Array Index Element))
(declare-fun a_481 () (Array Index Element))
(declare-fun a_483 () (Array Index Element))
(declare-fun a_485 () (Array Index Element))
(declare-fun a_487 () (Array Index Element))
(declare-fun a_489 () (Array Index Element))
(declare-fun a_491 () (Array Index Element))
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
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(assert (= a_437 (store a1 i4 e_436)))
(assert (= a_439 (store a_437 i7 e_438)))
(assert (= a_441 (store a_439 i0 e_440)))
(assert (= a_443 (store a_441 i3 e_442)))
(assert (= a_445 (store a_443 i8 e_444)))
(assert (= a_446 (store a_445 i8 e_444)))
(assert (= a_448 (store a_446 i7 e_447)))
(assert (= a_449 (store a_448 i7 e_447)))
(assert (= a_451 (store a_449 i8 e_450)))
(assert (= a_453 (store a_451 i2 e_452)))
(assert (= a_455 (store a_453 i7 e_454)))
(assert (= a_457 (store a_455 i6 e_456)))
(assert (= a_459 (store a_457 i7 e_458)))
(assert (= a_461 (store a_459 i2 e_460)))
(assert (= a_463 (store a_461 i4 e_462)))
(assert (= a_465 (store a_463 i0 e_464)))
(assert (= a_467 (store a_465 i6 e_466)))
(assert (= a_469 (store a_467 i7 e_468)))
(assert (= a_471 (store a_469 i2 e_470)))
(assert (= a_473 (store a_471 i6 e_472)))
(assert (= a_474 (store a_453 i6 e_456)))
(assert (= a_475 (store a_474 i7 e_454)))
(assert (= a_477 (store a_475 i2 e_476)))
(assert (= a_479 (store a_477 i7 e_478)))
(assert (= a_481 (store a_479 i0 e_480)))
(assert (= a_483 (store a_481 i4 e_482)))
(assert (= a_485 (store a_483 i7 e_484)))
(assert (= a_487 (store a_485 i6 e_486)))
(assert (= a_489 (store a_487 i6 e_488)))
(assert (= a_491 (store a_489 i3 e_490)))
(assert (= e_436 (select a1 i7)))
(assert (= e_438 (select a1 i4)))
(assert (= e_440 (select a_439 i3)))
(assert (= e_442 (select a_439 i0)))
(assert (= e_444 (select a_443 i8)))
(assert (= e_447 (select a_446 i7)))
(assert (= e_450 (select a_449 i2)))
(assert (= e_452 (select a_449 i8)))
(assert (= e_454 (select a_453 i6)))
(assert (= e_456 (select a_453 i7)))
(assert (= e_458 (select a_457 i2)))
(assert (= e_460 (select a_457 i7)))
(assert (= e_462 (select a_461 i0)))
(assert (= e_464 (select a_461 i4)))
(assert (= e_466 (select a_465 i7)))
(assert (= e_468 (select a_465 i6)))
(assert (= e_470 (select a_469 i6)))
(assert (= e_472 (select a_469 i2)))
(assert (= e_476 (select a_475 i7)))
(assert (= e_478 (select a_475 i2)))
(assert (= e_480 (select a_479 i4)))
(assert (= e_482 (select a_479 i0)))
(assert (= e_484 (select a_483 i6)))
(assert (= e_486 (select a_483 i7)))
(assert (= e_488 (select a_487 i3)))
(assert (= e_490 (select a_487 i6)))
(assert (not (= a_473 a_491)))
(check-sat)
(exit)