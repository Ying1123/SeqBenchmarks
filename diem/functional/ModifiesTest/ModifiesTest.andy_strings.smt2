(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7463 0)) ((($Mutation_7463 (|l#$Mutation_7463| T@$Location) (|p#$Mutation_7463| (Seq Int)) (|v#$Mutation_7463| (Seq Int)) ) ) ))
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
 :qid |ModifiesTestandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestandybpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestandybpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestandybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestandybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestandybpl.245:54|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple1$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11827) (let ((anon4_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= (ControlFlow 0 10225) (- 0 11959))) (> _$t0 _$t1))))
(let ((anon4_Then_correct true))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not inline$$Gt$0$dst@1)) (and (=> (= (ControlFlow 0 10201) 10247) anon4_Then_correct) (=> (= (ControlFlow 0 10201) 10225) anon4_Else_correct)))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t0 _$t1)) (= (ControlFlow 0 10163) 10201)) inline$$Not$0$anon0_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 10169) 10163))) inline$$Gt$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 11827) 10169) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun _$t0@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun inline$$Gt$0$dst@1@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple1_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11988) (let ((anon4_Else_correct@@0  (=> (and (not inline$$Not$0$dst@1@@0) (= (ControlFlow 0 10431) (- 0 12120))) (= _$t0@@0 _$t1@@0))))
(let ((anon4_Then_correct@@0 true))
(let ((inline$$Not$0$anon0_correct@@0  (=> (= inline$$Not$0$dst@1@@0  (not inline$$Gt$0$dst@1@@0)) (and (=> (= (ControlFlow 0 10407) 10453) anon4_Then_correct@@0) (=> (= (ControlFlow 0 10407) 10431) anon4_Else_correct@@0)))))
(let ((inline$$Gt$0$anon0_correct@@0  (=> (and (= inline$$Gt$0$dst@1@@0 (> _$t0@@0 _$t1@@0)) (= (ControlFlow 0 10369) 10407)) inline$$Not$0$anon0_correct@@0)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'u64'| _$t0@@0) (=> (and (and (|$IsValid'u64'| _$t1@@0) (= _$t0@@0 _$t0@@0)) (and (= _$t1@@0 _$t1@@0) (= (ControlFlow 0 10375) 10369))) inline$$Gt$0$anon0_correct@@0))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 11988) 10375) anon0$1_correct@@0)))
anon0_correct@@0)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 11988)))
(get-value ((ControlFlow 0 10375)))
(get-value ((ControlFlow 0 10369)))
(get-value ((ControlFlow 0 10407)))
(get-value ((ControlFlow 0 10431)))
(assert (not (= (ControlFlow 0 10431) (- 12120))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple2$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12135) (let ((anon3_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 10710) (- 0 12310))) (= _$t0@@1 (- inline$$AddU64$0$dst@2 1))))))
(let ((anon3_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 10676) 10728) anon3_Then_correct) (=> (= (ControlFlow 0 10676) 10710) anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0@@1 1) $MAX_U64) (= (ControlFlow 0 10674) 10676)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0@@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0@@1 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 10622) 10728) anon3_Then_correct) (=> (= (ControlFlow 0 10622) 10710) anon3_Else_correct))))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'u64'| _$t0@@1) (=> (and (= _$t0@@1 _$t0@@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 10682) 10674) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 10682) 10622) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 12135) 10682) anon0$1_correct@@1)))
anon0_correct@@1))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple2_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12329) (let ((anon3_Else_correct@@0  (=> (not $abort_flag@0@@0) (=> (and (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@2@@0) (= (ControlFlow 0 10981) (- 0 12504))) (= _$t0@@2 inline$$AddU64$0$dst@2@@0)))))
(let ((anon3_Then_correct@@0 true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 10951) 10999) anon3_Then_correct@@0) (=> (= (ControlFlow 0 10951) 10981) anon3_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ _$t0@@2 1) $MAX_U64) (= (ControlFlow 0 10949) 10951)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ _$t0@@2 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ _$t0@@2 1)) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 10897) 10999) anon3_Then_correct@@0) (=> (= (ControlFlow 0 10897) 10981) anon3_Else_correct@@0))))))
(let ((anon0$1_correct@@2  (=> (|$IsValid'u64'| _$t0@@2) (=> (and (= _$t0@@2 _$t0@@2) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 10957) 10949) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 10957) 10897) inline$$AddU64$0$anon3_Else_correct@@0))))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 12329) 10957) anon0$1_correct@@2)))
anon0_correct@@2))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 12329)))
(get-value ((ControlFlow 0 10957)))
(get-value ((ControlFlow 0 10897)))
(get-value ((ControlFlow 0 10981)))
(assert (not (= (ControlFlow 0 10981) (- 12504))))
(check-sat)
(pop 1)
; Invalid
(declare-fun _$t0@@3 () Int)
(declare-fun _$t1@@1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple3$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12516) (let ((anon0$1_correct@@3  (=> (and (|$IsValid'u64'| _$t0@@3) (|$IsValid'u64'| _$t1@@1)) (=> (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@1 _$t1@@1)) (and (> _$t0@@3 _$t1@@1) (= (ControlFlow 0 11097) (- 0 12574)))) (>= _$t0@@3 _$t1@@1)))))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 12516) 11097) anon0$1_correct@@3)))
anon0_correct@@3)))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@4 () Int)
(declare-fun _$t1@@2 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple3_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12586) (let ((anon0$1_correct@@4  (=> (and (|$IsValid'u64'| _$t0@@4) (|$IsValid'u64'| _$t1@@2)) (=> (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@2 _$t1@@2)) (and (>= _$t0@@4 _$t1@@2) (= (ControlFlow 0 11195) (- 0 12644)))) (> _$t0@@4 _$t1@@2)))))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 12586) 11195) anon0$1_correct@@4)))
anon0_correct@@4)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 12586)))
(get-value ((ControlFlow 0 11195)))
(assert (not (= (ControlFlow 0 11195) (- 12644))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@1 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun _$t1@@3 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$AddU64$0$dst@0@@1 () Int)
(declare-fun inline$$AddU64$0$dst@1@@1 () Int)
(declare-fun $abort_code@0@@1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple4$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12660) (let ((anon3_Else_correct@@1  (=> (and (and (not $abort_flag@0@@1) (= inline$$AddU64$0$dst@2@@1 inline$$AddU64$0$dst@2@@1)) (and (> _$t0@@5 _$t1@@3) (= (ControlFlow 0 11466) (- 0 12847)))) (> inline$$AddU64$0$dst@2@@1 (* 2 _$t1@@3)))))
(let ((anon3_Then_correct@@1 true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@1  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@1 inline$$AddU64$0$dst@0@@1)) (and (=> (= (ControlFlow 0 11424) 11484) anon3_Then_correct@@1) (=> (= (ControlFlow 0 11424) 11466) anon3_Else_correct@@1))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@1  (=> (and (> (+ _$t0@@5 _$t1@@3) $MAX_U64) (= (ControlFlow 0 11422) 11424)) inline$$AddU64$0$anon3_Then$1_correct@@1)))
(let ((inline$$AddU64$0$anon3_Else_correct@@1  (=> (>= $MAX_U64 (+ _$t0@@5 _$t1@@3)) (=> (and (and (= inline$$AddU64$0$dst@1@@1 (+ _$t0@@5 _$t1@@3)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$AddU64$0$dst@2@@1 inline$$AddU64$0$dst@1@@1))) (and (=> (= (ControlFlow 0 11370) 11484) anon3_Then_correct@@1) (=> (= (ControlFlow 0 11370) 11466) anon3_Else_correct@@1))))))
(let ((anon0$1_correct@@5  (=> (and (and (|$IsValid'u64'| _$t0@@5) (|$IsValid'u64'| _$t1@@3)) (and (= _$t0@@5 _$t0@@5) (= _$t1@@3 _$t1@@3))) (and (=> (= (ControlFlow 0 11430) 11422) inline$$AddU64$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 11430) 11370) inline$$AddU64$0$anon3_Else_correct@@1)))))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 12660) 11430) anon0$1_correct@@5)))
anon0_correct@@5))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@2 () Int)
(declare-fun _$t0@@6 () Int)
(declare-fun _$t1@@4 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$AddU64$0$dst@0@@2 () Int)
(declare-fun inline$$AddU64$0$dst@1@@2 () Int)
(declare-fun $abort_code@0@@2 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple4_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12867) (let ((anon3_Else_correct@@2  (=> (and (and (not $abort_flag@0@@2) (= inline$$AddU64$0$dst@2@@2 inline$$AddU64$0$dst@2@@2)) (and (> _$t0@@6 _$t1@@4) (= (ControlFlow 0 11755) (- 0 13054)))) (> inline$$AddU64$0$dst@2@@2 (* 2 _$t0@@6)))))
(let ((anon3_Then_correct@@2 true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@2  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@2 inline$$AddU64$0$dst@0@@2)) (and (=> (= (ControlFlow 0 11713) 11773) anon3_Then_correct@@2) (=> (= (ControlFlow 0 11713) 11755) anon3_Else_correct@@2))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@2  (=> (and (> (+ _$t0@@6 _$t1@@4) $MAX_U64) (= (ControlFlow 0 11711) 11713)) inline$$AddU64$0$anon3_Then$1_correct@@2)))
(let ((inline$$AddU64$0$anon3_Else_correct@@2  (=> (>= $MAX_U64 (+ _$t0@@6 _$t1@@4)) (=> (and (and (= inline$$AddU64$0$dst@1@@2 (+ _$t0@@6 _$t1@@4)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= inline$$AddU64$0$dst@2@@2 inline$$AddU64$0$dst@1@@2))) (and (=> (= (ControlFlow 0 11659) 11773) anon3_Then_correct@@2) (=> (= (ControlFlow 0 11659) 11755) anon3_Else_correct@@2))))))
(let ((anon0$1_correct@@6  (=> (and (and (|$IsValid'u64'| _$t0@@6) (|$IsValid'u64'| _$t1@@4)) (and (= _$t0@@6 _$t0@@6) (= _$t1@@4 _$t1@@4))) (and (=> (= (ControlFlow 0 11719) 11711) inline$$AddU64$0$anon3_Then_correct@@2) (=> (= (ControlFlow 0 11719) 11659) inline$$AddU64$0$anon3_Else_correct@@2)))))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 12867) 11719) anon0$1_correct@@6)))
anon0_correct@@6))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 12867)))
(get-value ((ControlFlow 0 11719)))
(get-value ((ControlFlow 0 11659)))
(get-value ((ControlFlow 0 11755)))
(assert (not (= (ControlFlow 0 11755) (- 13054))))
(check-sat)
(pop 1)
; Invalid
