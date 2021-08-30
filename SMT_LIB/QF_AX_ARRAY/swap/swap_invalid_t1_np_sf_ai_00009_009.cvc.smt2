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
(declare-fun a_1 () (Array Index Element))
(declare-fun a_10 () (Array Index Element))
(declare-fun a_12 () (Array Index Element))
(declare-fun a_14 () (Array Index Element))
(declare-fun a_16 () (Array Index Element))
(declare-fun a_18 () (Array Index Element))
(declare-fun a_20 () (Array Index Element))
(declare-fun a_21 () (Array Index Element))
(declare-fun a_23 () (Array Index Element))
(declare-fun a_25 () (Array Index Element))
(declare-fun a_27 () (Array Index Element))
(declare-fun a_29 () (Array Index Element))
(declare-fun a_3 () (Array Index Element))
(declare-fun a_31 () (Array Index Element))
(declare-fun a_33 () (Array Index Element))
(declare-fun a_34 () (Array Index Element))
(declare-fun a_35 () (Array Index Element))
(declare-fun a_37 () (Array Index Element))
(declare-fun a_38 () (Array Index Element))
(declare-fun a_40 () (Array Index Element))
(declare-fun a_42 () (Array Index Element))
(declare-fun a_44 () (Array Index Element))
(declare-fun a_46 () (Array Index Element))
(declare-fun a_48 () (Array Index Element))
(declare-fun a_5 () (Array Index Element))
(declare-fun a_50 () (Array Index Element))
(declare-fun a_52 () (Array Index Element))
(declare-fun a_53 () (Array Index Element))
(declare-fun a_55 () (Array Index Element))
(declare-fun a_57 () (Array Index Element))
(declare-fun a_59 () (Array Index Element))
(declare-fun a_6 () (Array Index Element))
(declare-fun a_61 () (Array Index Element))
(declare-fun a_63 () (Array Index Element))
(declare-fun a_65 () (Array Index Element))
(declare-fun a_8 () (Array Index Element))
(declare-fun e_0 () Element)
(declare-fun e_11 () Element)
(declare-fun e_13 () Element)
(declare-fun e_15 () Element)
(declare-fun e_17 () Element)
(declare-fun e_19 () Element)
(declare-fun e_2 () Element)
(declare-fun e_22 () Element)
(declare-fun e_24 () Element)
(declare-fun e_26 () Element)
(declare-fun e_28 () Element)
(declare-fun e_30 () Element)
(declare-fun e_32 () Element)
(declare-fun e_36 () Element)
(declare-fun e_39 () Element)
(declare-fun e_4 () Element)
(declare-fun e_41 () Element)
(declare-fun e_43 () Element)
(declare-fun e_45 () Element)
(declare-fun e_47 () Element)
(declare-fun e_49 () Element)
(declare-fun e_51 () Element)
(declare-fun e_54 () Element)
(declare-fun e_56 () Element)
(declare-fun e_58 () Element)
(declare-fun e_60 () Element)
(declare-fun e_62 () Element)
(declare-fun e_64 () Element)
(declare-fun e_7 () Element)
(declare-fun e_9 () Element)
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
(assert (= a_1 (store a1 i8 e_0)))
(assert (= a_10 (store a_8 i7 e_9)))
(assert (= a_12 (store a_10 i1 e_11)))
(assert (= a_14 (store a_12 i6 e_13)))
(assert (= a_16 (store a_14 i0 e_15)))
(assert (= a_18 (store a_16 i8 e_17)))
(assert (= a_20 (store a_18 i6 e_19)))
(assert (= a_21 (store a_20 i6 e_19)))
(assert (= a_23 (store a_21 i1 e_22)))
(assert (= a_25 (store a_23 i5 e_24)))
(assert (= a_27 (store a_25 i3 e_26)))
(assert (= a_29 (store a_27 i6 e_28)))
(assert (= a_3 (store a_1 i2 e_2)))
(assert (= a_31 (store a_29 i0 e_30)))
(assert (= a_33 (store a_31 i4 e_32)))
(assert (= a_34 (store a1 i2 e_2)))
(assert (= a_35 (store a_34 i8 e_0)))
(assert (= a_37 (store a_35 i4 e_36)))
(assert (= a_38 (store a_37 i4 e_36)))
(assert (= a_40 (store a_38 i2 e_39)))
(assert (= a_42 (store a_40 i7 e_41)))
(assert (= a_44 (store a_42 i6 e_43)))
(assert (= a_46 (store a_44 i1 e_45)))
(assert (= a_48 (store a_46 i0 e_47)))
(assert (= a_5 (store a_3 i4 e_4)))
(assert (= a_50 (store a_48 i8 e_49)))
(assert (= a_52 (store a_50 i6 e_51)))
(assert (= a_53 (store a_52 i6 e_51)))
(assert (= a_55 (store a_53 i1 e_54)))
(assert (= a_57 (store a_55 i5 e_56)))
(assert (= a_59 (store a_57 i3 e_58)))
(assert (= a_6 (store a_5 i4 e_4)))
(assert (= a_61 (store a_59 i6 e_60)))
(assert (= a_63 (store a_61 i5 e_62)))
(assert (= a_65 (store a_63 i0 e_64)))
(assert (= a_8 (store a_6 i2 e_7)))
(assert (= e_0 (select a1 i2)))
(assert (= e_11 (select a_10 i6)))
(assert (= e_13 (select a_10 i1)))
(assert (= e_15 (select a_14 i8)))
(assert (= e_17 (select a_14 i0)))
(assert (= e_19 (select a_18 i6)))
(assert (= e_2 (select a1 i8)))
(assert (= e_22 (select a_21 i5)))
(assert (= e_24 (select a_21 i1)))
(assert (= e_26 (select a_25 i6)))
(assert (= e_28 (select a_25 i3)))
(assert (= e_30 (select a_29 i4)))
(assert (= e_32 (select a_29 i0)))
(assert (= e_36 (select a_35 i4)))
(assert (= e_39 (select a_38 i7)))
(assert (= e_4 (select a_3 i4)))
(assert (= e_41 (select a_38 i2)))
(assert (= e_43 (select a_42 i1)))
(assert (= e_45 (select a_42 i6)))
(assert (= e_47 (select a_46 i8)))
(assert (= e_49 (select a_46 i0)))
(assert (= e_51 (select a_50 i6)))
(assert (= e_54 (select a_53 i5)))
(assert (= e_56 (select a_53 i1)))
(assert (= e_58 (select a_57 i6)))
(assert (= e_60 (select a_57 i3)))
(assert (= e_62 (select a_61 i0)))
(assert (= e_64 (select a_61 i5)))
(assert (= e_7 (select a_6 i7)))
(assert (= e_9 (select a_6 i2)))
(assert (not (= a_33 a_65)))
(check-sat)
(exit)
