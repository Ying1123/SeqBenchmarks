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
(declare-fun a_1012 () (Array Index Element))
(declare-fun a_1014 () (Array Index Element))
(declare-fun a_1016 () (Array Index Element))
(declare-fun a_1018 () (Array Index Element))
(declare-fun a_1020 () (Array Index Element))
(declare-fun a_1022 () (Array Index Element))
(declare-fun a_1024 () (Array Index Element))
(declare-fun a_1026 () (Array Index Element))
(declare-fun a_1028 () (Array Index Element))
(declare-fun a_1030 () (Array Index Element))
(declare-fun a_1032 () (Array Index Element))
(declare-fun a_1034 () (Array Index Element))
(declare-fun a_1036 () (Array Index Element))
(declare-fun a_1038 () (Array Index Element))
(declare-fun a_1040 () (Array Index Element))
(declare-fun a_1042 () (Array Index Element))
(declare-fun a_1044 () (Array Index Element))
(declare-fun a_1046 () (Array Index Element))
(declare-fun a_1048 () (Array Index Element))
(declare-fun a_1050 () (Array Index Element))
(declare-fun a_1051 () (Array Index Element))
(declare-fun a_1052 () (Array Index Element))
(declare-fun a_1054 () (Array Index Element))
(declare-fun a_1056 () (Array Index Element))
(declare-fun a_1058 () (Array Index Element))
(declare-fun a_1060 () (Array Index Element))
(declare-fun a_1062 () (Array Index Element))
(declare-fun a_1064 () (Array Index Element))
(declare-fun a_1066 () (Array Index Element))
(declare-fun a_1068 () (Array Index Element))
(declare-fun a_1070 () (Array Index Element))
(declare-fun a_1072 () (Array Index Element))
(declare-fun a_1074 () (Array Index Element))
(declare-fun a_1076 () (Array Index Element))
(declare-fun a_1078 () (Array Index Element))
(declare-fun a_1080 () (Array Index Element))
(declare-fun a_1082 () (Array Index Element))
(declare-fun a_1084 () (Array Index Element))
(declare-fun a_1086 () (Array Index Element))
(declare-fun a_1088 () (Array Index Element))
(declare-fun e_1011 () Element)
(declare-fun e_1013 () Element)
(declare-fun e_1015 () Element)
(declare-fun e_1017 () Element)
(declare-fun e_1019 () Element)
(declare-fun e_1021 () Element)
(declare-fun e_1023 () Element)
(declare-fun e_1025 () Element)
(declare-fun e_1027 () Element)
(declare-fun e_1029 () Element)
(declare-fun e_1031 () Element)
(declare-fun e_1033 () Element)
(declare-fun e_1035 () Element)
(declare-fun e_1037 () Element)
(declare-fun e_1039 () Element)
(declare-fun e_1041 () Element)
(declare-fun e_1043 () Element)
(declare-fun e_1045 () Element)
(declare-fun e_1047 () Element)
(declare-fun e_1049 () Element)
(declare-fun e_1053 () Element)
(declare-fun e_1055 () Element)
(declare-fun e_1057 () Element)
(declare-fun e_1059 () Element)
(declare-fun e_1061 () Element)
(declare-fun e_1063 () Element)
(declare-fun e_1065 () Element)
(declare-fun e_1067 () Element)
(declare-fun e_1069 () Element)
(declare-fun e_1071 () Element)
(declare-fun e_1073 () Element)
(declare-fun e_1075 () Element)
(declare-fun e_1077 () Element)
(declare-fun e_1079 () Element)
(declare-fun e_1081 () Element)
(declare-fun e_1083 () Element)
(declare-fun e_1085 () Element)
(declare-fun e_1087 () Element)
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
(declare-fun i9 () Index)
(assert (= a_1012 (store a1 i3 e_1011)))
(assert (= a_1014 (store a_1012 i9 e_1013)))
(assert (= a_1016 (store a_1014 i2 e_1015)))
(assert (= a_1018 (store a_1016 i7 e_1017)))
(assert (= a_1020 (store a_1018 i0 e_1019)))
(assert (= a_1022 (store a_1020 i2 e_1021)))
(assert (= a_1024 (store a_1022 i8 e_1023)))
(assert (= a_1026 (store a_1024 i9 e_1025)))
(assert (= a_1028 (store a_1026 i6 e_1027)))
(assert (= a_1030 (store a_1028 i3 e_1029)))
(assert (= a_1032 (store a_1030 i7 e_1031)))
(assert (= a_1034 (store a_1032 i9 e_1033)))
(assert (= a_1036 (store a_1034 i5 e_1035)))
(assert (= a_1038 (store a_1036 i1 e_1037)))
(assert (= a_1040 (store a_1038 i6 e_1039)))
(assert (= a_1042 (store a_1040 i4 e_1041)))
(assert (= a_1044 (store a_1042 i0 e_1043)))
(assert (= a_1046 (store a_1044 i3 e_1045)))
(assert (= a_1048 (store a_1046 i8 e_1047)))
(assert (= a_1050 (store a_1048 i3 e_1049)))
(assert (= a_1051 (store a1 i9 e_1013)))
(assert (= a_1052 (store a_1051 i3 e_1011)))
(assert (= a_1054 (store a_1052 i2 e_1053)))
(assert (= a_1056 (store a_1054 i7 e_1055)))
(assert (= a_1058 (store a_1056 i2 e_1057)))
(assert (= a_1060 (store a_1058 i0 e_1059)))
(assert (= a_1062 (store a_1060 i9 e_1061)))
(assert (= a_1064 (store a_1062 i8 e_1063)))
(assert (= a_1066 (store a_1064 i6 e_1065)))
(assert (= a_1068 (store a_1066 i3 e_1067)))
(assert (= a_1070 (store a_1068 i9 e_1069)))
(assert (= a_1072 (store a_1070 i7 e_1071)))
(assert (= a_1074 (store a_1072 i1 e_1073)))
(assert (= a_1076 (store a_1074 i5 e_1075)))
(assert (= a_1078 (store a_1076 i6 e_1077)))
(assert (= a_1080 (store a_1078 i4 e_1079)))
(assert (= a_1082 (store a_1080 i3 e_1081)))
(assert (= a_1084 (store a_1082 i0 e_1083)))
(assert (= a_1086 (store a_1084 i9 e_1085)))
(assert (= a_1088 (store a_1086 i3 e_1087)))
(assert (= e_1011 (select a1 i9)))
(assert (= e_1013 (select a1 i3)))
(assert (= e_1015 (select a_1014 i7)))
(assert (= e_1017 (select a_1014 i2)))
(assert (= e_1019 (select a_1018 i2)))
(assert (= e_1021 (select a_1018 i0)))
(assert (= e_1023 (select a_1022 i9)))
(assert (= e_1025 (select a_1022 i8)))
(assert (= e_1027 (select a_1026 i3)))
(assert (= e_1029 (select a_1026 i6)))
(assert (= e_1031 (select a_1030 i9)))
(assert (= e_1033 (select a_1030 i7)))
(assert (= e_1035 (select a_1034 i1)))
(assert (= e_1037 (select a_1034 i5)))
(assert (= e_1039 (select a_1038 i4)))
(assert (= e_1041 (select a_1038 i6)))
(assert (= e_1043 (select a_1042 i3)))
(assert (= e_1045 (select a_1042 i0)))
(assert (= e_1047 (select a_1046 i3)))
(assert (= e_1049 (select a_1046 i8)))
(assert (= e_1053 (select a_1052 i7)))
(assert (= e_1055 (select a_1052 i2)))
(assert (= e_1057 (select a_1056 i0)))
(assert (= e_1059 (select a_1056 i2)))
(assert (= e_1061 (select a_1060 i8)))
(assert (= e_1063 (select a_1060 i9)))
(assert (= e_1065 (select a_1064 i3)))
(assert (= e_1067 (select a_1064 i6)))
(assert (= e_1069 (select a_1068 i7)))
(assert (= e_1071 (select a_1068 i9)))
(assert (= e_1073 (select a_1072 i5)))
(assert (= e_1075 (select a_1072 i1)))
(assert (= e_1077 (select a_1076 i4)))
(assert (= e_1079 (select a_1076 i6)))
(assert (= e_1081 (select a_1080 i0)))
(assert (= e_1083 (select a_1080 i3)))
(assert (= e_1085 (select a_1084 i3)))
(assert (= e_1087 (select a_1084 i9)))
(assert (not (= a_1050 a_1088)))
(check-sat)
(exit)
