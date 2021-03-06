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
(declare-fun a_100 () (Seq Element))
(declare-fun a_101 () (Seq Element))
(declare-fun a_102 () (Seq Element))
(declare-fun a_103 () (Seq Element))
(declare-fun a_104 () (Seq Element))
(declare-fun a_105 () (Seq Element))
(declare-fun a_106 () (Seq Element))
(declare-fun a_107 () (Seq Element))
(declare-fun a_108 () (Seq Element))
(declare-fun a_109 () (Seq Element))
(declare-fun a_110 () (Seq Element))
(declare-fun a_111 () (Seq Element))
(declare-fun a_112 () (Seq Element))
(declare-fun a_113 () (Seq Element))
(declare-fun a_114 () (Seq Element))
(declare-fun a_115 () (Seq Element))
(declare-fun a_116 () (Seq Element))
(declare-fun a_117 () (Seq Element))
(declare-fun a_118 () (Seq Element))
(declare-fun a_119 () (Seq Element))
(declare-fun a_80 () (Seq Element))
(declare-fun a_81 () (Seq Element))
(declare-fun a_82 () (Seq Element))
(declare-fun a_83 () (Seq Element))
(declare-fun a_84 () (Seq Element))
(declare-fun a_85 () (Seq Element))
(declare-fun a_86 () (Seq Element))
(declare-fun a_87 () (Seq Element))
(declare-fun a_88 () (Seq Element))
(declare-fun a_89 () (Seq Element))
(declare-fun a_90 () (Seq Element))
(declare-fun a_91 () (Seq Element))
(declare-fun a_92 () (Seq Element))
(declare-fun a_93 () (Seq Element))
(declare-fun a_94 () (Seq Element))
(declare-fun a_95 () (Seq Element))
(declare-fun a_96 () (Seq Element))
(declare-fun a_97 () (Seq Element))
(declare-fun a_98 () (Seq Element))
(declare-fun a_99 () (Seq Element))
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
(assert (= a_100 (seq.update a1 i18 (seq.unit e18))))
(assert (= a_101 (seq.update a_100 i10 (seq.unit e10))))
(assert (= a_102 (seq.update a_101 i3 (seq.unit e3))))
(assert (= a_103 (seq.update a_102 i17 (seq.unit e17))))
(assert (= a_104 (seq.update a_103 i1 (seq.unit e1))))
(assert (= a_105 (seq.update a_104 i11 (seq.unit e11))))
(assert (= a_106 (seq.update a_105 i7 (seq.unit e7))))
(assert (= a_107 (seq.update a_106 i5 (seq.unit e5))))
(assert (= a_108 (seq.update a_107 i9 (seq.unit e9))))
(assert (= a_109 (seq.update a_108 i19 (seq.unit e19))))
(assert (= a_110 (seq.update a_109 i16 (seq.unit e16))))
(assert (= a_111 (seq.update a_110 i2 (seq.unit e2))))
(assert (= a_112 (seq.update a_111 i20 (seq.unit e20))))
(assert (= a_113 (seq.update a_112 i4 (seq.unit e4))))
(assert (= a_114 (seq.update a_113 i15 (seq.unit e15))))
(assert (= a_115 (seq.update a_114 i8 (seq.unit e8))))
(assert (= a_116 (seq.update a_115 i12 (seq.unit e12))))
(assert (= a_117 (seq.update a_116 i14 (seq.unit e14))))
(assert (= a_118 (seq.update a_117 i13 (seq.unit e13))))
(assert (= a_119 (seq.update a_118 i6 (seq.unit e6))))
(assert (= a_80 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_81 (seq.update a_80 i2 (seq.unit e2))))
(assert (= a_82 (seq.update a_81 i3 (seq.unit e3))))
(assert (= a_83 (seq.update a_82 i4 (seq.unit e4))))
(assert (= a_84 (seq.update a_83 i5 (seq.unit e5))))
(assert (= a_85 (seq.update a_84 i6 (seq.unit e6))))
(assert (= a_86 (seq.update a_85 i7 (seq.unit e7))))
(assert (= a_87 (seq.update a_86 i8 (seq.unit e8))))
(assert (= a_88 (seq.update a_87 i9 (seq.unit e9))))
(assert (= a_89 (seq.update a_88 i10 (seq.unit e10))))
(assert (= a_90 (seq.update a_89 i11 (seq.unit e11))))
(assert (= a_91 (seq.update a_90 i12 (seq.unit e12))))
(assert (= a_92 (seq.update a_91 i13 (seq.unit e13))))
(assert (= a_93 (seq.update a_92 i14 (seq.unit e14))))
(assert (= a_94 (seq.update a_93 i15 (seq.unit e15))))
(assert (= a_95 (seq.update a_94 i16 (seq.unit e16))))
(assert (= a_96 (seq.update a_95 i17 (seq.unit e17))))
(assert (= a_97 (seq.update a_96 i18 (seq.unit e18))))
(assert (= a_98 (seq.update a_97 i19 (seq.unit e19))))
(assert (= a_99 (seq.update a_98 i1 (seq.unit e1))))
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
(assert (not (= a_99 a_119)))
(check-sat)
(exit)
