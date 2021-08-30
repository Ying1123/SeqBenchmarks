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
(declare-fun a_1011 () (Seq Element))
(declare-fun a_1013 () (Seq Element))
(declare-fun a_1015 () (Seq Element))
(declare-fun a_1017 () (Seq Element))
(declare-fun a_1019 () (Seq Element))
(declare-fun a_1021 () (Seq Element))
(declare-fun a_1023 () (Seq Element))
(declare-fun a_1025 () (Seq Element))
(declare-fun a_1027 () (Seq Element))
(declare-fun a_1029 () (Seq Element))
(declare-fun a_1031 () (Seq Element))
(declare-fun a_1033 () (Seq Element))
(declare-fun a_1035 () (Seq Element))
(declare-fun a_1037 () (Seq Element))
(declare-fun a_1039 () (Seq Element))
(declare-fun a_1041 () (Seq Element))
(declare-fun a_1043 () (Seq Element))
(declare-fun a_1045 () (Seq Element))
(declare-fun a_1047 () (Seq Element))
(declare-fun a_1049 () (Seq Element))
(declare-fun a_1050 () (Seq Element))
(declare-fun a_1051 () (Seq Element))
(declare-fun a_1053 () (Seq Element))
(declare-fun a_1055 () (Seq Element))
(declare-fun a_1057 () (Seq Element))
(declare-fun a_1059 () (Seq Element))
(declare-fun a_1061 () (Seq Element))
(declare-fun a_1063 () (Seq Element))
(declare-fun a_1065 () (Seq Element))
(declare-fun a_1067 () (Seq Element))
(declare-fun a_1069 () (Seq Element))
(declare-fun a_1071 () (Seq Element))
(declare-fun a_1073 () (Seq Element))
(declare-fun a_1075 () (Seq Element))
(declare-fun a_1077 () (Seq Element))
(declare-fun a_1079 () (Seq Element))
(declare-fun a_1081 () (Seq Element))
(declare-fun a_1083 () (Seq Element))
(declare-fun a_1085 () (Seq Element))
(declare-fun a_1087 () (Seq Element))
(declare-fun e_1010 () Element)
(declare-fun e_1012 () Element)
(declare-fun e_1014 () Element)
(declare-fun e_1016 () Element)
(declare-fun e_1018 () Element)
(declare-fun e_1020 () Element)
(declare-fun e_1022 () Element)
(declare-fun e_1024 () Element)
(declare-fun e_1026 () Element)
(declare-fun e_1028 () Element)
(declare-fun e_1030 () Element)
(declare-fun e_1032 () Element)
(declare-fun e_1034 () Element)
(declare-fun e_1036 () Element)
(declare-fun e_1038 () Element)
(declare-fun e_1040 () Element)
(declare-fun e_1042 () Element)
(declare-fun e_1044 () Element)
(declare-fun e_1046 () Element)
(declare-fun e_1048 () Element)
(declare-fun e_1052 () Element)
(declare-fun e_1054 () Element)
(declare-fun e_1056 () Element)
(declare-fun e_1058 () Element)
(declare-fun e_1060 () Element)
(declare-fun e_1062 () Element)
(declare-fun e_1064 () Element)
(declare-fun e_1066 () Element)
(declare-fun e_1068 () Element)
(declare-fun e_1070 () Element)
(declare-fun e_1072 () Element)
(declare-fun e_1074 () Element)
(declare-fun e_1076 () Element)
(declare-fun e_1078 () Element)
(declare-fun e_1080 () Element)
(declare-fun e_1082 () Element)
(declare-fun e_1084 () Element)
(declare-fun e_1086 () Element)
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
(declare-fun i9 () Int)
(assert (= a_1011 (seq.update a1 i3 (seq.unit e_1010))))
(assert (= a_1013 (seq.update a_1011 i9 (seq.unit e_1012))))
(assert (= a_1015 (seq.update a_1013 i2 (seq.unit e_1014))))
(assert (= a_1017 (seq.update a_1015 i7 (seq.unit e_1016))))
(assert (= a_1019 (seq.update a_1017 i0 (seq.unit e_1018))))
(assert (= a_1021 (seq.update a_1019 i2 (seq.unit e_1020))))
(assert (= a_1023 (seq.update a_1021 i8 (seq.unit e_1022))))
(assert (= a_1025 (seq.update a_1023 i9 (seq.unit e_1024))))
(assert (= a_1027 (seq.update a_1025 i6 (seq.unit e_1026))))
(assert (= a_1029 (seq.update a_1027 i3 (seq.unit e_1028))))
(assert (= a_1031 (seq.update a_1029 i7 (seq.unit e_1030))))
(assert (= a_1033 (seq.update a_1031 i9 (seq.unit e_1032))))
(assert (= a_1035 (seq.update a_1033 i5 (seq.unit e_1034))))
(assert (= a_1037 (seq.update a_1035 i1 (seq.unit e_1036))))
(assert (= a_1039 (seq.update a_1037 i6 (seq.unit e_1038))))
(assert (= a_1041 (seq.update a_1039 i4 (seq.unit e_1040))))
(assert (= a_1043 (seq.update a_1041 i0 (seq.unit e_1042))))
(assert (= a_1045 (seq.update a_1043 i3 (seq.unit e_1044))))
(assert (= a_1047 (seq.update a_1045 i8 (seq.unit e_1046))))
(assert (= a_1049 (seq.update a_1047 i3 (seq.unit e_1048))))
(assert (= a_1050 (seq.update a1 i9 (seq.unit e_1012))))
(assert (= a_1051 (seq.update a_1050 i3 (seq.unit e_1010))))
(assert (= a_1053 (seq.update a_1051 i2 (seq.unit e_1052))))
(assert (= a_1055 (seq.update a_1053 i7 (seq.unit e_1054))))
(assert (= a_1057 (seq.update a_1055 i2 (seq.unit e_1056))))
(assert (= a_1059 (seq.update a_1057 i0 (seq.unit e_1058))))
(assert (= a_1061 (seq.update a_1059 i9 (seq.unit e_1060))))
(assert (= a_1063 (seq.update a_1061 i8 (seq.unit e_1062))))
(assert (= a_1065 (seq.update a_1063 i6 (seq.unit e_1064))))
(assert (= a_1067 (seq.update a_1065 i3 (seq.unit e_1066))))
(assert (= a_1069 (seq.update a_1067 i9 (seq.unit e_1068))))
(assert (= a_1071 (seq.update a_1069 i7 (seq.unit e_1070))))
(assert (= a_1073 (seq.update a_1071 i1 (seq.unit e_1072))))
(assert (= a_1075 (seq.update a_1073 i5 (seq.unit e_1074))))
(assert (= a_1077 (seq.update a_1075 i6 (seq.unit e_1076))))
(assert (= a_1079 (seq.update a_1077 i4 (seq.unit e_1078))))
(assert (= a_1081 (seq.update a_1079 i3 (seq.unit e_1080))))
(assert (= a_1083 (seq.update a_1081 i0 (seq.unit e_1082))))
(assert (= a_1085 (seq.update a_1083 i8 (seq.unit e_1084))))
(assert (= a_1087 (seq.update a_1085 i3 (seq.unit e_1086))))
(assert (= e_1010 (seq.nth a1 i9)))
(assert (= e_1012 (seq.nth a1 i3)))
(assert (= e_1014 (seq.nth a_1013 i7)))
(assert (= e_1016 (seq.nth a_1013 i2)))
(assert (= e_1018 (seq.nth a_1017 i2)))
(assert (= e_1020 (seq.nth a_1017 i0)))
(assert (= e_1022 (seq.nth a_1021 i9)))
(assert (= e_1024 (seq.nth a_1021 i8)))
(assert (= e_1026 (seq.nth a_1025 i3)))
(assert (= e_1028 (seq.nth a_1025 i6)))
(assert (= e_1030 (seq.nth a_1029 i9)))
(assert (= e_1032 (seq.nth a_1029 i7)))
(assert (= e_1034 (seq.nth a_1033 i1)))
(assert (= e_1036 (seq.nth a_1033 i5)))
(assert (= e_1038 (seq.nth a_1037 i4)))
(assert (= e_1040 (seq.nth a_1037 i6)))
(assert (= e_1042 (seq.nth a_1041 i3)))
(assert (= e_1044 (seq.nth a_1041 i0)))
(assert (= e_1046 (seq.nth a_1045 i3)))
(assert (= e_1048 (seq.nth a_1045 i8)))
(assert (= e_1052 (seq.nth a_1051 i7)))
(assert (= e_1054 (seq.nth a_1051 i2)))
(assert (= e_1056 (seq.nth a_1055 i0)))
(assert (= e_1058 (seq.nth a_1055 i2)))
(assert (= e_1060 (seq.nth a_1059 i8)))
(assert (= e_1062 (seq.nth a_1059 i9)))
(assert (= e_1064 (seq.nth a_1063 i3)))
(assert (= e_1066 (seq.nth a_1063 i6)))
(assert (= e_1068 (seq.nth a_1067 i7)))
(assert (= e_1070 (seq.nth a_1067 i9)))
(assert (= e_1072 (seq.nth a_1071 i5)))
(assert (= e_1074 (seq.nth a_1071 i1)))
(assert (= e_1076 (seq.nth a_1075 i4)))
(assert (= e_1078 (seq.nth a_1075 i6)))
(assert (= e_1080 (seq.nth a_1079 i0)))
(assert (= e_1082 (seq.nth a_1079 i3)))
(assert (= e_1084 (seq.nth a_1083 i3)))
(assert (= e_1086 (seq.nth a_1083 i8)))
(assert (not (= a_1049 a_1087)))
(check-sat)
(exit)
