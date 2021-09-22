(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-logic ALL)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-datatypes ((T@Vec_5695 0)) (((Vec_5695 (|v#Vec_5695| |T@[Int]Bool|) (|l#Vec_5695| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_5695) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_26041 0)) ((($Memory_26041 (|domain#$Memory_26041| |T@[Int]Bool|) (|contents#$Memory_26041| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_27154 0)) ((($Mutation_27154 (|l#$Mutation_27154| T@$Location) (|p#$Mutation_27154| T@Vec_1349) (|v#$Mutation_27154| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_22005 0)) ((($Mutation_22005 (|l#$Mutation_22005| T@$Location) (|p#$Mutation_22005| T@Vec_1349) (|v#$Mutation_22005| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_4710 0)) ((($Mutation_4710 (|l#$Mutation_4710| T@$Location) (|p#$Mutation_4710| T@Vec_1349) (|v#$Mutation_4710| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19728 0)) ((($Mutation_19728 (|l#$Mutation_19728| T@$Location) (|p#$Mutation_19728| T@Vec_1349) (|v#$Mutation_19728| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_1349) (|v#$Mutation_3601| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_17547 0)) ((($Mutation_17547 (|l#$Mutation_17547| T@$Location) (|p#$Mutation_17547| T@Vec_1349) (|v#$Mutation_17547| T@Vec_5695) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_5695 T@Vec_5695) Bool)
(declare-fun InRangeVec_2977 (T@Vec_5695 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_5695) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_5695 Bool) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4086 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun IndexOfVec_5695 (T@Vec_5695 Bool) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#3| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |CRSNbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |CRSNbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |CRSNbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |CRSNbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |CRSNbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |CRSNbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_5695) (v2 T@Vec_5695) ) (! (= (|$IsEqual'vec'bool''| v1 v2)  (and (= (|l#Vec_5695| v1) (|l#Vec_5695| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v1) i@@0) (|Select__T@[Int]Bool_| (|v#Vec_5695| v2) i@@0)))
 :qid |CRSNbpl.615:13|
 :skolemid |17|
))))
 :qid |CRSNbpl.613:30|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'bool''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_5695) ) (! (= (|$IsValid'vec'bool''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_5695| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) true)
 :qid |CRSNbpl.621:13|
 :skolemid |19|
))))
 :qid |CRSNbpl.619:30|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'bool''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_5695) (e Bool) ) (! (let ((i@@2 (|$IndexOfVec'bool'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@3) e))
 :qid |CRSNbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) j) e)))
 :qid |CRSNbpl.634:17|
 :skolemid |22|
)))))
 :qid |CRSNbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'bool'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4086 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |CRSNbpl.796:13|
 :skolemid |24|
))))
 :qid |CRSNbpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4086 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |CRSNbpl.802:13|
 :skolemid |26|
))))
 :qid |CRSNbpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4086 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |CRSNbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4086 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |CRSNbpl.815:17|
 :skolemid |29|
)))))
 :qid |CRSNbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |CRSNbpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |CRSNbpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |CRSNbpl.1075:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |CRSNbpl.1078:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s))))
 :qid |CRSNbpl.1130:43|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s))
)))
(assert (forall ((s@@0 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@0)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@0)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@0))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@0))))
 :qid |CRSNbpl.2758:33|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@0))
)))
(assert (forall ((v@@8 T@Vec_5695) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_5695| v@@8))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4086 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4086 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_5695) (e@@1 Bool) ) (! (let ((i@@10 (IndexOfVec_5695 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_2977 v@@10 i@@11) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@11) e@@1))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_2977 v@@10 i@@10) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) j@@1) e@@1)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_5695 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4086 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4086 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |CRSNbpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Bool|) (|l#4| |T@[Int]Bool|) (|l#5| Int) (|l#6| Bool) (i@@15 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]Bool_| |l#3| i@@15) (|Select__T@[Int]Bool_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |CRSNbpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Bool|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]Bool_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |CRSNbpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Bool|) (|l#4@@1| |T@[Int]Bool|) (|l#5@@1| Int) (|l#6@@0| Bool) (j@@3 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]Bool_| |l#3@@1| j@@3) (|Select__T@[Int]Bool_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |CRSNbpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |CRSNbpl.73:19|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |CRSNbpl.82:30|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |CRSNbpl.63:20|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t2 () Int)
(declare-fun inline$$1_BitVector_new$0$$t5@2 () T@Vec_5695)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_CRSN_CRSN_$memory () T@$Memory_26041)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_CRSN_CRSN_$memory@1 () T@$Memory_26041)
(declare-fun $t11@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun $1_CRSN_CRSN_$memory@0 () T@$Memory_26041)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int T@$1_CRSN_CRSN) |T@[Int]$1_CRSN_CRSN|)
(declare-fun |Select__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int) T@$1_CRSN_CRSN)
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_CRSN_CRSN_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@0 () T@$1_CRSN_CRSN)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun _$t1 () Int)
(declare-fun inline$$1_BitVector_new$0$$ret0@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t16@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t5@1 () T@Vec_5695)
(declare-fun inline$$1_BitVector_new$0$$t23@1 () T@$1_BitVector_BitVector)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_BitVector_new$0$$t11@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$ret0@0 () T@$1_BitVector_BitVector)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun |inline$$1_Vector_push_back'bool'$0$m'@1| () T@$Mutation_17547)
(declare-fun inline$$1_BitVector_new$0$$t21@2 () T@$Mutation_17547)
(declare-fun MapConstVec_4315 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4315 () Int)
(declare-fun |inline$$1_Vector_empty'bool'$0$v@1| () T@Vec_5695)
(declare-fun inline$$1_BitVector_new$0$$t19@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t20@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t21@1 () T@$Mutation_17547)
(declare-fun MapConstVec_3206 (Bool) |T@[Int]Bool|)
(declare-fun DefaultVecElem_3206 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t15@0 () Int)
(declare-fun inline$$Gt$1$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t10@0 () Int)
(declare-fun inline$$1_BitVector_new$0$$t21@0 () T@$Mutation_17547)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t18 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t14 () Int)
(declare-fun inline$$1_CRSN_has_crsn$0$$t1@1 () Bool)
(declare-fun $t9 () Int)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(push 1)
(set-info :boogie-vc-id $1_CRSN_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 80216) (let ((inline$$1_BitVector_new$0$anon25_Else_correct  (=> (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 34793) (- 0 81710)) (<= inline$$AddU64$0$dst@2 _$t2)) (=> (<= inline$$AddU64$0$dst@2 _$t2) (=> (= (ControlFlow 0 34793) (- 0 81717)) (= (|l#Vec_5695| inline$$1_BitVector_new$0$$t5@2) inline$$AddU64$0$dst@2)))))))
(let ((inline$$1_BitVector_new$0$anon24_Then_correct true))
(let ((inline$$1_BitVector_new$0$anon22_Then_correct true))
(let ((anon26_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 34953) (- 0 81642)) (not (<= _$t2 0))) (=> (not (<= _$t2 0)) (and (=> (= (ControlFlow 0 34953) (- 0 81652)) (not (>= _$t2 1024))) (=> (not (>= _$t2 1024)) (and (=> (= (ControlFlow 0 34953) (- 0 81662)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 34953) (- 0 81673)) (not (= _$t2 0))) (=> (not (= _$t2 0)) (and (=> (= (ControlFlow 0 34953) (- 0 81683)) (not (> _$t2 256))) (=> (not (> _$t2 256)) (=> (= (ControlFlow 0 34953) (- 0 81693)) (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory@1) (|$addr#$signer| _$t0))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 33196) (- 0 81525)) (or (or (or (or (<= _$t2 0) (>= _$t2 1024)) (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (= _$t2 0)) (> _$t2 256))) (=> (or (or (or (or (<= _$t2 0) (>= _$t2 1024)) (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (= _$t2 0)) (> _$t2 256)) (=> (= (ControlFlow 0 33196) (- 0 81559)) (or (or (or (or (and (<= _$t2 0) (= 7 $t11@0)) (and (>= _$t2 1024) (= 7 $t11@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)) (= 1 $t11@0))) (and (= _$t2 0) (= 7 $t11@0))) (and (> _$t2 256) (= 7 $t11@0))))))))
(let ((anon26_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t11@0 $abort_code@3) (= (ControlFlow 0 34967) 33196))) L7_correct)))
(let ((anon25_Then$1_correct  (=> (= $1_CRSN_CRSN_$memory@1 $1_CRSN_CRSN_$memory) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 35019) 34967) anon26_Then_correct) (=> (= (ControlFlow 0 35019) 34953) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 35017) 35019)) anon25_Then$1_correct)))
(let ((anon25_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_CRSN_CRSN_$memory@0 ($Memory_26041 (|Store__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0) $t24@0))) (= $1_CRSN_CRSN_$memory@1 $1_CRSN_CRSN_$memory@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 34881) 34967) anon26_Then_correct) (=> (= (ControlFlow 0 34881) 34953) anon26_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@1) (= $t24@0 ($1_CRSN_CRSN _$t1 _$t2 inline$$1_BitVector_new$0$$ret0@1))) (and (=> (= (ControlFlow 0 34859) 35017) anon25_Then_correct) (=> (= (ControlFlow 0 34859) 34881) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t11@0 $abort_code@2) (= (ControlFlow 0 35033) 33196))) L7_correct)))
(let ((inline$$1_BitVector_new$0$anon23_Else_correct  (=> (not inline$$Lt$1$dst@1) (and (=> (= (ControlFlow 0 34509) (- 0 81161)) (= inline$$1_BitVector_new$0$$t16@1 _$t2)) (=> (= inline$$1_BitVector_new$0$$t16@1 _$t2) (and (=> (= (ControlFlow 0 34509) (- 0 81168)) (= (|l#Vec_5695| inline$$1_BitVector_new$0$$t5@1) _$t2)) (=> (= (|l#Vec_5695| inline$$1_BitVector_new$0$$t5@1) _$t2) (=> (= inline$$1_BitVector_new$0$$t23@1 ($1_BitVector_BitVector _$t2 inline$$1_BitVector_new$0$$t5@1)) (=> (and (and (= inline$$1_BitVector_new$0$$t23@1 inline$$1_BitVector_new$0$$t23@1) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= inline$$1_BitVector_new$0$$ret0@1 inline$$1_BitVector_new$0$$t23@1))) (and (=> (= (ControlFlow 0 34509) 35033) anon24_Then_correct) (=> (= (ControlFlow 0 34509) 34859) anon24_Else_correct)))))))))))
(let ((inline$$1_BitVector_new$0$L10_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 inline$$1_BitVector_new$0$$t11@1) (= inline$$1_BitVector_new$0$$ret0@1 inline$$1_BitVector_new$0$$ret0@0)) (and (=> (= (ControlFlow 0 34181) 35033) anon24_Then_correct) (=> (= (ControlFlow 0 34181) 34859) anon24_Else_correct))))))
(let ((inline$$1_BitVector_new$0$anon25_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_BitVector_new$0$$t11@1 $abort_code@1) (= (ControlFlow 0 34807) 34181))) inline$$1_BitVector_new$0$L10_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 34753) 34807) inline$$1_BitVector_new$0$anon25_Then_correct) (=> (= (ControlFlow 0 34753) 34793) inline$$1_BitVector_new$0$anon25_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_new$0$$t16@1 1) $MAX_U64) (= (ControlFlow 0 34751) 34753)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_new$0$$t16@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ inline$$1_BitVector_new$0$$t16@1 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 34699) 34807) inline$$1_BitVector_new$0$anon25_Then_correct) (=> (= (ControlFlow 0 34699) 34793) inline$$1_BitVector_new$0$anon25_Else_correct))))))
(let ((inline$$1_BitVector_new$0$anon24_Else_correct  (=> (not false) (=> (and (= inline$$1_BitVector_new$0$$t5@2 (|v#$Mutation_17547| |inline$$1_Vector_push_back'bool'$0$m'@1|)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 34759) 34751) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 34759) 34699) inline$$AddU64$0$anon3_Else_correct))))))
(let ((|inline$$1_Vector_push_back'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'bool'$0$m'@1| ($Mutation_17547 (|l#$Mutation_17547| inline$$1_BitVector_new$0$$t21@2) (|p#$Mutation_17547| inline$$1_BitVector_new$0$$t21@2) (let ((l (|l#Vec_5695| (|v#$Mutation_17547| inline$$1_BitVector_new$0$$t21@2))))
(Vec_5695 (|Store__T@[Int]Bool_| (|v#Vec_5695| (|v#$Mutation_17547| inline$$1_BitVector_new$0$$t21@2)) l false) (+ l 1))))) (and (=> (= (ControlFlow 0 34580) 34821) inline$$1_BitVector_new$0$anon24_Then_correct) (=> (= (ControlFlow 0 34580) 34759) inline$$1_BitVector_new$0$anon24_Else_correct)))))
(let ((inline$$1_BitVector_new$0$anon23_Then_correct  (=> inline$$Lt$1$dst@1 (=> (and (= inline$$1_BitVector_new$0$$t21@2 ($Mutation_17547 ($Local 5) (Vec_1349 (MapConstVec_4315 DefaultVecElem_4315) 0) inline$$1_BitVector_new$0$$t5@1)) (= (ControlFlow 0 34586) 34580)) |inline$$1_Vector_push_back'bool'$0$anon0_correct|))))
(let ((inline$$1_BitVector_new$0$anon22_Else$1_correct  (and (=> (= (ControlFlow 0 34465) 34586) inline$$1_BitVector_new$0$anon23_Then_correct) (=> (= (ControlFlow 0 34465) 34509) inline$$1_BitVector_new$0$anon23_Else_correct))))
(let ((inline$$Lt$1$anon0_correct  (=> (and (= inline$$Lt$1$dst@1 (< inline$$1_BitVector_new$0$$t16@1 _$t2)) (= (ControlFlow 0 34455) 34465)) inline$$1_BitVector_new$0$anon22_Else$1_correct)))
(let ((inline$$1_BitVector_new$0$anon22_Else_correct  (=> (and (not false) (= |inline$$1_Vector_empty'bool'$0$v@1| |inline$$1_Vector_empty'bool'$0$v@1|)) (and (=> (= (ControlFlow 0 34461) (- 0 81032)) (<= 0 _$t2)) (=> (<= 0 _$t2) (and (=> (= (ControlFlow 0 34461) (- 0 81039)) (= (|l#Vec_5695| |inline$$1_Vector_empty'bool'$0$v@1|) 0)) (=> (= (|l#Vec_5695| |inline$$1_Vector_empty'bool'$0$v@1|) 0) (=> (|$IsValid'vec'bool''| inline$$1_BitVector_new$0$$t5@1) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t16@1) (|$IsValid'u64'| inline$$1_BitVector_new$0$$t19@1)) (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t20@1) (|$IsValid'vec'bool''| (|v#$Mutation_17547| inline$$1_BitVector_new$0$$t21@1)))) (and (and (not false) (<= inline$$1_BitVector_new$0$$t16@1 _$t2)) (and (= (|l#Vec_5695| inline$$1_BitVector_new$0$$t5@1) inline$$1_BitVector_new$0$$t16@1) (= (ControlFlow 0 34461) 34455)))) inline$$Lt$1$anon0_correct)))))))))
(let ((|inline$$1_Vector_empty'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'bool'$0$v@1| (Vec_5695 (MapConstVec_3206 DefaultVecElem_3206) 0)) (and (=> (= (ControlFlow 0 34321) 34835) inline$$1_BitVector_new$0$anon22_Then_correct) (=> (= (ControlFlow 0 34321) 34461) inline$$1_BitVector_new$0$anon22_Else_correct)))))
(let ((inline$$1_BitVector_new$0$anon21_Then_correct  (=> (and (and inline$$Lt$0$dst@1 (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 34327) 34321))) |inline$$1_Vector_empty'bool'$0$anon0_correct|)))
(let ((inline$$1_BitVector_new$0$anon21_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_BitVector_new$0$$t15@0 inline$$1_BitVector_new$0$$t15@0)) (and (= inline$$1_BitVector_new$0$$t11@1 inline$$1_BitVector_new$0$$t15@0) (= (ControlFlow 0 34283) 34181))) inline$$1_BitVector_new$0$L10_correct)))
(let ((inline$$1_BitVector_new$0$anon20_Then$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t15@0) (= inline$$1_BitVector_new$0$$t15@0 7)) (and (= inline$$1_BitVector_new$0$$t15@0 inline$$1_BitVector_new$0$$t15@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 34267) 34327) inline$$1_BitVector_new$0$anon21_Then_correct) (=> (= (ControlFlow 0 34267) 34283) inline$$1_BitVector_new$0$anon21_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< _$t2 1024)) (= (ControlFlow 0 34231) 34267)) inline$$1_BitVector_new$0$anon20_Then$1_correct)))
(let ((inline$$1_BitVector_new$0$anon20_Then_correct  (=> inline$$Gt$1$dst@1 (=> (and (|$IsValid'u64'| 1024) (= (ControlFlow 0 34237) 34231)) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_BitVector_new$0$anon20_Else_correct  (=> (and (and (not inline$$Gt$1$dst@1) (= inline$$1_BitVector_new$0$$t10@0 inline$$1_BitVector_new$0$$t10@0)) (and (= inline$$1_BitVector_new$0$$t11@1 inline$$1_BitVector_new$0$$t10@0) (= (ControlFlow 0 34175) 34181))) inline$$1_BitVector_new$0$L10_correct)))
(let ((inline$$1_BitVector_new$0$anon0$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t10@0) (= inline$$1_BitVector_new$0$$t10@0 7)) (and (= inline$$1_BitVector_new$0$$t10@0 inline$$1_BitVector_new$0$$t10@0) (= inline$$Gt$1$dst@1 inline$$Gt$1$dst@1))) (and (=> (= (ControlFlow 0 34159) 34237) inline$$1_BitVector_new$0$anon20_Then_correct) (=> (= (ControlFlow 0 34159) 34175) inline$$1_BitVector_new$0$anon20_Else_correct))))))
(let ((inline$$Gt$1$anon0_correct  (=> (and (= inline$$Gt$1$dst@1 (> _$t2 0)) (= (ControlFlow 0 34123) 34159)) inline$$1_BitVector_new$0$anon0$1_correct)))
(let ((inline$$1_BitVector_new$0$anon0_correct  (=> (and (and (= (|l#Vec_1349| (|p#$Mutation_17547| inline$$1_BitVector_new$0$$t21@0)) 0) (= _$t2 _$t2)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 34129) 34123))) inline$$Gt$1$anon0_correct)))
(let ((anon23_Then_correct  (=> (and inline$$Le$0$dst@1 (= (ControlFlow 0 34841) 34129)) inline$$1_BitVector_new$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= $t22 $t22)) (and (= $t11@0 $t22) (= (ControlFlow 0 33400) 33196))) L7_correct)))
(let ((anon22_Then$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t22) (= $t22 7)) (and (= $t22 $t22) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 33384) 34841) anon23_Then_correct) (=> (= (ControlFlow 0 33384) 33400) anon23_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= _$t2 256)) (= (ControlFlow 0 33348) 33384)) anon22_Then$1_correct)))
(let ((anon22_Then_correct  (=> inline$$Gt$0$dst@1 (=> (and (|$IsValid'u64'| 256) (= (ControlFlow 0 33354) 33348)) inline$$Le$0$anon0_correct))))
(let ((anon22_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= $t18 $t18)) (and (= $t11@0 $t18) (= (ControlFlow 0 33298) 33196))) L7_correct)))
(let ((anon21_Then$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t18) (= $t18 7)) (and (= $t18 $t18) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 33282) 33354) anon22_Then_correct) (=> (= (ControlFlow 0 33282) 33298) anon22_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t2 0)) (= (ControlFlow 0 33246) 33282)) anon21_Then$1_correct)))
(let ((anon21_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 33252) 33246)) inline$$Gt$0$anon0_correct))))
(let ((anon21_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t14 $t14)) (and (= $t11@0 $t14) (= (ControlFlow 0 33068) 33196))) L7_correct)))
(let ((anon20_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t14) (= $t14 1)) (and (= $t14 $t14) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 33052) 33252) anon21_Then_correct) (=> (= (ControlFlow 0 33052) 33068) anon21_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_CRSN_has_crsn$0$$t1@1)) (= (ControlFlow 0 33016) 33052)) anon20_Else$1_correct)))
(let ((anon20_Else_correct  (=> (and (not false) (= (ControlFlow 0 33022) 33016)) inline$$Not$0$anon0_correct)))
(let ((anon20_Then_correct true))
(let ((inline$$1_CRSN_has_crsn$0$anon0_correct  (=> (= $t9 $t9) (=> (and (= inline$$1_CRSN_has_crsn$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) $t9)) (= inline$$1_CRSN_has_crsn$0$$t1@1 inline$$1_CRSN_has_crsn$0$$t1@1)) (and (=> (= (ControlFlow 0 32972) 35047) anon20_Then_correct) (=> (= (ControlFlow 0 32972) 33022) anon20_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (|$IsValid'u64'| _$t1)) (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_26041| $1_CRSN_CRSN_$memory) $a_0)))
(|$IsValid'$1_CRSN_CRSN'| $rsc))
 :qid |CRSNbpl.2821:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_26041| $1_CRSN_CRSN_$memory) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'address'| $t9)) (and (= $t9 (|$addr#$signer| _$t0)) (= (ControlFlow 0 32978) 32972))))) inline$$1_CRSN_has_crsn$0$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 80216) 32978) anon0$1_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-datatypes ((T@Vec_5695 0)) (((Vec_5695 (|v#Vec_5695| |T@[Int]Bool|) (|l#Vec_5695| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_5695) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_26041 0)) ((($Memory_26041 (|domain#$Memory_26041| |T@[Int]Bool|) (|contents#$Memory_26041| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_27154 0)) ((($Mutation_27154 (|l#$Mutation_27154| T@$Location) (|p#$Mutation_27154| T@Vec_1349) (|v#$Mutation_27154| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_22005 0)) ((($Mutation_22005 (|l#$Mutation_22005| T@$Location) (|p#$Mutation_22005| T@Vec_1349) (|v#$Mutation_22005| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_4710 0)) ((($Mutation_4710 (|l#$Mutation_4710| T@$Location) (|p#$Mutation_4710| T@Vec_1349) (|v#$Mutation_4710| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19728 0)) ((($Mutation_19728 (|l#$Mutation_19728| T@$Location) (|p#$Mutation_19728| T@Vec_1349) (|v#$Mutation_19728| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_1349) (|v#$Mutation_3601| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_17547 0)) ((($Mutation_17547 (|l#$Mutation_17547| T@$Location) (|p#$Mutation_17547| T@Vec_1349) (|v#$Mutation_17547| T@Vec_5695) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_5695 T@Vec_5695) Bool)
(declare-fun InRangeVec_2977 (T@Vec_5695 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_5695) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_5695 Bool) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4086 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun IndexOfVec_5695 (T@Vec_5695 Bool) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#3| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |CRSNbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |CRSNbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |CRSNbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |CRSNbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |CRSNbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |CRSNbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_5695) (v2 T@Vec_5695) ) (! (= (|$IsEqual'vec'bool''| v1 v2)  (and (= (|l#Vec_5695| v1) (|l#Vec_5695| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v1) i@@0) (|Select__T@[Int]Bool_| (|v#Vec_5695| v2) i@@0)))
 :qid |CRSNbpl.615:13|
 :skolemid |17|
))))
 :qid |CRSNbpl.613:30|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'bool''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_5695) ) (! (= (|$IsValid'vec'bool''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_5695| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) true)
 :qid |CRSNbpl.621:13|
 :skolemid |19|
))))
 :qid |CRSNbpl.619:30|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'bool''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_5695) (e Bool) ) (! (let ((i@@2 (|$IndexOfVec'bool'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@3) e))
 :qid |CRSNbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) j) e)))
 :qid |CRSNbpl.634:17|
 :skolemid |22|
)))))
 :qid |CRSNbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'bool'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4086 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |CRSNbpl.796:13|
 :skolemid |24|
))))
 :qid |CRSNbpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4086 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |CRSNbpl.802:13|
 :skolemid |26|
))))
 :qid |CRSNbpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4086 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |CRSNbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4086 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |CRSNbpl.815:17|
 :skolemid |29|
)))))
 :qid |CRSNbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |CRSNbpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |CRSNbpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |CRSNbpl.1075:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |CRSNbpl.1078:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s))))
 :qid |CRSNbpl.1130:43|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s))
)))
(assert (forall ((s@@0 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@0)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@0)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@0))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@0))))
 :qid |CRSNbpl.2758:33|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@0))
)))
(assert (forall ((v@@8 T@Vec_5695) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_5695| v@@8))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4086 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4086 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_5695) (e@@1 Bool) ) (! (let ((i@@10 (IndexOfVec_5695 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_2977 v@@10 i@@11) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@11) e@@1))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_2977 v@@10 i@@10) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) j@@1) e@@1)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_5695 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4086 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4086 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |CRSNbpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Bool|) (|l#4| |T@[Int]Bool|) (|l#5| Int) (|l#6| Bool) (i@@15 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]Bool_| |l#3| i@@15) (|Select__T@[Int]Bool_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |CRSNbpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Bool|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]Bool_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |CRSNbpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Bool|) (|l#4@@1| |T@[Int]Bool|) (|l#5@@1| Int) (|l#6@@0| Bool) (j@@3 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]Bool_| |l#3@@1| j@@3) (|Select__T@[Int]Bool_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |CRSNbpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |CRSNbpl.73:19|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |CRSNbpl.82:30|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |CRSNbpl.63:20|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
; Valid

