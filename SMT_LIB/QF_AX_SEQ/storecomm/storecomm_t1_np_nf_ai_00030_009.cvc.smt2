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
(declare-fun e21 () Element)
(declare-fun e22 () Element)
(declare-fun e23 () Element)
(declare-fun e24 () Element)
(declare-fun e25 () Element)
(declare-fun e26 () Element)
(declare-fun e27 () Element)
(declare-fun e28 () Element)
(declare-fun e29 () Element)
(declare-fun e3 () Element)
(declare-fun e30 () Element)
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
(declare-fun i21 () Int)
(declare-fun i22 () Int)
(declare-fun i23 () Int)
(declare-fun i24 () Int)
(declare-fun i25 () Int)
(declare-fun i26 () Int)
(declare-fun i27 () Int)
(declare-fun i28 () Int)
(declare-fun i29 () Int)
(declare-fun i3 () Int)
(declare-fun i30 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (not (= i29 i30)))
(assert (not (= i28 i30)))
(assert (not (= i28 i29)))
(assert (not (= i27 i30)))
(assert (not (= i27 i29)))
(assert (not (= i27 i28)))
(assert (not (= i26 i30)))
(assert (not (= i26 i29)))
(assert (not (= i26 i28)))
(assert (not (= i26 i27)))
(assert (not (= i25 i30)))
(assert (not (= i25 i29)))
(assert (not (= i25 i28)))
(assert (not (= i25 i27)))
(assert (not (= i25 i26)))
(assert (not (= i24 i30)))
(assert (not (= i24 i29)))
(assert (not (= i24 i28)))
(assert (not (= i24 i27)))
(assert (not (= i24 i26)))
(assert (not (= i24 i25)))
(assert (not (= i23 i30)))
(assert (not (= i23 i29)))
(assert (not (= i23 i28)))
(assert (not (= i23 i27)))
(assert (not (= i23 i26)))
(assert (not (= i23 i25)))
(assert (not (= i23 i24)))
(assert (not (= i22 i30)))
(assert (not (= i22 i29)))
(assert (not (= i22 i28)))
(assert (not (= i22 i27)))
(assert (not (= i22 i26)))
(assert (not (= i22 i25)))
(assert (not (= i22 i24)))
(assert (not (= i22 i23)))
(assert (not (= i21 i30)))
(assert (not (= i21 i29)))
(assert (not (= i21 i28)))
(assert (not (= i21 i27)))
(assert (not (= i21 i26)))
(assert (not (= i21 i25)))
(assert (not (= i21 i24)))
(assert (not (= i21 i23)))
(assert (not (= i21 i22)))
(assert (not (= i20 i30)))
(assert (not (= i20 i29)))
(assert (not (= i20 i28)))
(assert (not (= i20 i27)))
(assert (not (= i20 i26)))
(assert (not (= i20 i25)))
(assert (not (= i20 i24)))
(assert (not (= i20 i23)))
(assert (not (= i20 i22)))
(assert (not (= i20 i21)))
(assert (not (= i19 i30)))
(assert (not (= i19 i29)))
(assert (not (= i19 i28)))
(assert (not (= i19 i27)))
(assert (not (= i19 i26)))
(assert (not (= i19 i25)))
(assert (not (= i19 i24)))
(assert (not (= i19 i23)))
(assert (not (= i19 i22)))
(assert (not (= i19 i21)))
(assert (not (= i19 i20)))
(assert (not (= i18 i30)))
(assert (not (= i18 i29)))
(assert (not (= i18 i28)))
(assert (not (= i18 i27)))
(assert (not (= i18 i26)))
(assert (not (= i18 i25)))
(assert (not (= i18 i24)))
(assert (not (= i18 i23)))
(assert (not (= i18 i22)))
(assert (not (= i18 i21)))
(assert (not (= i18 i20)))
(assert (not (= i18 i19)))
(assert (not (= i17 i30)))
(assert (not (= i17 i29)))
(assert (not (= i17 i28)))
(assert (not (= i17 i27)))
(assert (not (= i17 i26)))
(assert (not (= i17 i25)))
(assert (not (= i17 i24)))
(assert (not (= i17 i23)))
(assert (not (= i17 i22)))
(assert (not (= i17 i21)))
(assert (not (= i17 i20)))
(assert (not (= i17 i19)))
(assert (not (= i17 i18)))
(assert (not (= i16 i30)))
(assert (not (= i16 i29)))
(assert (not (= i16 i28)))
(assert (not (= i16 i27)))
(assert (not (= i16 i26)))
(assert (not (= i16 i25)))
(assert (not (= i16 i24)))
(assert (not (= i16 i23)))
(assert (not (= i16 i22)))
(assert (not (= i16 i21)))
(assert (not (= i16 i20)))
(assert (not (= i16 i19)))
(assert (not (= i16 i18)))
(assert (not (= i16 i17)))
(assert (not (= i15 i30)))
(assert (not (= i15 i29)))
(assert (not (= i15 i28)))
(assert (not (= i15 i27)))
(assert (not (= i15 i26)))
(assert (not (= i15 i25)))
(assert (not (= i15 i24)))
(assert (not (= i15 i23)))
(assert (not (= i15 i22)))
(assert (not (= i15 i21)))
(assert (not (= i15 i20)))
(assert (not (= i15 i19)))
(assert (not (= i15 i18)))
(assert (not (= i15 i17)))
(assert (not (= i15 i16)))
(assert (not (= i14 i30)))
(assert (not (= i14 i29)))
(assert (not (= i14 i28)))
(assert (not (= i14 i27)))
(assert (not (= i14 i26)))
(assert (not (= i14 i25)))
(assert (not (= i14 i24)))
(assert (not (= i14 i23)))
(assert (not (= i14 i22)))
(assert (not (= i14 i21)))
(assert (not (= i14 i20)))
(assert (not (= i14 i19)))
(assert (not (= i14 i18)))
(assert (not (= i14 i17)))
(assert (not (= i14 i16)))
(assert (not (= i14 i15)))
(assert (not (= i13 i30)))
(assert (not (= i13 i29)))
(assert (not (= i13 i28)))
(assert (not (= i13 i27)))
(assert (not (= i13 i26)))
(assert (not (= i13 i25)))
(assert (not (= i13 i24)))
(assert (not (= i13 i23)))
(assert (not (= i13 i22)))
(assert (not (= i13 i21)))
(assert (not (= i13 i20)))
(assert (not (= i13 i19)))
(assert (not (= i13 i18)))
(assert (not (= i13 i17)))
(assert (not (= i13 i16)))
(assert (not (= i13 i15)))
(assert (not (= i13 i14)))
(assert (not (= i12 i30)))
(assert (not (= i12 i29)))
(assert (not (= i12 i28)))
(assert (not (= i12 i27)))
(assert (not (= i12 i26)))
(assert (not (= i12 i25)))
(assert (not (= i12 i24)))
(assert (not (= i12 i23)))
(assert (not (= i12 i22)))
(assert (not (= i12 i21)))
(assert (not (= i12 i20)))
(assert (not (= i12 i19)))
(assert (not (= i12 i18)))
(assert (not (= i12 i17)))
(assert (not (= i12 i16)))
(assert (not (= i12 i15)))
(assert (not (= i12 i14)))
(assert (not (= i12 i13)))
(assert (not (= i11 i30)))
(assert (not (= i11 i29)))
(assert (not (= i11 i28)))
(assert (not (= i11 i27)))
(assert (not (= i11 i26)))
(assert (not (= i11 i25)))
(assert (not (= i11 i24)))
(assert (not (= i11 i23)))
(assert (not (= i11 i22)))
(assert (not (= i11 i21)))
(assert (not (= i11 i20)))
(assert (not (= i11 i19)))
(assert (not (= i11 i18)))
(assert (not (= i11 i17)))
(assert (not (= i11 i16)))
(assert (not (= i11 i15)))
(assert (not (= i11 i14)))
(assert (not (= i11 i13)))
(assert (not (= i11 i12)))
(assert (not (= i10 i30)))
(assert (not (= i10 i29)))
(assert (not (= i10 i28)))
(assert (not (= i10 i27)))
(assert (not (= i10 i26)))
(assert (not (= i10 i25)))
(assert (not (= i10 i24)))
(assert (not (= i10 i23)))
(assert (not (= i10 i22)))
(assert (not (= i10 i21)))
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
(assert (not (= i9 i30)))
(assert (not (= i9 i29)))
(assert (not (= i9 i28)))
(assert (not (= i9 i27)))
(assert (not (= i9 i26)))
(assert (not (= i9 i25)))
(assert (not (= i9 i24)))
(assert (not (= i9 i23)))
(assert (not (= i9 i22)))
(assert (not (= i9 i21)))
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
(assert (not (= i8 i30)))
(assert (not (= i8 i29)))
(assert (not (= i8 i28)))
(assert (not (= i8 i27)))
(assert (not (= i8 i26)))
(assert (not (= i8 i25)))
(assert (not (= i8 i24)))
(assert (not (= i8 i23)))
(assert (not (= i8 i22)))
(assert (not (= i8 i21)))
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
(assert (not (= i7 i30)))
(assert (not (= i7 i29)))
(assert (not (= i7 i28)))
(assert (not (= i7 i27)))
(assert (not (= i7 i26)))
(assert (not (= i7 i25)))
(assert (not (= i7 i24)))
(assert (not (= i7 i23)))
(assert (not (= i7 i22)))
(assert (not (= i7 i21)))
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
(assert (not (= i6 i30)))
(assert (not (= i6 i29)))
(assert (not (= i6 i28)))
(assert (not (= i6 i27)))
(assert (not (= i6 i26)))
(assert (not (= i6 i25)))
(assert (not (= i6 i24)))
(assert (not (= i6 i23)))
(assert (not (= i6 i22)))
(assert (not (= i6 i21)))
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
(assert (not (= i5 i30)))
(assert (not (= i5 i29)))
(assert (not (= i5 i28)))
(assert (not (= i5 i27)))
(assert (not (= i5 i26)))
(assert (not (= i5 i25)))
(assert (not (= i5 i24)))
(assert (not (= i5 i23)))
(assert (not (= i5 i22)))
(assert (not (= i5 i21)))
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
(assert (not (= i4 i30)))
(assert (not (= i4 i29)))
(assert (not (= i4 i28)))
(assert (not (= i4 i27)))
(assert (not (= i4 i26)))
(assert (not (= i4 i25)))
(assert (not (= i4 i24)))
(assert (not (= i4 i23)))
(assert (not (= i4 i22)))
(assert (not (= i4 i21)))
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
(assert (not (= i3 i30)))
(assert (not (= i3 i29)))
(assert (not (= i3 i28)))
(assert (not (= i3 i27)))
(assert (not (= i3 i26)))
(assert (not (= i3 i25)))
(assert (not (= i3 i24)))
(assert (not (= i3 i23)))
(assert (not (= i3 i22)))
(assert (not (= i3 i21)))
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
(assert (not (= i2 i30)))
(assert (not (= i2 i29)))
(assert (not (= i2 i28)))
(assert (not (= i2 i27)))
(assert (not (= i2 i26)))
(assert (not (= i2 i25)))
(assert (not (= i2 i24)))
(assert (not (= i2 i23)))
(assert (not (= i2 i22)))
(assert (not (= i2 i21)))
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
(assert (not (= i1 i30)))
(assert (not (= i1 i29)))
(assert (not (= i1 i28)))
(assert (not (= i1 i27)))
(assert (not (= i1 i26)))
(assert (not (= i1 i25)))
(assert (not (= i1 i24)))
(assert (not (= i1 i23)))
(assert (not (= i1 i22)))
(assert (not (= i1 i21)))
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
(assert (not (= (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update a1 i1 (seq.unit e1)) i2 (seq.unit e2)) i3 (seq.unit e3)) i4 (seq.unit e4)) i5 (seq.unit e5)) i6 (seq.unit e6)) i7 (seq.unit e7)) i8 (seq.unit e8)) i9 (seq.unit e9)) i10 (seq.unit e10)) i11 (seq.unit e11)) i12 (seq.unit e12)) i13 (seq.unit e13)) i14 (seq.unit e14)) i15 (seq.unit e15)) i16 (seq.unit e16)) i17 (seq.unit e17)) i18 (seq.unit e18)) i19 (seq.unit e19)) i20 (seq.unit e20)) i21 (seq.unit e21)) i22 (seq.unit e22)) i23 (seq.unit e23)) i24 (seq.unit e24)) i25 (seq.unit e25)) i26 (seq.unit e26)) i27 (seq.unit e27)) i28 (seq.unit e28)) i29 (seq.unit e29)) i30 (seq.unit e30)) (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update (seq.update a1 i5 (seq.unit e5)) i4 (seq.unit e4)) i19 (seq.unit e19)) i25 (seq.unit e25)) i2 (seq.unit e2)) i26 (seq.unit e26)) i17 (seq.unit e17)) i28 (seq.unit e28)) i22 (seq.unit e22)) i11 (seq.unit e11)) i9 (seq.unit e9)) i13 (seq.unit e13)) i29 (seq.unit e29)) i18 (seq.unit e18)) i27 (seq.unit e27)) i16 (seq.unit e16)) i24 (seq.unit e24)) i3 (seq.unit e3)) i7 (seq.unit e7)) i12 (seq.unit e12)) i14 (seq.unit e14)) i10 (seq.unit e10)) i15 (seq.unit e15)) i8 (seq.unit e8)) i6 (seq.unit e6)) i30 (seq.unit e30)) i21 (seq.unit e21)) i20 (seq.unit e20)) i23 (seq.unit e23)) i1 (seq.unit e1)))))
(check-sat)
(exit)
