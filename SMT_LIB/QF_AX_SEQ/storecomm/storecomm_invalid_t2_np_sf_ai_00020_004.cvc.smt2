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
(declare-fun a_399 () (Seq Element))
(declare-fun a_400 () (Seq Element))
(declare-fun a_401 () (Seq Element))
(declare-fun a_402 () (Seq Element))
(declare-fun a_403 () (Seq Element))
(declare-fun a_404 () (Seq Element))
(declare-fun a_405 () (Seq Element))
(declare-fun a_406 () (Seq Element))
(declare-fun a_407 () (Seq Element))
(declare-fun a_408 () (Seq Element))
(declare-fun a_409 () (Seq Element))
(declare-fun a_410 () (Seq Element))
(declare-fun a_411 () (Seq Element))
(declare-fun a_412 () (Seq Element))
(declare-fun a_413 () (Seq Element))
(declare-fun a_414 () (Seq Element))
(declare-fun a_415 () (Seq Element))
(declare-fun a_416 () (Seq Element))
(declare-fun a_417 () (Seq Element))
(declare-fun a_418 () (Seq Element))
(declare-fun a_419 () (Seq Element))
(declare-fun a_420 () (Seq Element))
(declare-fun a_421 () (Seq Element))
(declare-fun a_422 () (Seq Element))
(declare-fun a_423 () (Seq Element))
(declare-fun a_424 () (Seq Element))
(declare-fun a_425 () (Seq Element))
(declare-fun a_426 () (Seq Element))
(declare-fun a_427 () (Seq Element))
(declare-fun a_428 () (Seq Element))
(declare-fun a_429 () (Seq Element))
(declare-fun a_430 () (Seq Element))
(declare-fun a_431 () (Seq Element))
(declare-fun a_432 () (Seq Element))
(declare-fun a_433 () (Seq Element))
(declare-fun a_434 () (Seq Element))
(declare-fun a_435 () (Seq Element))
(declare-fun a_436 () (Seq Element))
(declare-fun a_437 () (Seq Element))
(declare-fun a_438 () (Seq Element))
(declare-fun a1 () (Seq Element))
(declare-fun e1 () Element)
(declare-fun e10 () Element)
(declare-fun e11 () Element)
(declare-fun e12 () Element)
(declare-fun e13 () Element)
(declare-fun e14 () Element)
(declare-fun e15 () Element)
(declare-fun e16 () Element)
(declare-fun e17 () Element)
(declare-fun e18 () Element)
(declare-fun e19 () Element)
(declare-fun e2 () Element)
(declare-fun e20 () Element)
(declare-fun e3 () Element)
(declare-fun e4 () Element)
(declare-fun e5 () Element)
(declare-fun e6 () Element)
(declare-fun e7 () Element)
(declare-fun e8 () Element)
(declare-fun e9 () Element)
(declare-fun i1 () Int)
(declare-fun i10 () Int)
(declare-fun i11 () Int)
(declare-fun i12 () Int)
(declare-fun i13 () Int)
(declare-fun i14 () Int)
(declare-fun i15 () Int)
(declare-fun i16 () Int)
(declare-fun i17 () Int)
(declare-fun i18 () Int)
(declare-fun i19 () Int)
(declare-fun i2 () Int)
(declare-fun i20 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_399 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_400 (seq.update a_399 i2 (seq.unit e2))))
(assert (= a_401 (seq.update a_400 i3 (seq.unit e3))))
(assert (= a_402 (seq.update a_401 i4 (seq.unit e4))))
(assert (= a_403 (seq.update a_402 i5 (seq.unit e5))))
(assert (= a_404 (seq.update a_403 i6 (seq.unit e6))))
(assert (= a_405 (seq.update a_404 i7 (seq.unit e7))))
(assert (= a_406 (seq.update a_405 i8 (seq.unit e8))))
(assert (= a_407 (seq.update a_406 i9 (seq.unit e9))))
(assert (= a_408 (seq.update a_407 i10 (seq.unit e10))))
(assert (= a_409 (seq.update a_408 i11 (seq.unit e11))))
(assert (= a_410 (seq.update a_409 i12 (seq.unit e12))))
(assert (= a_411 (seq.update a_410 i13 (seq.unit e13))))
(assert (= a_412 (seq.update a_411 i14 (seq.unit e14))))
(assert (= a_413 (seq.update a_412 i15 (seq.unit e15))))
(assert (= a_414 (seq.update a_413 i16 (seq.unit e16))))
(assert (= a_415 (seq.update a_414 i17 (seq.unit e17))))
(assert (= a_416 (seq.update a_415 i18 (seq.unit e18))))
(assert (= a_417 (seq.update a_416 i19 (seq.unit e19))))
(assert (= a_418 (seq.update a_417 i1 (seq.unit e1))))
(assert (= a_419 (seq.update a1 i4 (seq.unit e4))))
(assert (= a_420 (seq.update a_419 i19 (seq.unit e19))))
(assert (= a_421 (seq.update a_420 i16 (seq.unit e16))))
(assert (= a_422 (seq.update a_421 i8 (seq.unit e8))))
(assert (= a_423 (seq.update a_422 i7 (seq.unit e7))))
(assert (= a_424 (seq.update a_423 i5 (seq.unit e5))))
(assert (= a_425 (seq.update a_424 i9 (seq.unit e9))))
(assert (= a_426 (seq.update a_425 i1 (seq.unit e1))))
(assert (= a_427 (seq.update a_426 i14 (seq.unit e14))))
(assert (= a_428 (seq.update a_427 i10 (seq.unit e10))))
(assert (= a_429 (seq.update a_428 i3 (seq.unit e3))))
(assert (= a_430 (seq.update a_429 i17 (seq.unit e17))))
(assert (= a_431 (seq.update a_430 i2 (seq.unit e2))))
(assert (= a_432 (seq.update a_431 i13 (seq.unit e13))))
(assert (= a_433 (seq.update a_432 i11 (seq.unit e11))))
(assert (= a_434 (seq.update a_433 i15 (seq.unit e15))))
(assert (= a_435 (seq.update a_434 i18 (seq.unit e18))))
(assert (= a_436 (seq.update a_435 i20 (seq.unit e20))))
(assert (= a_437 (seq.update a_436 i6 (seq.unit e6))))
(assert (= a_438 (seq.update a_437 i12 (seq.unit e12))))
(assert (not (= i19 i20)))
(assert (not (= i18 i20)))
(assert (not (= i18 i19)))
(assert (not (= i17 i20)))
(assert (not (= i17 i19)))
(assert (not (= i17 i18)))
(assert (not (= i16 i20)))
(assert (not (= i16 i19)))
(assert (not (= i16 i18)))
(assert (not (= i16 i17)))
(assert (not (= i15 i20)))
(assert (not (= i15 i19)))
(assert (not (= i15 i18)))
(assert (not (= i15 i17)))
(assert (not (= i15 i16)))
(assert (not (= i14 i20)))
(assert (not (= i14 i19)))
(assert (not (= i14 i18)))
(assert (not (= i14 i17)))
(assert (not (= i14 i16)))
(assert (not (= i14 i15)))
(assert (not (= i13 i20)))
(assert (not (= i13 i19)))
(assert (not (= i13 i18)))
(assert (not (= i13 i17)))
(assert (not (= i13 i16)))
(assert (not (= i13 i15)))
(assert (not (= i13 i14)))
(assert (not (= i12 i20)))
(assert (not (= i12 i19)))
(assert (not (= i12 i18)))
(assert (not (= i12 i17)))
(assert (not (= i12 i16)))
(assert (not (= i12 i15)))
(assert (not (= i12 i14)))
(assert (not (= i12 i13)))
(assert (not (= i11 i20)))
(assert (not (= i11 i19)))
(assert (not (= i11 i18)))
(assert (not (= i11 i17)))
(assert (not (= i11 i16)))
(assert (not (= i11 i15)))
(assert (not (= i11 i14)))
(assert (not (= i11 i13)))
(assert (not (= i11 i12)))
(assert (not (= i10 i20)))
(assert (not (= i10 i19)))
(assert (not (= i10 i18)))
(assert (not (= i10 i17)))
(assert (not (= i10 i16)))
(assert (not (= i10 i15)))
(assert (not (= i10 i14)))
(assert (not (= i10 i13)))
(assert (not (= i10 i12)))
(assert (not (= i10 i11)))
(assert (not (= i9 i20)))
(assert (not (= i9 i19)))
(assert (not (= i9 i18)))
(assert (not (= i9 i17)))
(assert (not (= i9 i16)))
(assert (not (= i9 i15)))
(assert (not (= i9 i14)))
(assert (not (= i9 i13)))
(assert (not (= i9 i12)))
(assert (not (= i9 i11)))
(assert (not (= i9 i10)))
(assert (not (= i8 i20)))
(assert (not (= i8 i19)))
(assert (not (= i8 i18)))
(assert (not (= i8 i17)))
(assert (not (= i8 i16)))
(assert (not (= i8 i15)))
(assert (not (= i8 i14)))
(assert (not (= i8 i13)))
(assert (not (= i8 i12)))
(assert (not (= i8 i11)))
(assert (not (= i8 i10)))
(assert (not (= i8 i9)))
(assert (not (= i7 i20)))
(assert (not (= i7 i19)))
(assert (not (= i7 i18)))
(assert (not (= i7 i17)))
(assert (not (= i7 i16)))
(assert (not (= i7 i15)))
(assert (not (= i7 i14)))
(assert (not (= i7 i13)))
(assert (not (= i7 i12)))
(assert (not (= i7 i11)))
(assert (not (= i7 i10)))
(assert (not (= i7 i9)))
(assert (not (= i7 i8)))
(assert (not (= i6 i20)))
(assert (not (= i6 i19)))
(assert (not (= i6 i18)))
(assert (not (= i6 i17)))
(assert (not (= i6 i16)))
(assert (not (= i6 i15)))
(assert (not (= i6 i14)))
(assert (not (= i6 i13)))
(assert (not (= i6 i12)))
(assert (not (= i6 i11)))
(assert (not (= i6 i10)))
(assert (not (= i6 i9)))
(assert (not (= i6 i8)))
(assert (not (= i6 i7)))
(assert (not (= i5 i20)))
(assert (not (= i5 i19)))
(assert (not (= i5 i18)))
(assert (not (= i5 i17)))
(assert (not (= i5 i16)))
(assert (not (= i5 i15)))
(assert (not (= i5 i14)))
(assert (not (= i5 i13)))
(assert (not (= i5 i12)))
(assert (not (= i5 i11)))
(assert (not (= i5 i10)))
(assert (not (= i5 i9)))
(assert (not (= i5 i8)))
(assert (not (= i5 i7)))
(assert (not (= i5 i6)))
(assert (not (= i4 i20)))
(assert (not (= i4 i19)))
(assert (not (= i4 i18)))
(assert (not (= i4 i17)))
(assert (not (= i4 i16)))
(assert (not (= i4 i15)))
(assert (not (= i4 i14)))
(assert (not (= i4 i13)))
(assert (not (= i4 i12)))
(assert (not (= i4 i11)))
(assert (not (= i4 i10)))
(assert (not (= i4 i9)))
(assert (not (= i4 i8)))
(assert (not (= i4 i7)))
(assert (not (= i4 i6)))
(assert (not (= i4 i5)))
(assert (not (= i3 i20)))
(assert (not (= i3 i19)))
(assert (not (= i3 i18)))
(assert (not (= i3 i17)))
(assert (not (= i3 i16)))
(assert (not (= i3 i15)))
(assert (not (= i3 i14)))
(assert (not (= i3 i13)))
(assert (not (= i3 i12)))
(assert (not (= i3 i11)))
(assert (not (= i3 i10)))
(assert (not (= i3 i9)))
(assert (not (= i3 i8)))
(assert (not (= i3 i7)))
(assert (not (= i3 i6)))
(assert (not (= i3 i5)))
(assert (not (= i3 i4)))
(assert (not (= i2 i20)))
(assert (not (= i2 i19)))
(assert (not (= i2 i18)))
(assert (not (= i2 i17)))
(assert (not (= i2 i16)))
(assert (not (= i2 i15)))
(assert (not (= i2 i14)))
(assert (not (= i2 i13)))
(assert (not (= i2 i12)))
(assert (not (= i2 i11)))
(assert (not (= i2 i10)))
(assert (not (= i2 i9)))
(assert (not (= i2 i8)))
(assert (not (= i2 i7)))
(assert (not (= i2 i6)))
(assert (not (= i2 i5)))
(assert (not (= i2 i4)))
(assert (not (= i2 i3)))
(assert (not (= i1 i20)))
(assert (not (= i1 i19)))
(assert (not (= i1 i18)))
(assert (not (= i1 i17)))
(assert (not (= i1 i16)))
(assert (not (= i1 i15)))
(assert (not (= i1 i14)))
(assert (not (= i1 i13)))
(assert (not (= i1 i12)))
(assert (not (= i1 i11)))
(assert (not (= i1 i10)))
(assert (not (= i1 i9)))
(assert (not (= i1 i8)))
(assert (not (= i1 i7)))
(assert (not (= i1 i6)))
(assert (not (= i1 i5)))
(assert (not (= i1 i4)))
(assert (not (= i1 i3)))
(assert (not (= i1 i2)))
(assert (not (= a_418 a_438)))
(check-sat)
(exit)
