(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory@1| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'u64_bool'_$memory@0| () T@$Memory_13868)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int |T@$2_S_Storage'u64_bool'|) |T@[Int]$2_S_Storage'u64_bool'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'u64_bool'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Bool)
(push 1)
(set-info :boogie-vc-id $2_S_publish_u64_bool$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27591) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 22078) (- 0 27928)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1)) (and (=> (= (ControlFlow 0 22078) (- 0 27949)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 22078) (- 0 28014)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 22148) 22096) anon7_Then_correct) (=> (= (ControlFlow 0 22148) 22078) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 22146) 22148)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'u64_bool'_$memory@0| ($Memory_13868 (|Store__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 21944) 22096) anon7_Then_correct) (=> (= (ControlFlow 0 21944) 22078) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'u64_bool''| $rsc))
 :qid |mutrefunpackz3bpl.1048:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 0)) (and (= $t4@0 (|$2_S_Storage'u64_bool'| _$t1 _$t2 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 21922) 22146) anon6_Then_correct) (=> (= (ControlFlow 0 21922) 21944) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27591) 21922) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 27591)))
(get-value ((ControlFlow 0 21922)))
(get-value ((ControlFlow 0 21944)))
(get-value ((ControlFlow 0 22078)))
(assert (not (= (ControlFlow 0 22078) (- 27928))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 27591)))
(get-value ((ControlFlow 0 21922)))
(get-value ((ControlFlow 0 21944)))
(get-value ((ControlFlow 0 22078)))
(assert (not (= (ControlFlow 0 22078) (- 28014))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 27591)))
(get-value ((ControlFlow 0 21922)))
(get-value ((ControlFlow 0 21944)))
(get-value ((ControlFlow 0 22078)))
(assert (not (= (ControlFlow 0 22078) (- 27949))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory@1| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'u64_#0'_$memory@0| () T@$Memory_14039)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int |T@$2_S_Storage'u64_#0'|) |T@[Int]$2_S_Storage'u64_#0'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_#0'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'u64_#0'|)) (! (= (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|Store__T@[Int]$2_S_Storage'u64_#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'u64_#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|Store__T@[Int]$2_S_Storage'u64_#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'u64_#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'u64_#0'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () |T@#0|)
(push 1)
(set-info :boogie-vc-id $2_S_publish_u64_y$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28082) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 22602) (- 0 28419)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1)) (and (=> (= (ControlFlow 0 22602) (- 0 28442)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory@1|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory@1|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 22602) (- 0 28507)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'u64_#0'_$memory@1| |$2_S_Storage'u64_#0'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 22672) 22620) anon7_Then_correct) (=> (= (ControlFlow 0 22672) 22602) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 22670) 22672)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'u64_#0'_$memory@0| ($Memory_14039 (|Store__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'u64_#0'_$memory@1| |$2_S_Storage'u64_#0'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 22468) 22620) anon7_Then_correct) (=> (= (ControlFlow 0 22468) 22602) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'u64_#0''| $rsc))
 :qid |mutrefunpackz3bpl.1162:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 1)) (and (= $t4@0 (|$2_S_Storage'u64_#0'| _$t1 _$t2 1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 22446) 22670) anon6_Then_correct) (=> (= (ControlFlow 0 22446) 22468) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28082) 22446) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 28082)))
(get-value ((ControlFlow 0 22446)))
(get-value ((ControlFlow 0 22468)))
(get-value ((ControlFlow 0 22602)))
(assert (not (= (ControlFlow 0 22602) (- 28442))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory@1| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'u64_bool'_$memory@0| () T@$Memory_13868)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int |T@$2_S_Storage'u64_bool'|) |T@[Int]$2_S_Storage'u64_bool'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'u64_bool'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Bool)
(push 1)
(set-info :boogie-vc-id $2_S_publish_u64_y$verify_instantiated_0)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28554) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 23135) (- 0 28891)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1)) (and (=> (= (ControlFlow 0 23135) (- 0 28912)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 23135) (- 0 28977)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 23205) 23153) anon7_Then_correct) (=> (= (ControlFlow 0 23205) 23135) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 23203) 23205)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'u64_bool'_$memory@0| ($Memory_13868 (|Store__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 23001) 23153) anon7_Then_correct) (=> (= (ControlFlow 0 23001) 23135) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'u64_bool''| $rsc))
 :qid |mutrefunpackz3bpl.1279:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 1)) (and (= $t4@0 (|$2_S_Storage'u64_bool'| _$t1 _$t2 1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 22979) 23203) anon6_Then_correct) (=> (= (ControlFlow 0 22979) 23001) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28554) 22979) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 28554)))
(get-value ((ControlFlow 0 22979)))
(get-value ((ControlFlow 0 23001)))
(get-value ((ControlFlow 0 23135)))
(assert (not (= (ControlFlow 0 23135) (- 28891))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 28554)))
(get-value ((ControlFlow 0 22979)))
(get-value ((ControlFlow 0 23001)))
(get-value ((ControlFlow 0 23135)))
(assert (not (= (ControlFlow 0 23135) (- 28977))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 28554)))
(get-value ((ControlFlow 0 22979)))
(get-value ((ControlFlow 0 23001)))
(get-value ((ControlFlow 0 23135)))
(assert (not (= (ControlFlow 0 23135) (- 28912))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory@1| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'#0_bool'_$memory@0| () T@$Memory_14381)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int |T@$2_S_Storage'#0_bool'|) |T@[Int]$2_S_Storage'#0_bool'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'#0_bool'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'#0_bool'|)) (! (= (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|Store__T@[Int]$2_S_Storage'#0_bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'#0_bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'#0_bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|Store__T@[Int]$2_S_Storage'#0_bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'#0_bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'#0_bool'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () |T@#0|)
(declare-fun _$t2 () Bool)
(push 1)
(set-info :boogie-vc-id $2_S_publish_x_bool$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29022) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 23659) (- 0 29359)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1)) (and (=> (= (ControlFlow 0 23659) (- 0 29382)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 23659) (- 0 29449)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory@1|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory@1|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'#0_bool'_$memory@1| |$2_S_Storage'#0_bool'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 23729) 23677) anon7_Then_correct) (=> (= (ControlFlow 0 23729) 23659) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 23727) 23729)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'#0_bool'_$memory@0| ($Memory_14381 (|Store__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'#0_bool'_$memory@1| |$2_S_Storage'#0_bool'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 23525) 23677) anon7_Then_correct) (=> (= (ControlFlow 0 23525) 23659) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'#0_bool''| $rsc))
 :qid |mutrefunpackz3bpl.1393:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 2)) (and (= $t4@0 (|$2_S_Storage'#0_bool'| _$t1 _$t2 2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 23503) 23727) anon6_Then_correct) (=> (= (ControlFlow 0 23503) 23525) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29022) 23503) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 29022)))
(get-value ((ControlFlow 0 23503)))
(get-value ((ControlFlow 0 23525)))
(get-value ((ControlFlow 0 23659)))
(assert (not (= (ControlFlow 0 23659) (- 29449))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory@1| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'u64_bool'_$memory@0| () T@$Memory_13868)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int |T@$2_S_Storage'u64_bool'|) |T@[Int]$2_S_Storage'u64_bool'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'u64_bool'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Bool)
(push 1)
(set-info :boogie-vc-id $2_S_publish_x_bool$verify_instantiated_0)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29494) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 24192) (- 0 29831)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1)) (and (=> (= (ControlFlow 0 24192) (- 0 29852)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 24192) (- 0 29917)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 24262) 24210) anon7_Then_correct) (=> (= (ControlFlow 0 24262) 24192) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 24260) 24262)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'u64_bool'_$memory@0| ($Memory_13868 (|Store__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 24058) 24210) anon7_Then_correct) (=> (= (ControlFlow 0 24058) 24192) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'u64_bool''| $rsc))
 :qid |mutrefunpackz3bpl.1510:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 2)) (and (= $t4@0 (|$2_S_Storage'u64_bool'| _$t1 _$t2 2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 24036) 24260) anon6_Then_correct) (=> (= (ControlFlow 0 24036) 24058) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29494) 24036) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 29494)))
(get-value ((ControlFlow 0 24036)))
(get-value ((ControlFlow 0 24058)))
(get-value ((ControlFlow 0 24192)))
(assert (not (= (ControlFlow 0 24192) (- 29831))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 29494)))
(get-value ((ControlFlow 0 24036)))
(get-value ((ControlFlow 0 24058)))
(get-value ((ControlFlow 0 24192)))
(assert (not (= (ControlFlow 0 24192) (- 29917))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 29494)))
(get-value ((ControlFlow 0 24036)))
(get-value ((ControlFlow 0 24058)))
(get-value ((ControlFlow 0 24192)))
(assert (not (= (ControlFlow 0 24192) (- 29852))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun $abort_code@1 () Int)
(declare-fun |$2_S_Storage'#0_#1'_$memory| () T@$Memory_14560)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'#0_#1'_$memory@0| () T@$Memory_14560)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'#0_#1'_| (|T@[Int]$2_S_Storage'#0_#1'| Int |T@$2_S_Storage'#0_#1'|) |T@[Int]$2_S_Storage'#0_#1'|)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_#1'_| (|T@[Int]$2_S_Storage'#0_#1'| Int) |T@$2_S_Storage'#0_#1'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'#0_#1'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'#0_#1'|)) (! (= (|Select__T@[Int]$2_S_Storage'#0_#1'_| (|Store__T@[Int]$2_S_Storage'#0_#1'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'#0_#1'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'#0_#1'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'#0_#1'_| (|Store__T@[Int]$2_S_Storage'#0_#1'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'#0_#1'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'#0_#1'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () |T@#0|)
(declare-fun _$t2 () |T@#1|)
(push 1)
(set-info :boogie-vc-id $2_S_publish_x_y$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29962) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 24716) (- 0 30289)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1)) (and (=> (= (ControlFlow 0 24716) (- 0 30312)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 24716) (- 0 30379)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 24786) 24734) anon7_Then_correct) (=> (= (ControlFlow 0 24786) 24716) anon7_Else_correct)))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14560| |$2_S_Storage'#0_#1'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 24784) 24786)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14560| |$2_S_Storage'#0_#1'_$memory|) (|$addr#$signer| _$t0))) (= |$2_S_Storage'#0_#1'_$memory@0| ($Memory_14560 (|Store__T@[Int]Bool_| (|domain#$Memory_14560| |$2_S_Storage'#0_#1'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'#0_#1'_| (|contents#$Memory_14560| |$2_S_Storage'#0_#1'_$memory|) (|$addr#$signer| _$t0) $t4@0)))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 24582) 24734) anon7_Then_correct) (=> (= (ControlFlow 0 24582) 24716) anon7_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'#0_#1'_| (|contents#$Memory_14560| |$2_S_Storage'#0_#1'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'#0_#1''| $rsc))
 :qid |mutrefunpackz3bpl.1690:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$2_S_Storage'#0_#1'_| (|contents#$Memory_14560| |$2_S_Storage'#0_#1'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 3)) (and (= $t4@0 (|$2_S_Storage'#0_#1'| _$t1 _$t2 3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 24560) 24784) anon6_Then_correct) (=> (= (ControlFlow 0 24560) 24582) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29962) 24560) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory@1| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'u64_#1'_$memory@0| () T@$Memory_14210)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int |T@$2_S_Storage'u64_#1'|) |T@[Int]$2_S_Storage'u64_#1'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_#1'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'u64_#1'|)) (! (= (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|Store__T@[Int]$2_S_Storage'u64_#1'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_#1'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'u64_#1'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|Store__T@[Int]$2_S_Storage'u64_#1'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'u64_#1'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'u64_#1'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () |T@#1|)
(push 1)
(set-info :boogie-vc-id $2_S_publish_x_y$verify_instantiated_0)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30426) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 25258) (- 0 30763)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1)) (and (=> (= (ControlFlow 0 25258) (- 0 30786)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory@1|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory@1|) 35)) 0))) (=> (= (ControlFlow 0 25258) (- 0 30851)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'u64_#1'_$memory@1| |$2_S_Storage'u64_#1'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 25328) 25276) anon7_Then_correct) (=> (= (ControlFlow 0 25328) 25258) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 25326) 25328)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'u64_#1'_$memory@0| ($Memory_14210 (|Store__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'u64_#1'_$memory@1| |$2_S_Storage'u64_#1'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 25124) 25276) anon7_Then_correct) (=> (= (ControlFlow 0 25124) 25258) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'u64_#1''| $rsc))
 :qid |mutrefunpackz3bpl.1807:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 3)) (and (= $t4@0 (|$2_S_Storage'u64_#1'| _$t1 _$t2 3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 25102) 25326) anon6_Then_correct) (=> (= (ControlFlow 0 25102) 25124) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 30426) 25102) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 30426)))
(get-value ((ControlFlow 0 25102)))
(get-value ((ControlFlow 0 25124)))
(get-value ((ControlFlow 0 25258)))
(assert (not (= (ControlFlow 0 25258) (- 30786))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory@1| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'u64_bool'_$memory@0| () T@$Memory_13868)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int |T@$2_S_Storage'u64_bool'|) |T@[Int]$2_S_Storage'u64_bool'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'u64_bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'u64_bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|Store__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'u64_bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'u64_bool'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Bool)
(push 1)
(set-info :boogie-vc-id $2_S_publish_x_y$verify_instantiated_1)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30898) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 25791) (- 0 31235)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 34)) 1)) (and (=> (= (ControlFlow 0 25791) (- 0 31256)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 25791) (- 0 31321)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory@1|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 25861) 25809) anon7_Then_correct) (=> (= (ControlFlow 0 25861) 25791) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 25859) 25861)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'u64_bool'_$memory@0| ($Memory_13868 (|Store__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'u64_bool'_$memory@1| |$2_S_Storage'u64_bool'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 25657) 25809) anon7_Then_correct) (=> (= (ControlFlow 0 25657) 25791) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'u64_bool''| $rsc))
 :qid |mutrefunpackz3bpl.1925:20|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 3)) (and (= $t4@0 (|$2_S_Storage'u64_bool'| _$t1 _$t2 3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 25635) 25859) anon6_Then_correct) (=> (= (ControlFlow 0 25635) 25657) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 30898) 25635) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 30898)))
(get-value ((ControlFlow 0 25635)))
(get-value ((ControlFlow 0 25657)))
(get-value ((ControlFlow 0 25791)))
(assert (not (= (ControlFlow 0 25791) (- 31235))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 30898)))
(get-value ((ControlFlow 0 25635)))
(get-value ((ControlFlow 0 25657)))
(get-value ((ControlFlow 0 25791)))
(assert (not (= (ControlFlow 0 25791) (- 31321))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 30898)))
(get-value ((ControlFlow 0 25635)))
(get-value ((ControlFlow 0 25657)))
(get-value ((ControlFlow 0 25791)))
(assert (not (= (ControlFlow 0 25791) (- 31256))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$2_S_Storage'u64_bool'_$memory| () T@$Memory_13868)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_bool'_| (|T@[Int]$2_S_Storage'u64_bool'| Int) |T@$2_S_Storage'u64_bool'|)
(declare-fun |$2_S_Storage'u64_#0'_$memory| () T@$Memory_14039)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#0'_| (|T@[Int]$2_S_Storage'u64_#0'| Int) |T@$2_S_Storage'u64_#0'|)
(declare-fun |$2_S_Storage'u64_#1'_$memory| () T@$Memory_14210)
(declare-fun |Select__T@[Int]$2_S_Storage'u64_#1'_| (|T@[Int]$2_S_Storage'u64_#1'| Int) |T@$2_S_Storage'u64_#1'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory@1| () T@$Memory_14381)
(declare-fun |Select__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int) |T@$2_S_Storage'#0_bool'|)
(declare-fun |$2_S_Storage'#0_bool'_$memory| () T@$Memory_14381)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun |$2_S_Storage'#0_bool'_$memory@0| () T@$Memory_14381)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$2_S_Storage'#0_bool'_| (|T@[Int]$2_S_Storage'#0_bool'| Int |T@$2_S_Storage'#0_bool'|) |T@[Int]$2_S_Storage'#0_bool'|)
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'#0_bool'|) ( ?x1 Int) ( ?x2 |T@$2_S_Storage'#0_bool'|)) (! (= (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|Store__T@[Int]$2_S_Storage'#0_bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$2_S_Storage'#0_bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$2_S_Storage'#0_bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|Store__T@[Int]$2_S_Storage'#0_bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$2_S_Storage'#0_bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$2_S_Storage'#0_bool'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () |T@#0|)
(declare-fun _$t2 () Bool)
(push 1)
(set-info :boogie-vc-id $2_S_publish_x_y$verify_instantiated_2)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31366) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 26315) (- 0 31703)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1)) (and (=> (= (ControlFlow 0 26315) (- 0 31726)) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0)))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (=> (= (ControlFlow 0 26315) (- 0 31793)) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory@1|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory@1|) 36))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= |$2_S_Storage'#0_bool'_$memory@1| |$2_S_Storage'#0_bool'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 26385) 26333) anon7_Then_correct) (=> (= (ControlFlow 0 26385) 26315) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 26383) 26385)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$2_S_Storage'#0_bool'_$memory@0| ($Memory_14381 (|Store__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) (|$addr#$signer| _$t0) $t4@0))) (= |$2_S_Storage'#0_bool'_$memory@1| |$2_S_Storage'#0_bool'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 26181) 26333) anon7_Then_correct) (=> (= (ControlFlow 0 26181) 26315) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) $a_0)))
(|$IsValid'$2_S_Storage'#0_bool''| $rsc))
 :qid |mutrefunpackz3bpl.2042:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (|$IsValid'u8'| 3)) (and (= $t4@0 (|$2_S_Storage'#0_bool'| _$t1 _$t2 3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34) (= (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 34)) 1))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35) (> (|$x#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 35)) 0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#0'| (|Select__T@[Int]$2_S_Storage'u64_#0'_| (|contents#$Memory_14039| |$2_S_Storage'u64_#0'_$memory|) 35)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35) (> (|$x#$2_S_Storage'u64_#1'| (|Select__T@[Int]$2_S_Storage'u64_#1'_| (|contents#$Memory_14210| |$2_S_Storage'u64_#1'_$memory|) 35)) 0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36) (|$y#$2_S_Storage'u64_bool'| (|Select__T@[Int]$2_S_Storage'u64_bool'_| (|contents#$Memory_13868| |$2_S_Storage'u64_bool'_$memory|) 36))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36) (|$y#$2_S_Storage'#0_bool'| (|Select__T@[Int]$2_S_Storage'#0_bool'_| (|contents#$Memory_14381| |$2_S_Storage'#0_bool'_$memory|) 36)))))) (and (=> (= (ControlFlow 0 26159) 26383) anon6_Then_correct) (=> (= (ControlFlow 0 26159) 26181) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 31366) 26159) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 31366)))
(get-value ((ControlFlow 0 26159)))
(get-value ((ControlFlow 0 26181)))
(get-value ((ControlFlow 0 26315)))
(assert (not (= (ControlFlow 0 26315) (- 31793))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@#1| 0)
(declare-datatypes ((|T@$2_S_Storage'#0_#1'| 0)) (((|$2_S_Storage'#0_#1'| (|$x#$2_S_Storage'#0_#1'| |T@#0|) (|$y#$2_S_Storage'#0_#1'| |T@#1|) (|$v#$2_S_Storage'#0_#1'| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$2_S_Storage'#0_#1'| 0)
(declare-datatypes ((T@$Memory_14560 0)) ((($Memory_14560 (|domain#$Memory_14560| |T@[Int]Bool|) (|contents#$Memory_14560| |T@[Int]$2_S_Storage'#0_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'#0_bool'| 0)) (((|$2_S_Storage'#0_bool'| (|$x#$2_S_Storage'#0_bool'| |T@#0|) (|$y#$2_S_Storage'#0_bool'| Bool) (|$v#$2_S_Storage'#0_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'#0_bool'| 0)
(declare-datatypes ((T@$Memory_14381 0)) ((($Memory_14381 (|domain#$Memory_14381| |T@[Int]Bool|) (|contents#$Memory_14381| |T@[Int]$2_S_Storage'#0_bool'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#1'| 0)) (((|$2_S_Storage'u64_#1'| (|$x#$2_S_Storage'u64_#1'| Int) (|$y#$2_S_Storage'u64_#1'| |T@#1|) (|$v#$2_S_Storage'u64_#1'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#1'| 0)
(declare-datatypes ((T@$Memory_14210 0)) ((($Memory_14210 (|domain#$Memory_14210| |T@[Int]Bool|) (|contents#$Memory_14210| |T@[Int]$2_S_Storage'u64_#1'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_#0'| 0)) (((|$2_S_Storage'u64_#0'| (|$x#$2_S_Storage'u64_#0'| Int) (|$y#$2_S_Storage'u64_#0'| |T@#0|) (|$v#$2_S_Storage'u64_#0'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_#0'| 0)
(declare-datatypes ((T@$Memory_14039 0)) ((($Memory_14039 (|domain#$Memory_14039| |T@[Int]Bool|) (|contents#$Memory_14039| |T@[Int]$2_S_Storage'u64_#0'|) ) ) ))
(declare-datatypes ((|T@$2_S_Storage'u64_bool'| 0)) (((|$2_S_Storage'u64_bool'| (|$x#$2_S_Storage'u64_bool'| Int) (|$y#$2_S_Storage'u64_bool'| Bool) (|$v#$2_S_Storage'u64_bool'| Int) ) ) ))
(declare-sort |T@[Int]$2_S_Storage'u64_bool'| 0)
(declare-datatypes ((T@$Memory_13868 0)) ((($Memory_13868 (|domain#$Memory_13868| |T@[Int]Bool|) (|contents#$Memory_13868| |T@[Int]$2_S_Storage'u64_bool'|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12035 0)) ((($Mutation_12035 (|l#$Mutation_12035| T@$Location) (|p#$Mutation_12035| (Seq Int)) (|v#$Mutation_12035| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_bool''| (|T@$2_S_Storage'u64_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#0''| (|T@$2_S_Storage'u64_#0'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'u64_#1''| (|T@$2_S_Storage'u64_#1'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_bool''| (|T@$2_S_Storage'#0_bool'|) Bool)
(declare-fun |$IsValid'$2_S_Storage'#0_#1''| (|T@$2_S_Storage'#0_#1'|) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefunpackz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefunpackz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefunpackz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefunpackz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefunpackz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefunpackz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefunpackz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |mutrefunpackz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefunpackz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefunpackz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefunpackz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefunpackz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefunpackz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefunpackz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefunpackz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefunpackz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$2_S_Storage'u64_bool'|) ) (! (= (|$IsValid'$2_S_Storage'u64_bool''| s)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_bool'| s)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_bool'| s))))
 :qid |mutrefunpackz3bpl.918:43|
 :skolemid |24|
 :pattern ( (|$IsValid'$2_S_Storage'u64_bool''| s))
)))
(assert (forall ((s@@0 |T@$2_S_Storage'u64_#0'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#0''| s@@0)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#0'| s@@0)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#0'| s@@0))))
 :qid |mutrefunpackz3bpl.940:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#0''| s@@0))
)))
(assert (forall ((s@@1 |T@$2_S_Storage'u64_#1'|) ) (! (= (|$IsValid'$2_S_Storage'u64_#1''| s@@1)  (and (and (|$IsValid'u64'| (|$x#$2_S_Storage'u64_#1'| s@@1)) true) (|$IsValid'u8'| (|$v#$2_S_Storage'u64_#1'| s@@1))))
 :qid |mutrefunpackz3bpl.962:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$2_S_Storage'u64_#1''| s@@1))
)))
(assert (forall ((s@@2 |T@$2_S_Storage'#0_bool'|) ) (! (= (|$IsValid'$2_S_Storage'#0_bool''| s@@2)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_bool'| s@@2))))
 :qid |mutrefunpackz3bpl.984:42|
 :skolemid |27|
 :pattern ( (|$IsValid'$2_S_Storage'#0_bool''| s@@2))
)))
(assert (forall ((s@@3 |T@$2_S_Storage'#0_#1'|) ) (! (= (|$IsValid'$2_S_Storage'#0_#1''| s@@3)  (and (and true true) (|$IsValid'u8'| (|$v#$2_S_Storage'#0_#1'| s@@3))))
 :qid |mutrefunpackz3bpl.1006:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$2_S_Storage'#0_#1''| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |mutrefunpackz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |mutrefunpackz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |mutrefunpackz3bpl.245:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $2_A_good$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31837) true)
))
(check-sat)
(pop 1)
; Valid
