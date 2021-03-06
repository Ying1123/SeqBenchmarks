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
(declare-fun a_404 () (Array Index Element))
(declare-fun a_406 () (Array Index Element))
(declare-fun a_408 () (Array Index Element))
(declare-fun a_410 () (Array Index Element))
(declare-fun a_412 () (Array Index Element))
(declare-fun a_414 () (Array Index Element))
(declare-fun a_416 () (Array Index Element))
(declare-fun a_418 () (Array Index Element))
(declare-fun a_420 () (Array Index Element))
(declare-fun a_422 () (Array Index Element))
(declare-fun a_424 () (Array Index Element))
(declare-fun a_426 () (Array Index Element))
(declare-fun a_428 () (Array Index Element))
(declare-fun a_430 () (Array Index Element))
(declare-fun a_432 () (Array Index Element))
(declare-fun a_434 () (Array Index Element))
(declare-fun a_436 () (Array Index Element))
(declare-fun a_438 () (Array Index Element))
(declare-fun a_439 () (Array Index Element))
(declare-fun a_440 () (Array Index Element))
(declare-fun a_442 () (Array Index Element))
(declare-fun a_444 () (Array Index Element))
(declare-fun a_446 () (Array Index Element))
(declare-fun a_448 () (Array Index Element))
(declare-fun a_450 () (Array Index Element))
(declare-fun a_452 () (Array Index Element))
(declare-fun a_454 () (Array Index Element))
(declare-fun a_456 () (Array Index Element))
(declare-fun a_458 () (Array Index Element))
(declare-fun a_460 () (Array Index Element))
(declare-fun a_462 () (Array Index Element))
(declare-fun a_464 () (Array Index Element))
(declare-fun a_466 () (Array Index Element))
(declare-fun a_468 () (Array Index Element))
(declare-fun a_470 () (Array Index Element))
(declare-fun a_472 () (Array Index Element))
(declare-fun e_403 () Element)
(declare-fun e_405 () Element)
(declare-fun e_407 () Element)
(declare-fun e_409 () Element)
(declare-fun e_411 () Element)
(declare-fun e_413 () Element)
(declare-fun e_415 () Element)
(declare-fun e_417 () Element)
(declare-fun e_419 () Element)
(declare-fun e_421 () Element)
(declare-fun e_423 () Element)
(declare-fun e_425 () Element)
(declare-fun e_427 () Element)
(declare-fun e_429 () Element)
(declare-fun e_431 () Element)
(declare-fun e_433 () Element)
(declare-fun e_435 () Element)
(declare-fun e_437 () Element)
(declare-fun e_441 () Element)
(declare-fun e_443 () Element)
(declare-fun e_445 () Element)
(declare-fun e_447 () Element)
(declare-fun e_449 () Element)
(declare-fun e_451 () Element)
(declare-fun e_453 () Element)
(declare-fun e_455 () Element)
(declare-fun e_457 () Element)
(declare-fun e_459 () Element)
(declare-fun e_461 () Element)
(declare-fun e_463 () Element)
(declare-fun e_465 () Element)
(declare-fun e_467 () Element)
(declare-fun e_469 () Element)
(declare-fun e_471 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(assert (= a_404 (store a1 i4 e_403)))
(assert (= a_406 (store a_404 i0 e_405)))
(assert (= a_408 (store a_406 i6 e_407)))
(assert (= a_410 (store a_408 i1 e_409)))
(assert (= a_412 (store a_410 i2 e_411)))
(assert (= a_414 (store a_412 i4 e_413)))
(assert (= a_416 (store a_414 i1 e_415)))
(assert (= a_418 (store a_416 i4 e_417)))
(assert (= a_420 (store a_418 i0 e_419)))
(assert (= a_422 (store a_420 i5 e_421)))
(assert (= a_424 (store a_422 i7 e_423)))
(assert (= a_426 (store a_424 i5 e_425)))
(assert (= a_428 (store a_426 i8 e_427)))
(assert (= a_430 (store a_428 i6 e_429)))
(assert (= a_432 (store a_430 i4 e_431)))
(assert (= a_434 (store a_432 i3 e_433)))
(assert (= a_436 (store a_434 i4 e_435)))
(assert (= a_438 (store a_436 i3 e_437)))
(assert (= a_439 (store a1 i0 e_405)))
(assert (= a_440 (store a_439 i4 e_403)))
(assert (= a_442 (store a_440 i1 e_441)))
(assert (= a_444 (store a_442 i6 e_443)))
(assert (= a_446 (store a_444 i2 e_445)))
(assert (= a_448 (store a_446 i4 e_447)))
(assert (= a_450 (store a_448 i1 e_449)))
(assert (= a_452 (store a_450 i4 e_451)))
(assert (= a_454 (store a_452 i0 e_453)))
(assert (= a_456 (store a_454 i5 e_455)))
(assert (= a_458 (store a_456 i7 e_457)))
(assert (= a_460 (store a_458 i5 e_459)))
(assert (= a_462 (store a_460 i8 e_461)))
(assert (= a_464 (store a_462 i6 e_463)))
(assert (= a_466 (store a_464 i3 e_465)))
(assert (= a_468 (store a_466 i4 e_467)))
(assert (= a_470 (store a_468 i5 e_469)))
(assert (= a_472 (store a_470 i3 e_471)))
(assert (= e_403 (select a1 i0)))
(assert (= e_405 (select a1 i4)))
(assert (= e_407 (select a_406 i1)))
(assert (= e_409 (select a_406 i6)))
(assert (= e_411 (select a_410 i4)))
(assert (= e_413 (select a_410 i2)))
(assert (= e_415 (select a_414 i4)))
(assert (= e_417 (select a_414 i1)))
(assert (= e_419 (select a_418 i5)))
(assert (= e_421 (select a_418 i0)))
(assert (= e_423 (select a_422 i5)))
(assert (= e_425 (select a_422 i7)))
(assert (= e_427 (select a_426 i6)))
(assert (= e_429 (select a_426 i8)))
(assert (= e_431 (select a_430 i3)))
(assert (= e_433 (select a_430 i4)))
(assert (= e_435 (select a_434 i3)))
(assert (= e_437 (select a_434 i4)))
(assert (= e_441 (select a_440 i6)))
(assert (= e_443 (select a_440 i1)))
(assert (= e_445 (select a_444 i4)))
(assert (= e_447 (select a_444 i2)))
(assert (= e_449 (select a_448 i4)))
(assert (= e_451 (select a_448 i1)))
(assert (= e_453 (select a_452 i5)))
(assert (= e_455 (select a_452 i0)))
(assert (= e_457 (select a_456 i5)))
(assert (= e_459 (select a_456 i7)))
(assert (= e_461 (select a_460 i6)))
(assert (= e_463 (select a_460 i8)))
(assert (= e_465 (select a_464 i4)))
(assert (= e_467 (select a_464 i3)))
(assert (= e_469 (select a_468 i3)))
(assert (= e_471 (select a_468 i5)))
(assert (not (= a_438 a_472)))
(check-sat)
(exit)
