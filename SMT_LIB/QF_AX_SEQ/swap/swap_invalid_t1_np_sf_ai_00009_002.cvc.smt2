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
(declare-fun a_939 () (Seq Element))
(declare-fun a_940 () (Seq Element))
(declare-fun a_942 () (Seq Element))
(declare-fun a_944 () (Seq Element))
(declare-fun a_946 () (Seq Element))
(declare-fun a_948 () (Seq Element))
(declare-fun a_950 () (Seq Element))
(declare-fun a_952 () (Seq Element))
(declare-fun a_954 () (Seq Element))
(declare-fun a_955 () (Seq Element))
(declare-fun a_957 () (Seq Element))
(declare-fun a_959 () (Seq Element))
(declare-fun a_961 () (Seq Element))
(declare-fun a_963 () (Seq Element))
(declare-fun a_965 () (Seq Element))
(declare-fun a_967 () (Seq Element))
(declare-fun a_969 () (Seq Element))
(declare-fun a_971 () (Seq Element))
(declare-fun a_972 () (Seq Element))
(declare-fun a_973 () (Seq Element))
(declare-fun a_975 () (Seq Element))
(declare-fun a_977 () (Seq Element))
(declare-fun a_979 () (Seq Element))
(declare-fun a_980 () (Seq Element))
(declare-fun a_982 () (Seq Element))
(declare-fun a_984 () (Seq Element))
(declare-fun a_986 () (Seq Element))
(declare-fun a_988 () (Seq Element))
(declare-fun a_990 () (Seq Element))
(declare-fun a_992 () (Seq Element))
(declare-fun a_994 () (Seq Element))
(declare-fun a_996 () (Seq Element))
(declare-fun e_938 () Element)
(declare-fun e_941 () Element)
(declare-fun e_943 () Element)
(declare-fun e_945 () Element)
(declare-fun e_947 () Element)
(declare-fun e_949 () Element)
(declare-fun e_951 () Element)
(declare-fun e_953 () Element)
(declare-fun e_956 () Element)
(declare-fun e_958 () Element)
(declare-fun e_960 () Element)
(declare-fun e_962 () Element)
(declare-fun e_964 () Element)
(declare-fun e_966 () Element)
(declare-fun e_968 () Element)
(declare-fun e_970 () Element)
(declare-fun e_974 () Element)
(declare-fun e_976 () Element)
(declare-fun e_978 () Element)
(declare-fun e_981 () Element)
(declare-fun e_983 () Element)
(declare-fun e_985 () Element)
(declare-fun e_987 () Element)
(declare-fun e_989 () Element)
(declare-fun e_991 () Element)
(declare-fun e_993 () Element)
(declare-fun e_995 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (= a_939 (seq.update a1 i2 (seq.unit e_938))))
(assert (= a_940 (seq.update a_939 i2 (seq.unit e_938))))
(assert (= a_942 (seq.update a_940 i4 (seq.unit e_941))))
(assert (= a_944 (seq.update a_942 i6 (seq.unit e_943))))
(assert (= a_946 (seq.update a_944 i5 (seq.unit e_945))))
(assert (= a_948 (seq.update a_946 i0 (seq.unit e_947))))
(assert (= a_950 (seq.update a_948 i2 (seq.unit e_949))))
(assert (= a_952 (seq.update a_950 i8 (seq.unit e_951))))
(assert (= a_954 (seq.update a_952 i7 (seq.unit e_953))))
(assert (= a_955 (seq.update a_954 i7 (seq.unit e_953))))
(assert (= a_957 (seq.update a_955 i8 (seq.unit e_956))))
(assert (= a_959 (seq.update a_957 i1 (seq.unit e_958))))
(assert (= a_961 (seq.update a_959 i3 (seq.unit e_960))))
(assert (= a_963 (seq.update a_961 i7 (seq.unit e_962))))
(assert (= a_965 (seq.update a_963 i7 (seq.unit e_964))))
(assert (= a_967 (seq.update a_965 i0 (seq.unit e_966))))
(assert (= a_969 (seq.update a_967 i5 (seq.unit e_968))))
(assert (= a_971 (seq.update a_969 i2 (seq.unit e_970))))
(assert (= a_972 (seq.update a_944 i0 (seq.unit e_947))))
(assert (= a_973 (seq.update a_972 i5 (seq.unit e_945))))
(assert (= a_975 (seq.update a_973 i8 (seq.unit e_974))))
(assert (= a_977 (seq.update a_975 i2 (seq.unit e_976))))
(assert (= a_979 (seq.update a_977 i7 (seq.unit e_978))))
(assert (= a_980 (seq.update a_979 i7 (seq.unit e_978))))
(assert (= a_982 (seq.update a_980 i1 (seq.unit e_981))))
(assert (= a_984 (seq.update a_982 i8 (seq.unit e_983))))
(assert (= a_986 (seq.update a_984 i7 (seq.unit e_985))))
(assert (= a_988 (seq.update a_986 i3 (seq.unit e_987))))
(assert (= a_990 (seq.update a_988 i0 (seq.unit e_989))))
(assert (= a_992 (seq.update a_990 i7 (seq.unit e_991))))
(assert (= a_994 (seq.update a_992 i6 (seq.unit e_993))))
(assert (= a_996 (seq.update a_994 i2 (seq.unit e_995))))
(assert (= e_938 (seq.nth a1 i2)))
(assert (= e_941 (seq.nth a_940 i6)))
(assert (= e_943 (seq.nth a_940 i4)))
(assert (= e_945 (seq.nth a_944 i0)))
(assert (= e_947 (seq.nth a_944 i5)))
(assert (= e_949 (seq.nth a_948 i8)))
(assert (= e_951 (seq.nth a_948 i2)))
(assert (= e_953 (seq.nth a_952 i7)))
(assert (= e_956 (seq.nth a_955 i1)))
(assert (= e_958 (seq.nth a_955 i8)))
(assert (= e_960 (seq.nth a_959 i7)))
(assert (= e_962 (seq.nth a_959 i3)))
(assert (= e_964 (seq.nth a_963 i0)))
(assert (= e_966 (seq.nth a_963 i7)))
(assert (= e_968 (seq.nth a_967 i2)))
(assert (= e_970 (seq.nth a_967 i5)))
(assert (= e_974 (seq.nth a_973 i2)))
(assert (= e_976 (seq.nth a_973 i8)))
(assert (= e_978 (seq.nth a_977 i7)))
(assert (= e_981 (seq.nth a_980 i8)))
(assert (= e_983 (seq.nth a_980 i1)))
(assert (= e_985 (seq.nth a_984 i3)))
(assert (= e_987 (seq.nth a_984 i7)))
(assert (= e_989 (seq.nth a_988 i7)))
(assert (= e_991 (seq.nth a_988 i0)))
(assert (= e_993 (seq.nth a_992 i2)))
(assert (= e_995 (seq.nth a_992 i6)))
(assert (not (= a_971 a_996)))
(check-sat)
(exit)