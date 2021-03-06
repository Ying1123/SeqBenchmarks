(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8164 0)) ((($Mutation_8164 (|l#$Mutation_8164| T@$Location) (|p#$Mutation_8164| (Seq Int)) (|v#$Mutation_8164| (Seq Int)) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |inconsistencyseqArraybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |inconsistencyseqArraybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |inconsistencyseqArraybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |inconsistencyseqArraybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |inconsistencyseqArraybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |inconsistencyseqArraybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |inconsistencyseqArraybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |inconsistencyseqArraybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |inconsistencyseqArraybpl.590:13|
 :skolemid |15|
))))
 :qid |inconsistencyseqArraybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |inconsistencyseqArraybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |inconsistencyseqArraybpl.603:17|
 :skolemid |18|
)))))
 :qid |inconsistencyseqArraybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |inconsistencyseqArraybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |inconsistencyseqArraybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |inconsistencyseqArraybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |inconsistencyseqArraybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |inconsistencyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |inconsistencyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |inconsistencyseqArraybpl.245:54|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun _$t0 () (Seq Int))
(declare-fun _$t1 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test1$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 13109) (let ((anon7_Else_correct  (=> (and (and (not false) (= call1formal@res@0 call1formal@res@0)) (and (= call1formal@res@0@@0 call1formal@res@0@@0) (= call1formal@res@0 call1formal@res@0))) (and (=> (= (ControlFlow 0 11791) (- 0 13349)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 11791) (- 0 13356)) (=> (= call1formal@res@0@@0 call1formal@res@0) (= _$t0 _$t1))) (=> (=> (= call1formal@res@0@@0 call1formal@res@0) (= _$t0 _$t1)) (and (=> (= (ControlFlow 0 11791) (- 0 13369)) (=> (= _$t0 _$t1) (= call1formal@res@0@@0 call1formal@res@0))) (=> (=> (= _$t0 _$t1) (= call1formal@res@0@@0 call1formal@res@0)) (and (=> (= (ControlFlow 0 11791) (- 0 13382)) (= (seq.len call1formal@res@0@@0) 32)) (=> (= (seq.len call1formal@res@0@@0) 32) (=> (= (ControlFlow 0 11791) (- 0 13392)) (=> (> (seq.len call1formal@res@0@@0) 0) (<= (seq.nth call1formal@res@0@@0 0) $MAX_U8))))))))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Else_correct  (=> (not false) (=> (and (and (= call1formal@res@0@@0 call1formal@res@0@@0) (= call1formal@res@0 ($1_Hash_sha2 _$t1))) (and (|$IsValid'vec'u8''| call1formal@res@0) (= (seq.len call1formal@res@0) 32))) (and (=> (= (ControlFlow 0 11689) 11805) anon7_Then_correct) (=> (= (ControlFlow 0 11689) 11791) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u8''| _$t0) (=> (and (|$IsValid'vec'u8''| _$t1) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (= call1formal@res@0@@0 ($1_Hash_sha2 _$t0))) (and (|$IsValid'vec'u8''| call1formal@res@0@@0) (= (seq.len call1formal@res@0@@0) 32))) (and (=> (= (ControlFlow 0 11675) 11829) anon6_Then_correct) (=> (= (ControlFlow 0 11675) 11689) anon6_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13109) 11675) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun call1formal@res@0@@1 () (Seq Int))
(declare-fun call1formal@res@0@@2 () (Seq Int))
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun _$t0@@0 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test1_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 13450) (let ((anon7_Else_correct@@0  (=> (and (and (not false) (= call1formal@res@0@@1 call1formal@res@0@@1)) (and (= call1formal@res@0@@2 call1formal@res@0@@2) (= call1formal@res@0@@1 call1formal@res@0@@1))) (and (=> (= (ControlFlow 0 12034) (- 0 13690)) (not false)) (=> (not false) (=> (= (ControlFlow 0 12034) (- 0 13697)) (=> (> (seq.len call1formal@res@0@@2) 0) (< (seq.nth call1formal@res@0@@2 0) $MAX_U8))))))))
(let ((anon7_Then_correct@@0 true))
(let ((anon6_Else_correct@@0  (=> (not false) (=> (and (and (= call1formal@res@0@@2 call1formal@res@0@@2) (= call1formal@res@0@@1 ($1_Hash_sha2 _$t1@@0))) (and (|$IsValid'vec'u8''| call1formal@res@0@@1) (= (seq.len call1formal@res@0@@1) 32))) (and (=> (= (ControlFlow 0 11974) 12048) anon7_Then_correct@@0) (=> (= (ControlFlow 0 11974) 12034) anon7_Else_correct@@0))))))
(let ((anon6_Then_correct@@0 true))
(let ((anon0$1_correct@@0  (=> (|$IsValid'vec'u8''| _$t0@@0) (=> (and (|$IsValid'vec'u8''| _$t1@@0) (= _$t0@@0 _$t0@@0)) (=> (and (and (= _$t1@@0 _$t1@@0) (= call1formal@res@0@@2 ($1_Hash_sha2 _$t0@@0))) (and (|$IsValid'vec'u8''| call1formal@res@0@@2) (= (seq.len call1formal@res@0@@2) 32))) (and (=> (= (ControlFlow 0 11960) 12072) anon6_Then_correct@@0) (=> (= (ControlFlow 0 11960) 11974) anon6_Else_correct@@0)))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 13450) 11960) anon0$1_correct@@0)))
anon0_correct@@0)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 13450)))
(get-value ((ControlFlow 0 11960)))
(get-value ((ControlFlow 0 11974)))
(get-value ((ControlFlow 0 12034)))
(assert (not (= (ControlFlow 0 12034) (- 13697))))
(check-sat)
(pop 1)
; Invalid
(declare-fun call1formal@res@0@@3 () (Seq Int))
(declare-fun $t7@0 () Bool)
(declare-fun call1formal@res@0@@4 () (Seq Int))
(declare-fun _$t0@@1 () (Seq Int))
(declare-fun _$t1@@1 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test2$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 13741) (let ((anon7_Else_correct@@1  (=> (and (and (not false) (= call1formal@res@0@@3 call1formal@res@0@@3)) (and (= $t7@0 (= call1formal@res@0@@4 call1formal@res@0@@3)) (= $t7@0 $t7@0))) (and (=> (= (ControlFlow 0 12256) (- 0 13986)) (not false)) (=> (not false) (=> (= (ControlFlow 0 12256) (- 0 13993)) (= $t7@0 (= _$t0@@1 _$t1@@1))))))))
(let ((anon7_Then_correct@@1 true))
(let ((anon6_Else_correct@@1  (=> (not false) (=> (and (and (= call1formal@res@0@@4 call1formal@res@0@@4) (= call1formal@res@0@@3 ($1_Hash_sha2 _$t1@@1))) (and (|$IsValid'vec'u8''| call1formal@res@0@@3) (= (seq.len call1formal@res@0@@3) 32))) (and (=> (= (ControlFlow 0 12208) 12270) anon7_Then_correct@@1) (=> (= (ControlFlow 0 12208) 12256) anon7_Else_correct@@1))))))
(let ((anon6_Then_correct@@1 true))
(let ((anon0$1_correct@@1  (=> (|$IsValid'vec'u8''| _$t0@@1) (=> (and (|$IsValid'vec'u8''| _$t1@@1) (= _$t0@@1 _$t0@@1)) (=> (and (and (= _$t1@@1 _$t1@@1) (= call1formal@res@0@@4 ($1_Hash_sha2 _$t0@@1))) (and (|$IsValid'vec'u8''| call1formal@res@0@@4) (= (seq.len call1formal@res@0@@4) 32))) (and (=> (= (ControlFlow 0 12194) 12294) anon6_Then_correct@@1) (=> (= (ControlFlow 0 12194) 12208) anon6_Else_correct@@1)))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 13741) 12194) anon0$1_correct@@1)))
anon0_correct@@1)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun call1formal@res@0@@5 () (Seq Int))
(declare-fun call1formal@res@0@@6 () (Seq Int))
(declare-fun _$t1@@2 () (Seq Int))
(declare-fun _$t0@@2 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test2_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 14025) (let ((anon7_Else_correct@@2  (=> (and (and (not false) (= call1formal@res@0@@5 call1formal@res@0@@5)) (and (= call1formal@res@0@@6 call1formal@res@0@@6) (= call1formal@res@0@@5 call1formal@res@0@@5))) (and (=> (= (ControlFlow 0 12480) (- 0 14265)) (not false)) (=> (not false) (=> (= (ControlFlow 0 12480) (- 0 14272)) (=> (> (seq.len call1formal@res@0@@6) 0) (< (seq.nth call1formal@res@0@@6 0) $MAX_U8))))))))
(let ((anon7_Then_correct@@2 true))
(let ((anon6_Else_correct@@2  (=> (not false) (=> (and (and (= call1formal@res@0@@6 call1formal@res@0@@6) (= call1formal@res@0@@5 ($1_Hash_sha2 _$t1@@2))) (and (|$IsValid'vec'u8''| call1formal@res@0@@5) (= (seq.len call1formal@res@0@@5) 32))) (and (=> (= (ControlFlow 0 12420) 12494) anon7_Then_correct@@2) (=> (= (ControlFlow 0 12420) 12480) anon7_Else_correct@@2))))))
(let ((anon6_Then_correct@@2 true))
(let ((anon0$1_correct@@2  (=> (|$IsValid'vec'u8''| _$t0@@2) (=> (and (|$IsValid'vec'u8''| _$t1@@2) (= _$t0@@2 _$t0@@2)) (=> (and (and (= _$t1@@2 _$t1@@2) (= call1formal@res@0@@6 ($1_Hash_sha2 _$t0@@2))) (and (|$IsValid'vec'u8''| call1formal@res@0@@6) (= (seq.len call1formal@res@0@@6) 32))) (and (=> (= (ControlFlow 0 12406) 12518) anon6_Then_correct@@2) (=> (= (ControlFlow 0 12406) 12420) anon6_Else_correct@@2)))))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 14025) 12406) anon0$1_correct@@2)))
anon0_correct@@2)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14025)))
(get-value ((ControlFlow 0 12406)))
(get-value ((ControlFlow 0 12420)))
(get-value ((ControlFlow 0 12480)))
(assert (not (= (ControlFlow 0 12480) (- 14272))))
(check-sat)
(pop 1)
; Invalid
(declare-fun call1formal@res@0@@7 () (Seq Int))
(declare-fun call1formal@res@0@@8 () (Seq Int))
(declare-fun _$t0@@3 () (Seq Int))
(declare-fun _$t1@@3 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test3$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 14317) (let ((anon7_Else_correct@@3  (=> (and (and (not false) (= call1formal@res@0@@7 call1formal@res@0@@7)) (and (= call1formal@res@0@@8 call1formal@res@0@@8) (= call1formal@res@0@@7 call1formal@res@0@@7))) (and (=> (= (ControlFlow 0 12756) (- 0 14557)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 12756) (- 0 14564)) (=> (= call1formal@res@0@@8 call1formal@res@0@@7) (= _$t0@@3 _$t1@@3))) (=> (=> (= call1formal@res@0@@8 call1formal@res@0@@7) (= _$t0@@3 _$t1@@3)) (and (=> (= (ControlFlow 0 12756) (- 0 14577)) (=> (= _$t0@@3 _$t1@@3) (= call1formal@res@0@@8 call1formal@res@0@@7))) (=> (=> (= _$t0@@3 _$t1@@3) (= call1formal@res@0@@8 call1formal@res@0@@7)) (and (=> (= (ControlFlow 0 12756) (- 0 14590)) (= (seq.len call1formal@res@0@@8) 32)) (=> (= (seq.len call1formal@res@0@@8) 32) (=> (= (ControlFlow 0 12756) (- 0 14600)) (=> (> (seq.len call1formal@res@0@@8) 0) (<= (seq.nth call1formal@res@0@@8 0) $MAX_U8))))))))))))))
(let ((anon7_Then_correct@@3 true))
(let ((anon6_Else_correct@@3  (=> (not false) (=> (and (and (= call1formal@res@0@@8 call1formal@res@0@@8) (= call1formal@res@0@@7 ($1_Hash_sha3 _$t1@@3))) (and (|$IsValid'vec'u8''| call1formal@res@0@@7) (= (seq.len call1formal@res@0@@7) 32))) (and (=> (= (ControlFlow 0 12654) 12770) anon7_Then_correct@@3) (=> (= (ControlFlow 0 12654) 12756) anon7_Else_correct@@3))))))
(let ((anon6_Then_correct@@3 true))
(let ((anon0$1_correct@@3  (=> (|$IsValid'vec'u8''| _$t0@@3) (=> (and (|$IsValid'vec'u8''| _$t1@@3) (= _$t0@@3 _$t0@@3)) (=> (and (and (= _$t1@@3 _$t1@@3) (= call1formal@res@0@@8 ($1_Hash_sha3 _$t0@@3))) (and (|$IsValid'vec'u8''| call1formal@res@0@@8) (= (seq.len call1formal@res@0@@8) 32))) (and (=> (= (ControlFlow 0 12640) 12794) anon6_Then_correct@@3) (=> (= (ControlFlow 0 12640) 12654) anon6_Else_correct@@3)))))))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 14317) 12640) anon0$1_correct@@3)))
anon0_correct@@3)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun call1formal@res@0@@9 () (Seq Int))
(declare-fun $t7@0@@0 () Bool)
(declare-fun call1formal@res@0@@10 () (Seq Int))
(declare-fun _$t0@@4 () (Seq Int))
(declare-fun _$t1@@4 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test4$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 14644) (let ((anon7_Else_correct@@4  (=> (and (and (not false) (= call1formal@res@0@@9 call1formal@res@0@@9)) (and (= $t7@0@@0 (= call1formal@res@0@@10 call1formal@res@0@@9)) (= $t7@0@@0 $t7@0@@0))) (and (=> (= (ControlFlow 0 12987) (- 0 14889)) (not false)) (=> (not false) (=> (= (ControlFlow 0 12987) (- 0 14896)) (= $t7@0@@0 (= _$t0@@4 _$t1@@4))))))))
(let ((anon7_Then_correct@@4 true))
(let ((anon6_Else_correct@@4  (=> (not false) (=> (and (and (= call1formal@res@0@@10 call1formal@res@0@@10) (= call1formal@res@0@@9 ($1_Hash_sha3 _$t1@@4))) (and (|$IsValid'vec'u8''| call1formal@res@0@@9) (= (seq.len call1formal@res@0@@9) 32))) (and (=> (= (ControlFlow 0 12939) 13001) anon7_Then_correct@@4) (=> (= (ControlFlow 0 12939) 12987) anon7_Else_correct@@4))))))
(let ((anon6_Then_correct@@4 true))
(let ((anon0$1_correct@@4  (=> (|$IsValid'vec'u8''| _$t0@@4) (=> (and (|$IsValid'vec'u8''| _$t1@@4) (= _$t0@@4 _$t0@@4)) (=> (and (and (= _$t1@@4 _$t1@@4) (= call1formal@res@0@@10 ($1_Hash_sha3 _$t0@@4))) (and (|$IsValid'vec'u8''| call1formal@res@0@@10) (= (seq.len call1formal@res@0@@10) 32))) (and (=> (= (ControlFlow 0 12925) 13025) anon6_Then_correct@@4) (=> (= (ControlFlow 0 12925) 12939) anon6_Else_correct@@4)))))))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 14644) 12925) anon0$1_correct@@4)))
anon0_correct@@4)))))))
))
(check-sat)
(pop 1)
; Valid
