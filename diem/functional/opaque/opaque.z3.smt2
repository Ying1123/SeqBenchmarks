(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11382 0)) ((($Memory_11382 (|domain#$Memory_11382| |T@[Int]Bool|) (|contents#$Memory_11382| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9705 0)) ((($Mutation_9705 (|l#$Mutation_9705| T@$Location) (|p#$Mutation_9705| (Seq Int)) (|v#$Mutation_9705| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |opaquez3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |opaquez3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |opaquez3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |opaquez3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |opaquez3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |opaquez3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |opaquez3bpl.590:13|
 :skolemid |15|
))))
 :qid |opaquez3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |opaquez3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |opaquez3bpl.603:17|
 :skolemid |18|
)))))
 :qid |opaquez3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |opaquez3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |opaquez3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |opaquez3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |opaquez3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |opaquez3bpl.911:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |opaquez3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |opaquez3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |opaquez3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () Bool)
(declare-fun $42_TestLet_R_$memory () T@$Memory_11382)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5@0 () Bool)
(declare-fun |Select__T@[Int]$42_TestLet_R_| (|T@[Int]$42_TestLet_R| Int) T@$42_TestLet_R)
(push 1)
(set-info :boogie-vc-id $42_TestLet_local_let_with_memory_access$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19694) (let ((L3_correct  (=> (and (= $t2@0 $t2@0) (= (ControlFlow 0 15026) (- 0 19848))) (= $t2@0 (let ((e@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_11382| $42_TestLet_R_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_11382| $42_TestLet_R_$memory) _$t1))))
 (or (and e@@0 e@@0) e@@0))))))
(let ((anon3_Else_correct  (=> (not $t3@0) (=> (and (and (= $t5@0 (|Select__T@[Int]Bool_| (|domain#$Memory_11382| $42_TestLet_R_$memory) _$t1)) (= $t5@0 $t5@0)) (and (= $t2@0 $t5@0) (= (ControlFlow 0 15000) 15026))) L3_correct))))
(let ((anon3_Then_correct  (=> (and (and $t3@0 (= true true)) (and (= $t2@0 true) (= (ControlFlow 0 15044) 15026))) L3_correct)))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestLet_R_| (|contents#$Memory_11382| $42_TestLet_R_$memory) $a_0)))
(|$IsValid'$42_TestLet_R'| $rsc))
 :qid |opaquez3bpl.946:20|
 :skolemid |25|
 :pattern ( (|Select__T@[Int]$42_TestLet_R_| (|contents#$Memory_11382| $42_TestLet_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_11382| $42_TestLet_R_$memory) _$t0)))) (and (=> (= (ControlFlow 0 14980) 15044) anon3_Then_correct) (=> (= (ControlFlow 0 14980) 15000) anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19694) 14980) anon0$1_correct)))
anon0_correct))))))
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
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11382 0)) ((($Memory_11382 (|domain#$Memory_11382| |T@[Int]Bool|) (|contents#$Memory_11382| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9705 0)) ((($Mutation_9705 (|l#$Mutation_9705| T@$Location) (|p#$Mutation_9705| (Seq Int)) (|v#$Mutation_9705| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |opaquez3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |opaquez3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |opaquez3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |opaquez3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |opaquez3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |opaquez3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |opaquez3bpl.590:13|
 :skolemid |15|
))))
 :qid |opaquez3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |opaquez3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |opaquez3bpl.603:17|
 :skolemid |18|
)))))
 :qid |opaquez3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |opaquez3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |opaquez3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |opaquez3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |opaquez3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |opaquez3bpl.911:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |opaquez3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |opaquez3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |opaquez3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun $t3 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t2 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19885) (let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@2)) (and (=> (= (ControlFlow 0 15686) (- 0 20331)) (= inline$$AddU64$1$dst@2 $t3)) (=> (= inline$$AddU64$1$dst@2 $t3) (=> (= (ControlFlow 0 15686) (- 0 20339)) (= inline$$AddU64$2$dst@2 (- inline$$AddU64$1$dst@2 1)))))))))
(let ((anon10_Then_correct true))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 15634) 15700) anon10_Then_correct) (=> (= (ControlFlow 0 15634) 15686) anon10_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ _$t0 _$t1) $MAX_U64) (= (ControlFlow 0 15632) 15634)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 _$t1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ _$t0 _$t1)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 15580) 15700) anon10_Then_correct) (=> (= (ControlFlow 0 15580) 15686) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 15640) 15632) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 15640) 15580) inline$$AddU64$2$anon3_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 15473) 15720) anon9_Then_correct) (=> (= (ControlFlow 0 15473) 15640) anon9_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ inline$$AddU64$0$dst@2 _$t1) $MAX_U64) (= (ControlFlow 0 15471) 15473)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$AddU64$0$dst@2 _$t1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ inline$$AddU64$0$dst@2 _$t1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 15419) 15720) anon9_Then_correct) (=> (= (ControlFlow 0 15419) 15640) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 15479) 15471) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 15479) 15419) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 15312) 15734) anon8_Then_correct) (=> (= (ControlFlow 0 15312) 15479) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 1) $MAX_U64) (= (ControlFlow 0 15310) 15312)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 15258) 15734) anon8_Then_correct) (=> (= (ControlFlow 0 15258) 15479) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (= $t2 (+ _$t0 1))) (=> (and (and (= $t3 (+ $t2 _$t1)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 15318) 15310) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 15318) 15258) inline$$AddU64$0$anon3_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19885) 15318) anon0$1_correct)))
anon0_correct))))))))))))))))))
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
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11382 0)) ((($Memory_11382 (|domain#$Memory_11382| |T@[Int]Bool|) (|contents#$Memory_11382| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9705 0)) ((($Mutation_9705 (|l#$Mutation_9705| T@$Location) (|p#$Mutation_9705| (Seq Int)) (|v#$Mutation_9705| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |opaquez3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |opaquez3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |opaquez3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |opaquez3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |opaquez3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |opaquez3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |opaquez3bpl.590:13|
 :skolemid |15|
))))
 :qid |opaquez3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |opaquez3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |opaquez3bpl.603:17|
 :skolemid |18|
)))))
 :qid |opaquez3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |opaquez3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |opaquez3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |opaquez3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |opaquez3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |opaquez3bpl.911:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |opaquez3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |opaquez3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |opaquez3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t15 () Int)
(declare-fun $t5@0 () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$Div$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@1 () Int)
(declare-fun $t7@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_abort$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20368) (let ((L2_correct  (=> (= (ControlFlow 0 16537) (- 0 21050)) (or (or (= $t3 0) (> $t3 18446744073709551615)) (> $t4 18446744073709551615)))))
(let ((anon10_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 16507) 16537)) L2_correct))))
(let ((anon9_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 16551) 16537)) L2_correct))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 16565) 16537)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$MulU64$0$dst@2)) (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0))) (=> (and (and (= |$temp_0'u64'@2| |$temp_0'u64'@2|) (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@3| |$temp_0'u64'@3|) (= $t15 (div $t5@0 $t3)))) (and (=> (= (ControlFlow 0 16493) (- 0 20985)) (not (= $t3 0))) (=> (not (= $t3 0)) (and (=> (= (ControlFlow 0 16493) (- 0 20996)) (not (> $t3 18446744073709551615))) (=> (not (> $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 16493) (- 0 21007)) (not (> $t4 18446744073709551615))) (=> (not (> $t4 18446744073709551615)) (and (=> (= (ControlFlow 0 16493) (- 0 21018)) (= (|v#$Mutation_3430| $t0@0) (- (+ $t15 $t3) $t3))) (=> (= (|v#$Mutation_3430| $t0@0) (- (+ $t15 $t3) $t3)) (=> (= (ControlFlow 0 16493) (- 0 21036)) (= (|v#$Mutation_3430| $t1@0) $t4)))))))))))))))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 16377) 16507) anon10_Then_correct) (=> (= (ControlFlow 0 16377) 16493) anon10_Else_correct))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* $t6@0 $t13@0) $MAX_U64) (= (ControlFlow 0 16375) 16377)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* $t6@0 $t13@0)) (=> (and (and (= inline$$MulU64$0$dst@1 (* $t6@0 $t13@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 16323) 16507) anon10_Then_correct) (=> (= (ControlFlow 0 16323) 16493) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$Div$0$dst@2)) (= $t13@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 16383) 16375) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 16383) 16323) inline$$MulU64$0$anon3_Else_correct))))))
(let ((inline$$Div$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$Div$0$dst@2 inline$$Div$0$dst@0)) (and (=> (= (ControlFlow 0 16204) 16551) anon9_Then_correct) (=> (= (ControlFlow 0 16204) 16383) anon9_Else_correct))))))
(let ((inline$$Div$0$anon3_Then_correct  (=> (and (= inline$$AddU64$0$dst@2 0) (= (ControlFlow 0 16202) 16204)) inline$$Div$0$anon3_Then$1_correct)))
(let ((inline$$Div$0$anon3_Else_correct  (=> (not (= inline$$AddU64$0$dst@2 0)) (=> (and (and (= inline$$Div$0$dst@1 (div $t7@0 inline$$AddU64$0$dst@2)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$Div$0$dst@2 inline$$Div$0$dst@1))) (and (=> (= (ControlFlow 0 16154) 16551) anon9_Then_correct) (=> (= (ControlFlow 0 16154) 16383) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 16210) 16202) inline$$Div$0$anon3_Then_correct) (=> (= (ControlFlow 0 16210) 16154) inline$$Div$0$anon3_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 16057) 16565) anon8_Then_correct) (=> (= (ControlFlow 0 16057) 16210) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0 $t9@0) $MAX_U64) (= (ControlFlow 0 16055) 16057)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0 $t9@0)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0 $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 16003) 16565) anon8_Then_correct) (=> (= (ControlFlow 0 16003) 16210) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (and (and (= $t3 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t5@0 (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0))))) (and (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= $t6@0 (|v#$Mutation_3430| _$t0)))) (and (and (= $t6@0 $t6@0) (= $t7@0 (|v#$Mutation_3430| _$t0))) (and (= $t8@0 (|v#$Mutation_3430| _$t0)) (= $t9@0 (|v#$Mutation_3430| _$t1)))))) (and (=> (= (ControlFlow 0 16063) 16055) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 16063) 16003) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 20368) 16063) anon0$1_correct)))
anon0_correct)))))))))))))))))))
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
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11382 0)) ((($Memory_11382 (|domain#$Memory_11382| |T@[Int]Bool|) (|contents#$Memory_11382| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9705 0)) ((($Mutation_9705 (|l#$Mutation_9705| T@$Location) (|p#$Mutation_9705| (Seq Int)) (|v#$Mutation_9705| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |opaquez3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |opaquez3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |opaquez3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |opaquez3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |opaquez3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |opaquez3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |opaquez3bpl.590:13|
 :skolemid |15|
))))
 :qid |opaquez3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |opaquez3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |opaquez3bpl.603:17|
 :skolemid |18|
)))))
 :qid |opaquez3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |opaquez3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |opaquez3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |opaquez3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |opaquez3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |opaquez3bpl.911:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |opaquez3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |opaquez3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |opaquez3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t15 () Int)
(declare-fun $t5@0 () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$Div$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@1 () Int)
(declare-fun $t7@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_abort_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21089) (let ((L2_correct  (=> (= (ControlFlow 0 17402) (- 0 21765)) (or (or (not (= $t3 0)) (>= $t3 18446744073709551615)) (>= $t4 18446744073709551615)))))
(let ((anon10_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 17370) 17402)) L2_correct))))
(let ((anon9_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 17416) 17402)) L2_correct))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 17430) 17402)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$MulU64$0$dst@2)) (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0))) (=> (and (and (= |$temp_0'u64'@2| |$temp_0'u64'@2|) (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@3| |$temp_0'u64'@3|) (= $t15 (div $t5@0 $t3)))) (and (=> (= (ControlFlow 0 17356) (- 0 21706)) (not (not (= $t3 0)))) (=> (not (not (= $t3 0))) (and (=> (= (ControlFlow 0 17356) (- 0 21719)) (not (>= $t3 18446744073709551615))) (=> (not (>= $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 17356) (- 0 21730)) (not (>= $t4 18446744073709551615))) (=> (not (>= $t4 18446744073709551615)) (and (=> (= (ControlFlow 0 17356) (- 0 21741)) (= (|v#$Mutation_3430| $t0@0) $t15)) (=> (= (|v#$Mutation_3430| $t0@0) $t15) (=> (= (ControlFlow 0 17356) (- 0 21751)) (= (|v#$Mutation_3430| $t1@0) $t4)))))))))))))))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 17246) 17370) anon10_Then_correct) (=> (= (ControlFlow 0 17246) 17356) anon10_Else_correct))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* $t6@0 $t13@0) $MAX_U64) (= (ControlFlow 0 17244) 17246)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* $t6@0 $t13@0)) (=> (and (and (= inline$$MulU64$0$dst@1 (* $t6@0 $t13@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 17192) 17370) anon10_Then_correct) (=> (= (ControlFlow 0 17192) 17356) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$Div$0$dst@2)) (= $t13@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 17252) 17244) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 17252) 17192) inline$$MulU64$0$anon3_Else_correct))))))
(let ((inline$$Div$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$Div$0$dst@2 inline$$Div$0$dst@0)) (and (=> (= (ControlFlow 0 17073) 17416) anon9_Then_correct) (=> (= (ControlFlow 0 17073) 17252) anon9_Else_correct))))))
(let ((inline$$Div$0$anon3_Then_correct  (=> (and (= inline$$AddU64$0$dst@2 0) (= (ControlFlow 0 17071) 17073)) inline$$Div$0$anon3_Then$1_correct)))
(let ((inline$$Div$0$anon3_Else_correct  (=> (not (= inline$$AddU64$0$dst@2 0)) (=> (and (and (= inline$$Div$0$dst@1 (div $t7@0 inline$$AddU64$0$dst@2)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$Div$0$dst@2 inline$$Div$0$dst@1))) (and (=> (= (ControlFlow 0 17023) 17416) anon9_Then_correct) (=> (= (ControlFlow 0 17023) 17252) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 17079) 17071) inline$$Div$0$anon3_Then_correct) (=> (= (ControlFlow 0 17079) 17023) inline$$Div$0$anon3_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 16926) 17430) anon8_Then_correct) (=> (= (ControlFlow 0 16926) 17079) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0 $t9@0) $MAX_U64) (= (ControlFlow 0 16924) 16926)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0 $t9@0)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0 $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 16872) 17430) anon8_Then_correct) (=> (= (ControlFlow 0 16872) 17079) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (and (and (= $t3 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t5@0 (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0))))) (and (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= $t6@0 (|v#$Mutation_3430| _$t0)))) (and (and (= $t6@0 $t6@0) (= $t7@0 (|v#$Mutation_3430| _$t0))) (and (= $t8@0 (|v#$Mutation_3430| _$t0)) (= $t9@0 (|v#$Mutation_3430| _$t1)))))) (and (=> (= (ControlFlow 0 16932) 16924) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 16932) 16872) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 21089) 16932) anon0$1_correct)))
anon0_correct)))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 21089)))
(get-value ((ControlFlow 0 16932)))
(get-value ((ControlFlow 0 16872)))
(get-value ((ControlFlow 0 17079)))
(get-value ((ControlFlow 0 17023)))
(get-value ((ControlFlow 0 17252)))
(get-value ((ControlFlow 0 17192)))
(get-value ((ControlFlow 0 17356)))
(assert (not (= (ControlFlow 0 17356) (- 21706))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 21089)))
(get-value ((ControlFlow 0 16932)))
(get-value ((ControlFlow 0 16872)))
(get-value ((ControlFlow 0 17079)))
(get-value ((ControlFlow 0 17071)))
(get-value ((ControlFlow 0 17073)))
(get-value ((ControlFlow 0 17416)))
(get-value ((ControlFlow 0 17402)))
(assert (not (= (ControlFlow 0 17402) (- 21765))))
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
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11382 0)) ((($Memory_11382 (|domain#$Memory_11382| |T@[Int]Bool|) (|contents#$Memory_11382| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9705 0)) ((($Mutation_9705 (|l#$Mutation_9705| T@$Location) (|p#$Mutation_9705| (Seq Int)) (|v#$Mutation_9705| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |opaquez3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |opaquez3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |opaquez3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |opaquez3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |opaquez3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |opaquez3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |opaquez3bpl.590:13|
 :skolemid |15|
))))
 :qid |opaquez3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |opaquez3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |opaquez3bpl.603:17|
 :skolemid |18|
)))))
 :qid |opaquez3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |opaquez3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |opaquez3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |opaquez3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |opaquez3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |opaquez3bpl.911:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |opaquez3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |opaquez3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |opaquez3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t8 () Bool)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t10 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $t5 () Int)
(declare-fun $t6 () Int)
(declare-fun |$temp_0'u64'@4| () Int)
(declare-fun |$temp_0'u64'@5| () Int)
(declare-fun $t11 () Int)
(declare-fun $t4@0 () Int)
(declare-fun $t2 () Int)
(declare-fun $t3 () Int)
(declare-fun $t9 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_abort_opaque_caller$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21806) (let ((anon5_Else_correct  (=> (not $t8) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) |$temp_0'u64'@2|)) (|$IsValid'u64'| (|v#$Mutation_3430| $t0@0))) (=> (and (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) |$temp_0'u64'@3|)) (|$IsValid'u64'| (|v#$Mutation_3430| $t1@0))) (and (|$IsValid'u64'| (|v#$Mutation_3430| $t0@0)) (|$IsValid'u64'| (|v#$Mutation_3430| $t1@0)))) (=> (and (and (and (= $t10 (div $t7@0 $t5)) (= (|v#$Mutation_3430| $t0@0) (- (+ $t10 $t5) $t5))) (and (= (|v#$Mutation_3430| $t1@0) $t6) (= |$temp_0'u64'@4| (|v#$Mutation_3430| $t0@0)))) (and (and (= |$temp_0'u64'@4| |$temp_0'u64'@4|) (= |$temp_0'u64'@5| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@5| |$temp_0'u64'@5|) (= $t11 (div $t4@0 $t2))))) (and (=> (= (ControlFlow 0 17860) (- 0 22207)) (not (= $t2 0))) (=> (not (= $t2 0)) (and (=> (= (ControlFlow 0 17860) (- 0 22218)) (not (> $t2 18446744073709551615))) (=> (not (> $t2 18446744073709551615)) (and (=> (= (ControlFlow 0 17860) (- 0 22229)) (not (> $t3 18446744073709551615))) (=> (not (> $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 17860) (- 0 22240)) (= (|v#$Mutation_3430| $t0@0) (- (+ $t11 $t2) $t2))) (=> (= (|v#$Mutation_3430| $t0@0) (- (+ $t11 $t2) $t2)) (=> (= (ControlFlow 0 17860) (- 0 22258)) (= (|v#$Mutation_3430| $t1@0) $t3))))))))))))))))
(let ((anon5_Then_correct  (=> $t8 (=> (and (= $t9 $t9) (= (ControlFlow 0 17900) (- 0 22046))) (or (or (= $t2 0) (> $t2 18446744073709551615)) (> $t3 18446744073709551615))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_3430| _$t0) ($Param 0)) (=> (and (= (|l#$Mutation_3430| _$t1) ($Param 1)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t0))) (=> (and (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)) (= $t2 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t3 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4@0 (|v#$Mutation_3430| _$t0)))) (=> (and (and (and (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|))) (and (and (= $t5 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t6 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t7@0 (|v#$Mutation_3430| _$t0)) (= $t8  (or (or (= $t5 0) (> $t5 18446744073709551615)) (> $t6 18446744073709551615)))))) (and (=> (= (ControlFlow 0 17684) 17900) anon5_Then_correct) (=> (= (ControlFlow 0 17684) 17860) anon5_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 21806) 17684) anon0$1_correct)))
anon0_correct)))))
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
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11382 0)) ((($Memory_11382 (|domain#$Memory_11382| |T@[Int]Bool|) (|contents#$Memory_11382| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9705 0)) ((($Mutation_9705 (|l#$Mutation_9705| T@$Location) (|p#$Mutation_9705| (Seq Int)) (|v#$Mutation_9705| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |opaquez3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |opaquez3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |opaquez3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |opaquez3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |opaquez3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |opaquez3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |opaquez3bpl.590:13|
 :skolemid |15|
))))
 :qid |opaquez3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |opaquez3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |opaquez3bpl.603:17|
 :skolemid |18|
)))))
 :qid |opaquez3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |opaquez3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |opaquez3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |opaquez3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |opaquez3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |opaquez3bpl.911:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |opaquez3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |opaquez3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |opaquez3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t13 () Int)
(declare-fun $t2@0 () Int)
(declare-fun $t3@0 () Int)
(declare-fun $t14 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t8@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_old$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22280) (let ((anon10_Else_correct  (=> (and (and (and (not $abort_flag@2) (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$AddU64$2$dst@2))) (and (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0)) (= |$temp_0'u64'@2| |$temp_0'u64'@2|))) (and (and (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0)) (= |$temp_0'u64'@3| |$temp_0'u64'@3|)) (and (= $t13 (+ (+ $t2@0 1) $t3@0)) (= $t14 (+ (|v#$Mutation_3430| $t0@0) $t3@0))))) (and (=> (= (ControlFlow 0 18661) (- 0 22886)) (= (|v#$Mutation_3430| $t0@0) $t13)) (=> (= (|v#$Mutation_3430| $t0@0) $t13) (=> (= (ControlFlow 0 18661) (- 0 22896)) (= (|v#$Mutation_3430| $t1@0) $t14)))))))
(let ((anon10_Then_correct true))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 18565) 18675) anon10_Then_correct) (=> (= (ControlFlow 0 18565) 18661) anon10_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ $t10@0 $t11@0) $MAX_U64) (= (ControlFlow 0 18563) 18565)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t10@0 $t11@0)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ $t10@0 $t11@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 18511) 18675) anon10_Then_correct) (=> (= (ControlFlow 0 18511) 18661) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (and (and (not $abort_flag@1) (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$AddU64$1$dst@2))) (and (= $t10@0 (|v#$Mutation_3430| $t0@0)) (= $t11@0 (|v#$Mutation_3430| _$t1)))) (and (=> (= (ControlFlow 0 18571) 18563) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 18571) 18511) inline$$AddU64$2$anon3_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 18388) 18695) anon9_Then_correct) (=> (= (ControlFlow 0 18388) 18571) anon9_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ inline$$AddU64$0$dst@2 $t8@0) $MAX_U64) (= (ControlFlow 0 18386) 18388)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$AddU64$0$dst@2 $t8@0)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ inline$$AddU64$0$dst@2 $t8@0)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 18334) 18695) anon9_Then_correct) (=> (= (ControlFlow 0 18334) 18571) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t8@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 18394) 18386) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 18394) 18334) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 18223) 18709) anon8_Then_correct) (=> (= (ControlFlow 0 18223) 18394) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 18221) 18223)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 18169) 18709) anon8_Then_correct) (=> (= (ControlFlow 0 18169) 18394) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (=> (and (and (and (= $t2@0 (|v#$Mutation_3430| _$t0)) (= $t3@0 (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|))) (and (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|)) (and (= $t4@0 (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| 1)))) (and (=> (= (ControlFlow 0 18229) 18221) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 18229) 18169) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 22280) 18229) anon0$1_correct)))
anon0_correct))))))))))))))))))
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
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11382 0)) ((($Memory_11382 (|domain#$Memory_11382| |T@[Int]Bool|) (|contents#$Memory_11382| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9705 0)) ((($Mutation_9705 (|l#$Mutation_9705| T@$Location) (|p#$Mutation_9705| (Seq Int)) (|v#$Mutation_9705| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |opaquez3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |opaquez3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |opaquez3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |opaquez3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |opaquez3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |opaquez3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |opaquez3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |opaquez3bpl.590:13|
 :skolemid |15|
))))
 :qid |opaquez3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |opaquez3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |opaquez3bpl.603:17|
 :skolemid |18|
)))))
 :qid |opaquez3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |opaquez3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |opaquez3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |opaquez3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |opaquez3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |opaquez3bpl.911:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |opaquez3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |opaquez3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |opaquez3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t15 () Int)
(declare-fun $t5@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t17 () Int)
(declare-fun $t18 () Int)
(declare-fun $t19 () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$Div$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@1 () Int)
(declare-fun $t7@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_schema$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22924) (let ((L2_correct  (=> (= (ControlFlow 0 19577) (- 0 23639)) (or (or (= $t3 0) (> $t3 18446744073709551615)) (> $t4 18446744073709551615)))))
(let ((anon10_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 19547) 19577)) L2_correct))))
(let ((anon9_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 19591) 19577)) L2_correct))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 19605) 19577)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$MulU64$0$dst@2)) (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0))) (=> (and (and (and (= |$temp_0'u64'@2| |$temp_0'u64'@2|) (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@3| |$temp_0'u64'@3|) (= $t15 (div $t5@0 $t3)))) (and (and (= $t16 (- (+ $t15 $t3) $t3)) (= $t17 (|v#$Mutation_3430| $t0@0))) (and (= $t18 $t4) (= $t19 (|v#$Mutation_3430| $t1@0))))) (and (=> (= (ControlFlow 0 19533) (- 0 23587)) (not (= $t3 0))) (=> (not (= $t3 0)) (and (=> (= (ControlFlow 0 19533) (- 0 23598)) (not (> $t3 18446744073709551615))) (=> (not (> $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 19533) (- 0 23609)) (not (> $t4 18446744073709551615))) (=> (not (> $t4 18446744073709551615)) (and (=> (= (ControlFlow 0 19533) (- 0 23620)) (= $t16 $t17)) (=> (= $t16 $t17) (=> (= (ControlFlow 0 19533) (- 0 23626)) (= $t18 $t19)))))))))))))))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 19387) 19547) anon10_Then_correct) (=> (= (ControlFlow 0 19387) 19533) anon10_Else_correct))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* $t6@0 $t13@0) $MAX_U64) (= (ControlFlow 0 19385) 19387)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* $t6@0 $t13@0)) (=> (and (and (= inline$$MulU64$0$dst@1 (* $t6@0 $t13@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 19333) 19547) anon10_Then_correct) (=> (= (ControlFlow 0 19333) 19533) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$Div$0$dst@2)) (= $t13@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 19393) 19385) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 19393) 19333) inline$$MulU64$0$anon3_Else_correct))))))
(let ((inline$$Div$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$Div$0$dst@2 inline$$Div$0$dst@0)) (and (=> (= (ControlFlow 0 19214) 19591) anon9_Then_correct) (=> (= (ControlFlow 0 19214) 19393) anon9_Else_correct))))))
(let ((inline$$Div$0$anon3_Then_correct  (=> (and (= inline$$AddU64$0$dst@2 0) (= (ControlFlow 0 19212) 19214)) inline$$Div$0$anon3_Then$1_correct)))
(let ((inline$$Div$0$anon3_Else_correct  (=> (not (= inline$$AddU64$0$dst@2 0)) (=> (and (and (= inline$$Div$0$dst@1 (div $t7@0 inline$$AddU64$0$dst@2)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$Div$0$dst@2 inline$$Div$0$dst@1))) (and (=> (= (ControlFlow 0 19164) 19591) anon9_Then_correct) (=> (= (ControlFlow 0 19164) 19393) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 19220) 19212) inline$$Div$0$anon3_Then_correct) (=> (= (ControlFlow 0 19220) 19164) inline$$Div$0$anon3_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 19067) 19605) anon8_Then_correct) (=> (= (ControlFlow 0 19067) 19220) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0 $t9@0) $MAX_U64) (= (ControlFlow 0 19065) 19067)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0 $t9@0)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0 $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 19013) 19605) anon8_Then_correct) (=> (= (ControlFlow 0 19013) 19220) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (and (and (= $t3 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t5@0 (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0))))) (and (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= $t6@0 (|v#$Mutation_3430| _$t0)))) (and (and (= $t6@0 $t6@0) (= $t7@0 (|v#$Mutation_3430| _$t0))) (and (= $t8@0 (|v#$Mutation_3430| _$t0)) (= $t9@0 (|v#$Mutation_3430| _$t1)))))) (and (=> (= (ControlFlow 0 19073) 19065) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 19073) 19013) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 22924) 19073) anon0$1_correct)))
anon0_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
