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
(declare-fun a_1000 () (Seq Element))
(declare-fun a_1001 () (Seq Element))
(declare-fun a_1002 () (Seq Element))
(declare-fun a_1003 () (Seq Element))
(declare-fun a_1004 () (Seq Element))
(declare-fun a_1005 () (Seq Element))
(declare-fun a_1006 () (Seq Element))
(declare-fun a_1007 () (Seq Element))
(declare-fun a_1008 () (Seq Element))
(declare-fun a_1009 () (Seq Element))
(declare-fun a_1010 () (Seq Element))
(declare-fun a_1011 () (Seq Element))
(declare-fun a_1012 () (Seq Element))
(declare-fun a_1013 () (Seq Element))
(declare-fun a_1014 () (Seq Element))
(declare-fun a_1015 () (Seq Element))
(declare-fun a_1016 () (Seq Element))
(declare-fun a_1017 () (Seq Element))
(declare-fun a_958 () (Seq Element))
(declare-fun a_959 () (Seq Element))
(declare-fun a_960 () (Seq Element))
(declare-fun a_961 () (Seq Element))
(declare-fun a_962 () (Seq Element))
(declare-fun a_963 () (Seq Element))
(declare-fun a_964 () (Seq Element))
(declare-fun a_965 () (Seq Element))
(declare-fun a_966 () (Seq Element))
(declare-fun a_967 () (Seq Element))
(declare-fun a_968 () (Seq Element))
(declare-fun a_969 () (Seq Element))
(declare-fun a_970 () (Seq Element))
(declare-fun a_971 () (Seq Element))
(declare-fun a_972 () (Seq Element))
(declare-fun a_973 () (Seq Element))
(declare-fun a_974 () (Seq Element))
(declare-fun a_975 () (Seq Element))
(declare-fun a_976 () (Seq Element))
(declare-fun a_977 () (Seq Element))
(declare-fun a_978 () (Seq Element))
(declare-fun a_979 () (Seq Element))
(declare-fun a_980 () (Seq Element))
(declare-fun a_981 () (Seq Element))
(declare-fun a_982 () (Seq Element))
(declare-fun a_983 () (Seq Element))
(declare-fun a_984 () (Seq Element))
(declare-fun a_985 () (Seq Element))
(declare-fun a_986 () (Seq Element))
(declare-fun a_987 () (Seq Element))
(declare-fun a_988 () (Seq Element))
(declare-fun a_989 () (Seq Element))
(declare-fun a_990 () (Seq Element))
(declare-fun a_991 () (Seq Element))
(declare-fun a_992 () (Seq Element))
(declare-fun a_993 () (Seq Element))
(declare-fun a_994 () (Seq Element))
(declare-fun a_995 () (Seq Element))
(declare-fun a_996 () (Seq Element))
(declare-fun a_997 () (Seq Element))
(declare-fun a_998 () (Seq Element))
(declare-fun a_999 () (Seq Element))
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
(assert (= a_1000 (seq.update a_999 i5 (seq.unit e5))))
(assert (= a_1001 (seq.update a_1000 i3 (seq.unit e3))))
(assert (= a_1002 (seq.update a_1001 i14 (seq.unit e14))))
(assert (= a_1003 (seq.update a_1002 i1 (seq.unit e1))))
(assert (= a_1004 (seq.update a_1003 i27 (seq.unit e27))))
(assert (= a_1005 (seq.update a_1004 i6 (seq.unit e6))))
(assert (= a_1006 (seq.update a_1005 i18 (seq.unit e18))))
(assert (= a_1007 (seq.update a_1006 i28 (seq.unit e28))))
(assert (= a_1008 (seq.update a_1007 i21 (seq.unit e21))))
(assert (= a_1009 (seq.update a_1008 i26 (seq.unit e26))))
(assert (= a_1010 (seq.update a_1009 i19 (seq.unit e19))))
(assert (= a_1011 (seq.update a_1010 i10 (seq.unit e10))))
(assert (= a_1012 (seq.update a_1011 i20 (seq.unit e20))))
(assert (= a_1013 (seq.update a_1012 i11 (seq.unit e11))))
(assert (= a_1014 (seq.update a_1013 i2 (seq.unit e2))))
(assert (= a_1015 (seq.update a_1014 i13 (seq.unit e13))))
(assert (= a_1016 (seq.update a_1015 i25 (seq.unit e25))))
(assert (= a_1017 (seq.update a_1016 i23 (seq.unit e23))))
(assert (= a_958 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_959 (seq.update a_958 i2 (seq.unit e2))))
(assert (= a_960 (seq.update a_959 i3 (seq.unit e3))))
(assert (= a_961 (seq.update a_960 i4 (seq.unit e4))))
(assert (= a_962 (seq.update a_961 i5 (seq.unit e5))))
(assert (= a_963 (seq.update a_962 i6 (seq.unit e6))))
(assert (= a_964 (seq.update a_963 i7 (seq.unit e7))))
(assert (= a_965 (seq.update a_964 i8 (seq.unit e8))))
(assert (= a_966 (seq.update a_965 i9 (seq.unit e9))))
(assert (= a_967 (seq.update a_966 i10 (seq.unit e10))))
(assert (= a_968 (seq.update a_967 i11 (seq.unit e11))))
(assert (= a_969 (seq.update a_968 i12 (seq.unit e12))))
(assert (= a_970 (seq.update a_969 i13 (seq.unit e13))))
(assert (= a_971 (seq.update a_970 i14 (seq.unit e14))))
(assert (= a_972 (seq.update a_971 i15 (seq.unit e15))))
(assert (= a_973 (seq.update a_972 i16 (seq.unit e16))))
(assert (= a_974 (seq.update a_973 i17 (seq.unit e17))))
(assert (= a_975 (seq.update a_974 i18 (seq.unit e18))))
(assert (= a_976 (seq.update a_975 i19 (seq.unit e19))))
(assert (= a_977 (seq.update a_976 i20 (seq.unit e20))))
(assert (= a_978 (seq.update a_977 i21 (seq.unit e21))))
(assert (= a_979 (seq.update a_978 i22 (seq.unit e22))))
(assert (= a_980 (seq.update a_979 i23 (seq.unit e23))))
(assert (= a_981 (seq.update a_980 i24 (seq.unit e24))))
(assert (= a_982 (seq.update a_981 i25 (seq.unit e25))))
(assert (= a_983 (seq.update a_982 i26 (seq.unit e26))))
(assert (= a_984 (seq.update a_983 i27 (seq.unit e27))))
(assert (= a_985 (seq.update a_984 i28 (seq.unit e28))))
(assert (= a_986 (seq.update a_985 i29 (seq.unit e29))))
(assert (= a_987 (seq.update a_986 i1 (seq.unit e1))))
(assert (= a_988 (seq.update a1 i4 (seq.unit e4))))
(assert (= a_989 (seq.update a_988 i9 (seq.unit e9))))
(assert (= a_990 (seq.update a_989 i8 (seq.unit e8))))
(assert (= a_991 (seq.update a_990 i22 (seq.unit e22))))
(assert (= a_992 (seq.update a_991 i16 (seq.unit e16))))
(assert (= a_993 (seq.update a_992 i30 (seq.unit e30))))
(assert (= a_994 (seq.update a_993 i24 (seq.unit e24))))
(assert (= a_995 (seq.update a_994 i29 (seq.unit e29))))
(assert (= a_996 (seq.update a_995 i7 (seq.unit e7))))
(assert (= a_997 (seq.update a_996 i15 (seq.unit e15))))
(assert (= a_998 (seq.update a_997 i17 (seq.unit e17))))
(assert (= a_999 (seq.update a_998 i12 (seq.unit e12))))
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
(assert (not (= a_987 a_1017)))
(check-sat)
(exit)