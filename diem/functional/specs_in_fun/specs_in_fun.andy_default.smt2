(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8671 0)) ((($Mutation_8671 (|l#$Mutation_8671| T@$Location) (|p#$Mutation_8671| (Seq Int)) (|v#$Mutation_8671| (Seq Int)) ) ) ))
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
 :qid |specsinfunandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfunandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfunandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfunandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfunandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfunandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfunandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfunandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |specsinfunandybpl.590:13|
 :skolemid |15|
))))
 :qid |specsinfunandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |specsinfunandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |specsinfunandybpl.603:17|
 :skolemid |18|
)))))
 :qid |specsinfunandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |specsinfunandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |specsinfunandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfunandybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfunandybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |specsinfunandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |specsinfunandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |specsinfunandybpl.245:54|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertWithReferences_simple1$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 15475) (let ((anon3_Else_correct  (=> (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 12946) (- 0 15663)) (= _$t0 _$t0)) (=> (= _$t0 _$t0) (and (=> (= (ControlFlow 0 12946) (- 0 15670)) (= inline$$AddU64$0$dst@2 (* 2 _$t0))) (=> (= inline$$AddU64$0$dst@2 (* 2 _$t0)) (=> (= (ControlFlow 0 12946) (- 0 15681)) (= inline$$AddU64$0$dst@2 (* 2 _$t0))))))))))
(let ((anon3_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 12892) 12964) anon3_Then_correct) (=> (= (ControlFlow 0 12892) 12946) anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 _$t0) $MAX_U64) (= (ControlFlow 0 12890) 12892)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 _$t0)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 _$t0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 12838) 12964) anon3_Then_correct) (=> (= (ControlFlow 0 12838) 12946) anon3_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 12898) 12890) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 12898) 12838) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15475) 12898) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$Mutation_3430)
(declare-fun _$t1@@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t2@0 () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestAssertWithReferences_simple2$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 15712) (let ((anon0$1_correct@@0  (=> (= (|l#$Mutation_3430| _$t0@@0) ($Param 0)) (=> (and (= (|l#$Mutation_3430| _$t1@@0) ($Param 1)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t0@@0))) (=> (and (and (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t1@@0)) (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0@@0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1@@0)))) (and (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= $t2@0 (|v#$Mutation_3430| _$t0@@0))) (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1@@0) (|p#$Mutation_3430| _$t1@@0) $t2@0)) (= (ControlFlow 0 13128) (- 0 15841))))) (= (|v#$Mutation_3430| _$t0@@0) (|v#$Mutation_3430| $t1@0)))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 15712) 13128) anon0$1_correct@@0)))
anon0_correct@@0)))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t1@1 () T@$Mutation_3430)
(declare-fun $t1@0@@0 () T@$Mutation_3430)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun _$t0@@1 () T@$Mutation_3430)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun $t3@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun _$t1@@1 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0@@0| () Int)
(declare-fun |$temp_0'u64'@1@@0| () Int)
(declare-fun $t2@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertWithReferences_simple3$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 15898) (let ((anon3_Else_correct@@0  (=> (not $abort_flag@0@@0) (=> (and (= $t1@1 ($Mutation_3430 (|l#$Mutation_3430| $t1@0@@0) (|p#$Mutation_3430| $t1@0@@0) inline$$AddU64$0$dst@2@@0)) (= (ControlFlow 0 13514) (- 0 16193))) (= (+ (|v#$Mutation_3430| _$t0@@1) 1) (|v#$Mutation_3430| $t1@1))))))
(let ((anon3_Then_correct@@0 true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 13450) 13532) anon3_Then_correct@@0) (=> (= (ControlFlow 0 13450) 13514) anon3_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ $t3@0 1) $MAX_U64) (= (ControlFlow 0 13448) 13450)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ $t3@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ $t3@0 1)) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 13396) 13532) anon3_Then_correct@@0) (=> (= (ControlFlow 0 13396) 13514) anon3_Else_correct@@0))))))
(let ((anon0$1_correct@@1  (=> (and (= (|l#$Mutation_3430| _$t0@@1) ($Param 0)) (= (|l#$Mutation_3430| _$t1@@1) ($Param 1))) (=> (and (and (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0@@1)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1@@1))) (and (= |$temp_0'u64'@0@@0| (|v#$Mutation_3430| _$t0@@1)) (= |$temp_0'u64'@0@@0| |$temp_0'u64'@0@@0|))) (and (and (= |$temp_0'u64'@1@@0| (|v#$Mutation_3430| _$t1@@1)) (= |$temp_0'u64'@1@@0| |$temp_0'u64'@1@@0|)) (and (= $t2@0@@0 (|v#$Mutation_3430| _$t0@@1)) (= $t1@0@@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1@@1) (|p#$Mutation_3430| _$t1@@1) $t2@0@@0))))) (and (=> (= (ControlFlow 0 13456) (- 0 16059)) (= (|v#$Mutation_3430| _$t0@@1) (|v#$Mutation_3430| $t1@0@@0))) (=> (= (|v#$Mutation_3430| _$t0@@1) (|v#$Mutation_3430| $t1@0@@0)) (=> (and (= $t3@0 (|v#$Mutation_3430| $t1@0@@0)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 13456) 13448) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 13456) 13396) inline$$AddU64$0$anon3_Else_correct@@0)))))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 15898) 13456) anon0$1_correct@@1)))
anon0_correct@@1))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t1@1@@0 () T@$Mutation_3430)
(declare-fun $t1@0@@1 () T@$Mutation_3430)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun _$t0@@2 () T@$Mutation_3430)
(declare-fun inline$$AddU64$0$dst@2@@1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun $t16@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t12@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $t14@0 () Int)
(declare-fun $t15@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@1 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@1 () Int)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun _$t1@@2 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0@@1| () Int)
(declare-fun |$temp_0'u64'@1@@1| () Int)
(declare-fun $t7@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertWithReferences_simple4$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16254) (let ((anon6_Else_correct  (=> (and (not $abort_flag@1) (= $t1@1@@0 ($Mutation_3430 (|l#$Mutation_3430| $t1@0@@1) (|p#$Mutation_3430| $t1@0@@1) inline$$AddU64$1$dst@2))) (and (=> (= (ControlFlow 0 14188) (- 0 16781)) (= (+ (|v#$Mutation_3430| _$t0@@2) 1) (|v#$Mutation_3430| $t1@1@@0))) (=> (= (+ (|v#$Mutation_3430| _$t0@@2) 1) (|v#$Mutation_3430| $t1@1@@0)) (=> (= (ControlFlow 0 14188) (- 0 16796)) (= (+ inline$$AddU64$0$dst@2@@1 1) (+ (|v#$Mutation_3430| _$t0@@2) (|v#$Mutation_3430| $t1@1@@0)))))))))
(let ((anon6_Then_correct true))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 14104) 14202) anon6_Then_correct) (=> (= (ControlFlow 0 14104) 14188) anon6_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t16@0 1) $MAX_U64) (= (ControlFlow 0 14102) 14104)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t16@0 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ $t16@0 1)) (= $abort_code@2 $abort_code@1@@1)) (and (= $abort_flag@1 $abort_flag@0@@1) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 14050) 14202) anon6_Then_correct) (=> (= (ControlFlow 0 14050) 14188) anon6_Else_correct))))))
(let ((anon5_Else_correct  (=> (and (not $abort_flag@0@@1) (= inline$$AddU64$0$dst@2@@1 inline$$AddU64$0$dst@2@@1)) (=> (and (and (and (= $t12@0 (|v#$Mutation_3430| _$t0@@2)) (= $t12@0 $t12@0)) (and (= $t13@0 (|v#$Mutation_3430| $t1@0@@1)) (= $t13@0 $t13@0))) (and (and (= $t14@0 (|v#$Mutation_3430| _$t0@@2)) (= $t14@0 $t14@0)) (and (= $t15@0 (|v#$Mutation_3430| $t1@0@@1)) (= $t15@0 $t15@0)))) (and (=> (= (ControlFlow 0 14110) (- 0 16633)) (= $t14@0 $t15@0)) (=> (= $t14@0 $t15@0) (and (=> (= (ControlFlow 0 14110) (- 0 16640)) (= $t12@0 $t13@0)) (=> (= $t12@0 $t13@0) (and (=> (= (ControlFlow 0 14110) (- 0 16647)) (= inline$$AddU64$0$dst@2@@1 (* 2 (|v#$Mutation_3430| _$t0@@2)))) (=> (= inline$$AddU64$0$dst@2@@1 (* 2 (|v#$Mutation_3430| _$t0@@2))) (=> (and (= $t16@0 (|v#$Mutation_3430| $t1@0@@1)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 14110) 14102) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 14110) 14050) inline$$AddU64$1$anon3_Else_correct)))))))))))))
(let ((anon5_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@1  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@1 inline$$AddU64$0$dst@0@@1)) (and (=> (= (ControlFlow 0 13845) 14222) anon5_Then_correct) (=> (= (ControlFlow 0 13845) 14110) anon5_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@1  (=> (and (> (+ $t8@0 $t9@0) $MAX_U64) (= (ControlFlow 0 13843) 13845)) inline$$AddU64$0$anon3_Then$1_correct@@1)))
(let ((inline$$AddU64$0$anon3_Else_correct@@1  (=> (>= $MAX_U64 (+ $t8@0 $t9@0)) (=> (and (and (= inline$$AddU64$0$dst@1@@1 (+ $t8@0 $t9@0)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$AddU64$0$dst@2@@1 inline$$AddU64$0$dst@1@@1))) (and (=> (= (ControlFlow 0 13791) 14222) anon5_Then_correct) (=> (= (ControlFlow 0 13791) 14110) anon5_Else_correct))))))
(let ((anon0$1_correct@@2  (=> (and (and (= (|l#$Mutation_3430| _$t0@@2) ($Param 0)) (= (|l#$Mutation_3430| _$t1@@2) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0@@2)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1@@2)))) (=> (and (and (and (= |$temp_0'u64'@0@@1| (|v#$Mutation_3430| _$t0@@2)) (= |$temp_0'u64'@0@@1| |$temp_0'u64'@0@@1|)) (and (= |$temp_0'u64'@1@@1| (|v#$Mutation_3430| _$t1@@2)) (= |$temp_0'u64'@1@@1| |$temp_0'u64'@1@@1|))) (and (and (= $t7@0 (|v#$Mutation_3430| _$t0@@2)) (= $t1@0@@1 ($Mutation_3430 (|l#$Mutation_3430| _$t1@@2) (|p#$Mutation_3430| _$t1@@2) $t7@0))) (and (= $t8@0 (|v#$Mutation_3430| _$t0@@2)) (= $t9@0 (|v#$Mutation_3430| $t1@0@@1))))) (and (=> (= (ControlFlow 0 13851) 13843) inline$$AddU64$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 13851) 13791) inline$$AddU64$0$anon3_Else_correct@@1))))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 16254) 13851) anon0$1_correct@@2)))
anon0_correct@@2)))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@2 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$AddU64$0$dst@0@@2 () Int)
(declare-fun $t2@0@@1 () Int)
(declare-fun inline$$AddU64$0$dst@1@@2 () Int)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t5@0 () Int)
(declare-fun $t6@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertWithReferences_simple5$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16865) (let ((anon10_Else_correct  (=> (not $abort_flag@0@@2) (=> (and (= inline$$AddU64$0$dst@2@@2 inline$$AddU64$0$dst@2@@2) (= (ControlFlow 0 14664) (- 0 17188))) (<= inline$$AddU64$0$dst@2@@2 _$t0@@3)))))
(let ((anon10_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@2  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@2 inline$$AddU64$0$dst@0@@2)) (and (=> (= (ControlFlow 0 14634) 14682) anon10_Then_correct) (=> (= (ControlFlow 0 14634) 14664) anon10_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@2  (=> (and (> (+ $t2@0@@1 1) $MAX_U64) (= (ControlFlow 0 14632) 14634)) inline$$AddU64$0$anon3_Then$1_correct@@2)))
(let ((inline$$AddU64$0$anon3_Else_correct@@2  (=> (>= $MAX_U64 (+ $t2@0@@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@2 (+ $t2@0@@1 1)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= inline$$AddU64$0$dst@2@@2 inline$$AddU64$0$dst@1@@2))) (and (=> (= (ControlFlow 0 14580) 14682) anon10_Then_correct) (=> (= (ControlFlow 0 14580) 14664) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (and (not inline$$Not$0$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 14640) 14632) inline$$AddU64$0$anon3_Then_correct@@2) (=> (= (ControlFlow 0 14640) 14580) inline$$AddU64$0$anon3_Else_correct@@2)))))
(let ((anon9_Then_correct  (=> inline$$Not$0$dst@1 (and (=> (= (ControlFlow 0 14712) (- 0 17052)) (= $t2@0@@1 _$t0@@3)) (=> (= $t2@0@@1 _$t0@@3) (=> (and (= $t2@0@@1 $t2@0@@1) (= (ControlFlow 0 14712) (- 0 17067))) (= $t2@0@@1 _$t0@@3)))))))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not inline$$Lt$0$dst@1)) (and (=> (= (ControlFlow 0 14465) 14712) anon9_Then_correct) (=> (= (ControlFlow 0 14465) 14640) anon9_Else_correct)))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t2@0@@1 _$t0@@3)) (= (ControlFlow 0 14427) 14465)) inline$$Not$0$anon0_correct)))
(let ((anon0$1_correct@@3  (=> (and (and (|$IsValid'u64'| _$t0@@3) (= _$t0@@3 _$t0@@3)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 14433) (- 0 16969)) (<= 0 _$t0@@3)) (=> (<= 0 _$t0@@3) (=> (and (|$IsValid'u64'| $t2@0@@1) (|$IsValid'u64'| $t5@0)) (=> (and (and (|$IsValid'u64'| $t6@0) (not false)) (and (<= $t2@0@@1 _$t0@@3) (= (ControlFlow 0 14433) 14427))) inline$$Lt$0$anon0_correct)))))))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 16865) 14433) anon0$1_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@3 () Int)
(declare-fun _$t0@@4 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$AddU64$0$dst@0@@3 () Int)
(declare-fun $t2@0@@2 () Int)
(declare-fun inline$$AddU64$0$dst@1@@3 () Int)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $t4@0 () Int)
(declare-fun $t5@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertWithReferences_simple6$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17205) (let ((anon11_Else_correct  (=> (not $abort_flag@0@@3) (=> (and (= inline$$AddU64$0$dst@2@@3 inline$$AddU64$0$dst@2@@3) (= (ControlFlow 0 15103) (- 0 17500))) (<= inline$$AddU64$0$dst@2@@3 _$t0@@4)))))
(let ((anon11_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@3  (=> (= $abort_flag@0@@3 true) (=> (and (= $abort_code@1@@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@3 inline$$AddU64$0$dst@0@@3)) (and (=> (= (ControlFlow 0 15073) 15121) anon11_Then_correct) (=> (= (ControlFlow 0 15073) 15103) anon11_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@3  (=> (and (> (+ $t2@0@@2 1) $MAX_U64) (= (ControlFlow 0 15071) 15073)) inline$$AddU64$0$anon3_Then$1_correct@@3)))
(let ((inline$$AddU64$0$anon3_Else_correct@@3  (=> (>= $MAX_U64 (+ $t2@0@@2 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@3 (+ $t2@0@@2 1)) (= $abort_flag@0@@3 false)) (and (= $abort_code@1@@3 $abort_code@0@@3) (= inline$$AddU64$0$dst@2@@3 inline$$AddU64$0$dst@1@@3))) (and (=> (= (ControlFlow 0 15019) 15121) anon11_Then_correct) (=> (= (ControlFlow 0 15019) 15103) anon11_Else_correct))))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Lt$0$dst@1@@0 (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 15079) 15071) inline$$AddU64$0$anon3_Then_correct@@3) (=> (= (ControlFlow 0 15079) 15019) inline$$AddU64$0$anon3_Else_correct@@3)))))
(let ((anon10_Else_correct@@0  (=> (not inline$$Lt$0$dst@1@@0) (and (=> (= (ControlFlow 0 14916) (- 0 17376)) (= $t2@0@@2 _$t0@@4)) (=> (= $t2@0@@2 _$t0@@4) (=> (and (= $t2@0@@2 $t2@0@@2) (= (ControlFlow 0 14916) (- 0 17391))) (= $t2@0@@2 _$t0@@4)))))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 14884) 15079) anon10_Then_correct@@0) (=> (= (ControlFlow 0 14884) 14916) anon10_Else_correct@@0))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< $t2@0@@2 _$t0@@4)) (= (ControlFlow 0 14874) 14884)) anon0$2_correct)))
(let ((anon0$1_correct@@4  (=> (and (and (|$IsValid'u64'| _$t0@@4) (= _$t0@@4 _$t0@@4)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 14880) (- 0 17303)) (<= 0 _$t0@@4)) (=> (<= 0 _$t0@@4) (=> (and (|$IsValid'u64'| $t2@0@@2) (|$IsValid'u64'| $t4@0)) (=> (and (and (|$IsValid'u64'| $t5@0@@0) (not false)) (and (<= $t2@0@@2 _$t0@@4) (= (ControlFlow 0 14880) 14874))) inline$$Lt$0$anon0_correct@@0)))))))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 17205) 14880) anon0$1_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@5 () T@$Mutation_3430)
(declare-fun _$t1@@3 () Int)
(declare-fun $t5@0@@1 () Int)
(declare-fun $t6@0@@0 () Int)
(declare-fun |$temp_0'u64'@0@@2| () Int)
(declare-fun |$temp_0'u64'@1@@2| () Int)
(declare-fun $t7@0@@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t8@0@@0 () Int)
(declare-fun $t7@1 () T@$Mutation_3430)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun $t3@0@@0 () Int)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t2 () T@$Mutation_3430)
(declare-fun $t4 () T@$Mutation_3430)
(declare-fun $t7 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestAssertWithReferences_simple7$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17514) (let ((anon0$1_correct@@5  (=> (= (|l#$Mutation_3430| _$t0@@5) ($Param 0)) (=> (and (and (and (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0@@5)) (|$IsValid'u64'| _$t1@@3)) (and (= $t5@0@@1 (|v#$Mutation_3430| _$t0@@5)) (= $t6@0@@0 (|v#$Mutation_3430| _$t0@@5)))) (and (and (= |$temp_0'u64'@0@@2| (|v#$Mutation_3430| _$t0@@5)) (= |$temp_0'u64'@0@@2| |$temp_0'u64'@0@@2|)) (and (= _$t1@@3 _$t1@@3) (= |$temp_0'u64'@1@@2| (|v#$Mutation_3430| _$t0@@5))))) (and (and (and (= |$temp_0'u64'@1@@2| |$temp_0'u64'@1@@2|) (= _$t1@@3 _$t1@@3)) (and (= $t7@0@@0 ($Mutation_3430 ($Local 3) (as seq.empty (Seq Int)) _$t1@@3)) (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t7@0@@0)))) (and (and (= |$temp_0'u64'@2| |$temp_0'u64'@2|) (= $t8@0@@0 (|v#$Mutation_3430| _$t0@@5))) (and (= $t7@1 ($Mutation_3430 (|l#$Mutation_3430| $t7@0@@0) (|p#$Mutation_3430| $t7@0@@0) $t8@0@@0)) (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0@@5) (|p#$Mutation_3430| _$t0@@5) _$t1@@3)))))) (and (=> (= (ControlFlow 0 15389) (- 0 17748)) (= (|v#$Mutation_3430| $t0@0) _$t1@@3)) (=> (= (|v#$Mutation_3430| $t0@0) _$t1@@3) (and (=> (= (ControlFlow 0 15389) (- 0 17757)) (= (|v#$Mutation_3430| $t0@0) _$t1@@3)) (=> (= (|v#$Mutation_3430| $t0@0) _$t1@@3) (and (=> (= (ControlFlow 0 15389) (- 0 17766)) (= (|v#$Mutation_3430| $t7@1) $t6@0@@0)) (=> (= (|v#$Mutation_3430| $t7@1) $t6@0@@0) (=> (= $t3@0@@0 (|v#$Mutation_3430| $t7@1)) (=> (and (and (= $t3@0@@0 $t3@0@@0) (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t0@0))) (and (= |$temp_0'u64'@3| |$temp_0'u64'@3|) (= (ControlFlow 0 15389) (- 0 17814)))) (and (= (|v#$Mutation_3430| $t0@0) _$t1@@3) (= $t3@0@@0 $t5@0@@1))))))))))))))
(let ((anon0_correct@@5  (=> (and (and (= (seq.len (|p#$Mutation_3430| $t2)) 0) (= (seq.len (|p#$Mutation_3430| $t4)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t7)) 0) (= (ControlFlow 0 15195) 15389))) anon0$1_correct@@5)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17514) 15195) anon0_correct@@5)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(pop 1)
; Valid
