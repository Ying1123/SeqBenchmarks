(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12156 0)) ((($Memory_12156 (|domain#$Memory_12156| |T@[Int]Bool|) (|contents#$Memory_12156| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11060 0)) ((($Memory_11060 (|domain#$Memory_11060| |T@[Int]Bool|) (|contents#$Memory_11060| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13992 0)) ((($Mutation_13992 (|l#$Mutation_13992| T@$Location) (|p#$Mutation_13992| (Seq Int)) (|v#$Mutation_13992| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11093 0)) ((($Mutation_11093 (|l#$Mutation_11093| T@$Location) (|p#$Mutation_11093| (Seq Int)) (|v#$Mutation_11093| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9329 0)) ((($Mutation_9329 (|l#$Mutation_9329| T@$Location) (|p#$Mutation_9329| (Seq Int)) (|v#$Mutation_9329| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |scriptproviderz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |scriptproviderz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |scriptproviderz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |scriptproviderz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |scriptproviderz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |scriptproviderz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |scriptproviderz3bpl.590:13|
 :skolemid |15|
))))
 :qid |scriptproviderz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |scriptproviderz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |scriptproviderz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |scriptproviderz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |scriptproviderz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |scriptproviderz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |scriptproviderz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |scriptproviderz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |scriptproviderz3bpl.906:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |scriptproviderz3bpl.1127:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |scriptproviderz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |scriptproviderz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |scriptproviderz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t2@1 () T@$Mutation_11093)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t2@2 () T@$Mutation_11093)
(declare-fun $0_A_S_$memory@0 () T@$Memory_11060)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_11060)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_11093)
(declare-fun $t2@0 () T@$Mutation_11093)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_11093)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17589) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$0_A_S'@0| (|v#$Mutation_11093| $t2@1))) (and (= |$temp_0'$0_A_S'@0| |$temp_0'$0_A_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_11093| $t2@1) (seq.++ (|p#$Mutation_11093| $t2@1) (seq.unit 0)) (|$x#$0_A_S| (|v#$Mutation_11093| $t2@1)))) (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2))) (and (= $t2@2 ($Mutation_11093 (|l#$Mutation_11093| $t2@1) (|p#$Mutation_11093| $t2@1) ($0_A_S (|v#$Mutation_3430| $t5@1)))) (= $0_A_S_$memory@0 ($Memory_11060 (|Store__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_11093| $t2@2)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_11093| $t2@2)) (|v#$Mutation_11093| $t2@2))))))) (and (=> (= (ControlFlow 0 15186) (- 0 17900)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 15186) (- 0 17911)) (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory@0) _$t0)) 2)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 15214) (- 0 17798))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15266) 15214) anon8_Then_correct) (=> (= (ControlFlow 0 15266) 15186) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 15264) 15266)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_11093 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15088) 15214) anon8_Then_correct) (=> (= (ControlFlow 0 15088) 15186) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |scriptproviderz3bpl.942:20|
 :skolemid |25|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 15066) (- 0 17711)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (and (=> (= (ControlFlow 0 15066) 15264) anon7_Then_correct) (=> (= (ControlFlow 0 15066) 15088) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_11093| $t1)) 0) (= (seq.len (|p#$Mutation_11093| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 15010) 15066))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17589) 15010) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12156 0)) ((($Memory_12156 (|domain#$Memory_12156| |T@[Int]Bool|) (|contents#$Memory_12156| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11060 0)) ((($Memory_11060 (|domain#$Memory_11060| |T@[Int]Bool|) (|contents#$Memory_11060| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13992 0)) ((($Mutation_13992 (|l#$Mutation_13992| T@$Location) (|p#$Mutation_13992| (Seq Int)) (|v#$Mutation_13992| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11093 0)) ((($Mutation_11093 (|l#$Mutation_11093| T@$Location) (|p#$Mutation_11093| (Seq Int)) (|v#$Mutation_11093| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9329 0)) ((($Mutation_9329 (|l#$Mutation_9329| T@$Location) (|p#$Mutation_9329| (Seq Int)) (|v#$Mutation_9329| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |scriptproviderz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |scriptproviderz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |scriptproviderz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |scriptproviderz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |scriptproviderz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |scriptproviderz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |scriptproviderz3bpl.590:13|
 :skolemid |15|
))))
 :qid |scriptproviderz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |scriptproviderz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |scriptproviderz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |scriptproviderz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |scriptproviderz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |scriptproviderz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |scriptproviderz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |scriptproviderz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |scriptproviderz3bpl.906:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |scriptproviderz3bpl.1127:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |scriptproviderz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |scriptproviderz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |scriptproviderz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t2@1 () T@$0_A_S)
(declare-fun $t4@0 () Int)
(declare-fun $0_A_S_$memory () T@$Memory_11060)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$0_A_S)
(declare-fun $t2@0 () T@$0_A_S)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $0_A_read_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17949) (let ((anon8_Else_correct  (=> (and (and (not $abort_flag@0) (= $t2@1 $t2@1)) (and (= $t4@0 (|$x#$0_A_S| $t2@1)) (= $t4@0 $t4@0))) (and (=> (= (ControlFlow 0 15474) (- 0 18154)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 15474) (- 0 18165)) (= $t4@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t0)))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 15502) (- 0 18112))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15554) 15502) anon8_Then_correct) (=> (= (ControlFlow 0 15554) 15474) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 15552) 15554)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t0)) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15418) 15502) anon8_Then_correct) (=> (= (ControlFlow 0 15418) 15474) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |scriptproviderz3bpl.1053:20|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 15404) 15552) anon7_Then_correct) (=> (= (ControlFlow 0 15404) 15418) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17949) 15404) anon0$1_correct)))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12156 0)) ((($Memory_12156 (|domain#$Memory_12156| |T@[Int]Bool|) (|contents#$Memory_12156| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11060 0)) ((($Memory_11060 (|domain#$Memory_11060| |T@[Int]Bool|) (|contents#$Memory_11060| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13992 0)) ((($Mutation_13992 (|l#$Mutation_13992| T@$Location) (|p#$Mutation_13992| (Seq Int)) (|v#$Mutation_13992| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11093 0)) ((($Mutation_11093 (|l#$Mutation_11093| T@$Location) (|p#$Mutation_11093| (Seq Int)) (|v#$Mutation_11093| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9329 0)) ((($Mutation_9329 (|l#$Mutation_9329| T@$Location) (|p#$Mutation_9329| (Seq Int)) (|v#$Mutation_9329| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |scriptproviderz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |scriptproviderz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |scriptproviderz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |scriptproviderz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |scriptproviderz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |scriptproviderz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |scriptproviderz3bpl.590:13|
 :skolemid |15|
))))
 :qid |scriptproviderz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |scriptproviderz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |scriptproviderz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |scriptproviderz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |scriptproviderz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |scriptproviderz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |scriptproviderz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |scriptproviderz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |scriptproviderz3bpl.906:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |scriptproviderz3bpl.1127:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |scriptproviderz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |scriptproviderz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |scriptproviderz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t10 () Bool)
(declare-fun $t9 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory () T@$Memory_11060)
(declare-fun _$t1 () Int)
(declare-fun $t5 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t8@1 () T@$0_B_T)
(declare-fun $t8 () T@$0_B_T)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_12156)
(declare-fun _$t0 () Int)
(declare-fun $t8@0 () T@$0_B_T)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(declare-fun $0_B_T_$memory@0 () T@$Memory_12156)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_from_test_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18187) (let ((anon13_Else_correct  (=> (not $t10) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t1)))) (and (= $t9 $t9) (= (ControlFlow 0 15853) (- 0 18516)))) (= $t5 $t9)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t8@1 $t8@1) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t1)))) (and (=> (= (ControlFlow 0 15805) 15865) anon13_Then_correct) (=> (= (ControlFlow 0 15805) 15853) anon13_Else_correct))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15937) 15885) anon12_Then_correct) (=> (= (ControlFlow 0 15937) 15805) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) _$t0)) (= (ControlFlow 0 15935) 15937)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) _$t0) (= $t8@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) _$t0))) (=> (and (and (= $0_B_T_$memory@0 ($Memory_12156 (|Store__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) _$t0 false) (|contents#$Memory_12156| $0_B_T_$memory))) (= $t8@1 $t8@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15777) 15885) anon12_Then_correct) (=> (= (ControlFlow 0 15777) 15805) anon12_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t6) (|$IsValid'u64'| $t5)) (and (= $t5 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t1))) (= $t5 $t5))) (and (=> (= (ControlFlow 0 15757) (- 0 18365)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 15757) 15935) anon11_Then_correct) (=> (= (ControlFlow 0 15757) 15777) anon11_Else_correct)))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |scriptproviderz3bpl.1169:20|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) $a_0@@0)))
(|$IsValid'$0_B_T'| $rsc@@0))
 :qid |scriptproviderz3bpl.1173:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) $a_0@@0))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 15721) 15949) anon10_Then_correct) (=> (= (ControlFlow 0 15721) 15757) anon10_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18187) 15721) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18187)))
(get-value ((ControlFlow 0 15721)))
(get-value ((ControlFlow 0 15757)))
(assert (not (= (ControlFlow 0 15757) (- 18365))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12156 0)) ((($Memory_12156 (|domain#$Memory_12156| |T@[Int]Bool|) (|contents#$Memory_12156| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11060 0)) ((($Memory_11060 (|domain#$Memory_11060| |T@[Int]Bool|) (|contents#$Memory_11060| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13992 0)) ((($Mutation_13992 (|l#$Mutation_13992| T@$Location) (|p#$Mutation_13992| (Seq Int)) (|v#$Mutation_13992| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11093 0)) ((($Mutation_11093 (|l#$Mutation_11093| T@$Location) (|p#$Mutation_11093| (Seq Int)) (|v#$Mutation_11093| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9329 0)) ((($Mutation_9329 (|l#$Mutation_9329| T@$Location) (|p#$Mutation_9329| (Seq Int)) (|v#$Mutation_9329| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |scriptproviderz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |scriptproviderz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |scriptproviderz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |scriptproviderz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |scriptproviderz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |scriptproviderz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |scriptproviderz3bpl.590:13|
 :skolemid |15|
))))
 :qid |scriptproviderz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |scriptproviderz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |scriptproviderz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |scriptproviderz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |scriptproviderz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |scriptproviderz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |scriptproviderz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |scriptproviderz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |scriptproviderz3bpl.906:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |scriptproviderz3bpl.1127:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |scriptproviderz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |scriptproviderz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |scriptproviderz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t10 () Bool)
(declare-fun $t9 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory () T@$Memory_11060)
(declare-fun _$t1 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_12156)
(declare-fun _$t0 () T@$signer)
(declare-fun $0_B_T_$memory@0 () T@$Memory_12156)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun $t8@0 () T@$0_B_T)
(declare-fun $abort_code@0 () Int)
(declare-fun $t5 () Bool)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_to_test_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18550) (let ((anon13_Else_correct  (=> (not $t10) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t1)))) (and (= $t9 $t9) (= (ControlFlow 0 16258) (- 0 18877)))) (= $t4 $t9)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (and (not $abort_flag@0) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t1)))) (and (=> (= (ControlFlow 0 16220) 16270) anon13_Then_correct) (=> (= (ControlFlow 0 16220) 16258) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16342) 16290) anon12_Then_correct) (=> (= (ControlFlow 0 16342) 16220) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 16340) 16342)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) (|$addr#$signer| _$t0))) (= $0_B_T_$memory@0 ($Memory_12156 (|Store__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) (|$addr#$signer| _$t0) $t8@0)))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 16198) 16290) anon12_Then_correct) (=> (= (ControlFlow 0 16198) 16220) anon12_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not $t5) (|$IsValid'u64'| $t4)) (=> (and (and (= $t4 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t1))) (= $t4 $t4)) (and (|$IsValid'u64'| 2) (= $t8@0 ($0_B_T 2)))) (and (=> (= (ControlFlow 0 16176) (- 0 18743)) (|Select__T@[Int]Bool_| $0_B_T_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 16176) 16340) anon11_Then_correct) (=> (= (ControlFlow 0 16176) 16198) anon11_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |scriptproviderz3bpl.1342:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) $a_0@@0)))
(|$IsValid'$0_B_T'| $rsc@@0))
 :qid |scriptproviderz3bpl.1346:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) $a_0@@0))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t5  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 16128) 16354) anon10_Then_correct) (=> (= (ControlFlow 0 16128) 16176) anon10_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18550) 16128) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18550)))
(get-value ((ControlFlow 0 16128)))
(get-value ((ControlFlow 0 16176)))
(assert (not (= (ControlFlow 0 16176) (- 18743))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12156 0)) ((($Memory_12156 (|domain#$Memory_12156| |T@[Int]Bool|) (|contents#$Memory_12156| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11060 0)) ((($Memory_11060 (|domain#$Memory_11060| |T@[Int]Bool|) (|contents#$Memory_11060| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13992 0)) ((($Mutation_13992 (|l#$Mutation_13992| T@$Location) (|p#$Mutation_13992| (Seq Int)) (|v#$Mutation_13992| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11093 0)) ((($Mutation_11093 (|l#$Mutation_11093| T@$Location) (|p#$Mutation_11093| (Seq Int)) (|v#$Mutation_11093| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9329 0)) ((($Mutation_9329 (|l#$Mutation_9329| T@$Location) (|p#$Mutation_9329| (Seq Int)) (|v#$Mutation_9329| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |scriptproviderz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |scriptproviderz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |scriptproviderz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |scriptproviderz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |scriptproviderz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |scriptproviderz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |scriptproviderz3bpl.590:13|
 :skolemid |15|
))))
 :qid |scriptproviderz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |scriptproviderz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |scriptproviderz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |scriptproviderz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |scriptproviderz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |scriptproviderz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |scriptproviderz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |scriptproviderz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |scriptproviderz3bpl.906:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |scriptproviderz3bpl.1127:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |scriptproviderz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |scriptproviderz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |scriptproviderz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t9 () Bool)
(declare-fun $t8 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory@2 () T@$Memory_11060)
(declare-fun _$t1 () Int)
(declare-fun $t4 () Int)
(declare-fun _$t0 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $0_A_S_$memory@1 () T@$Memory_11060)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_11060)
(declare-fun $0_A_S_$memory@0 () T@$Memory_11060)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t7 () Bool)
(declare-fun $t5 () Bool)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test1_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18901) (let ((anon13_Else_correct  (=> (not $t9) (=> (and (and (|$IsValid'u64'| $t8) (= $t8 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory@2) _$t1)))) (and (= $t8 $t8) (= (ControlFlow 0 16656) (- 0 19191)))) (= $t4 $t8)))))
(let ((anon13_Then_correct true))
(let ((anon7_correct  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory@2) _$t0)) 2) (= $t9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory@2) _$t1)))) (and (=> (= (ControlFlow 0 16618) 16668) anon13_Then_correct) (=> (= (ControlFlow 0 16618) 16656) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $0_A_S_$memory@1 ($Memory_11060 (|Store__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0 false) (|contents#$Memory_11060| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@1) (= (ControlFlow 0 16590) 16618))) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $0_A_S_$memory@0 ($Memory_11060 (|Store__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t0 |$temp_0'$0_A_S'@0|)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@0) (= (ControlFlow 0 16686) 16618))) anon7_correct)))
(let ((anon11_Else_correct  (=> (not $t7) (and (=> (= (ControlFlow 0 16578) 16686) anon12_Then_correct) (=> (= (ControlFlow 0 16578) 16590) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> (and (and (not $t5) (|$IsValid'u64'| $t4)) (and (= $t4 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t1))) (= $t4 $t4))) (and (=> (= (ControlFlow 0 16572) (- 0 19054)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= $t7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0))) (and (=> (= (ControlFlow 0 16572) 16698) anon11_Then_correct) (=> (= (ControlFlow 0 16572) 16578) anon11_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |scriptproviderz3bpl.1513:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0))
)) (not (= _$t0 _$t1)))) (and (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t5  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 16524) 16710) anon10_Then_correct) (=> (= (ControlFlow 0 16524) 16572) anon10_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18901) 16524) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18901)))
(get-value ((ControlFlow 0 16524)))
(get-value ((ControlFlow 0 16572)))
(assert (not (= (ControlFlow 0 16572) (- 19054))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12156 0)) ((($Memory_12156 (|domain#$Memory_12156| |T@[Int]Bool|) (|contents#$Memory_12156| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11060 0)) ((($Memory_11060 (|domain#$Memory_11060| |T@[Int]Bool|) (|contents#$Memory_11060| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13992 0)) ((($Mutation_13992 (|l#$Mutation_13992| T@$Location) (|p#$Mutation_13992| (Seq Int)) (|v#$Mutation_13992| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11093 0)) ((($Mutation_11093 (|l#$Mutation_11093| T@$Location) (|p#$Mutation_11093| (Seq Int)) (|v#$Mutation_11093| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9329 0)) ((($Mutation_9329 (|l#$Mutation_9329| T@$Location) (|p#$Mutation_9329| (Seq Int)) (|v#$Mutation_9329| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |scriptproviderz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |scriptproviderz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |scriptproviderz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |scriptproviderz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |scriptproviderz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |scriptproviderz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |scriptproviderz3bpl.590:13|
 :skolemid |15|
))))
 :qid |scriptproviderz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |scriptproviderz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |scriptproviderz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |scriptproviderz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |scriptproviderz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |scriptproviderz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |scriptproviderz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |scriptproviderz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |scriptproviderz3bpl.906:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |scriptproviderz3bpl.1127:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |scriptproviderz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |scriptproviderz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |scriptproviderz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t8 () Bool)
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory@2 () T@$Memory_11060)
(declare-fun _$t0 () Int)
(declare-fun $t3 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $0_A_S_$memory@1 () T@$Memory_11060)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_11060)
(declare-fun $0_A_S_$memory@0 () T@$Memory_11060)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t6 () Bool)
(declare-fun $t4 () Bool)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19214) (let ((anon13_Else_correct  (=> (not $t8) (=> (and (and (|$IsValid'u64'| $t7) (= $t7 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory@2) _$t0)))) (and (= $t7 $t7) (= (ControlFlow 0 16976) (- 0 19482)))) (= $t3 $t7)))))
(let ((anon13_Then_correct true))
(let ((anon7_correct  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory@2) _$t0)) 2) (= $t8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory@2) _$t0)))) (and (=> (= (ControlFlow 0 16938) 16988) anon13_Then_correct) (=> (= (ControlFlow 0 16938) 16976) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $0_A_S_$memory@1 ($Memory_11060 (|Store__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0 false) (|contents#$Memory_11060| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@1) (= (ControlFlow 0 16910) 16938))) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $0_A_S_$memory@0 ($Memory_11060 (|Store__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t0 |$temp_0'$0_A_S'@0|)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@0) (= (ControlFlow 0 17006) 16938))) anon7_correct)))
(let ((anon11_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 16898) 17006) anon12_Then_correct) (=> (= (ControlFlow 0 16898) 16910) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> (and (and (not $t4) (|$IsValid'u64'| $t3)) (and (= $t3 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t0))) (= $t3 $t3))) (and (=> (= (ControlFlow 0 16892) (- 0 19345)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0))) (and (=> (= (ControlFlow 0 16892) 17018) anon11_Then_correct) (=> (= (ControlFlow 0 16892) 16898) anon11_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |scriptproviderz3bpl.1697:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (and (= _$t0 _$t0) (= $t4  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t0))))) (and (=> (= (ControlFlow 0 16844) 17030) anon10_Then_correct) (=> (= (ControlFlow 0 16844) 16892) anon10_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19214) 16844) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19214)))
(get-value ((ControlFlow 0 16844)))
(get-value ((ControlFlow 0 16892)))
(get-value ((ControlFlow 0 16898)))
(get-value ((ControlFlow 0 17006)))
(get-value ((ControlFlow 0 16938)))
(get-value ((ControlFlow 0 16976)))
(assert (not (= (ControlFlow 0 16976) (- 19482))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12156 0)) ((($Memory_12156 (|domain#$Memory_12156| |T@[Int]Bool|) (|contents#$Memory_12156| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11060 0)) ((($Memory_11060 (|domain#$Memory_11060| |T@[Int]Bool|) (|contents#$Memory_11060| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13992 0)) ((($Mutation_13992 (|l#$Mutation_13992| T@$Location) (|p#$Mutation_13992| (Seq Int)) (|v#$Mutation_13992| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11093 0)) ((($Mutation_11093 (|l#$Mutation_11093| T@$Location) (|p#$Mutation_11093| (Seq Int)) (|v#$Mutation_11093| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9329 0)) ((($Mutation_9329 (|l#$Mutation_9329| T@$Location) (|p#$Mutation_9329| (Seq Int)) (|v#$Mutation_9329| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |scriptproviderz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |scriptproviderz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |scriptproviderz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |scriptproviderz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |scriptproviderz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |scriptproviderz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |scriptproviderz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |scriptproviderz3bpl.590:13|
 :skolemid |15|
))))
 :qid |scriptproviderz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |scriptproviderz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |scriptproviderz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |scriptproviderz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |scriptproviderz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |scriptproviderz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |scriptproviderz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |scriptproviderz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |scriptproviderz3bpl.906:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |scriptproviderz3bpl.1127:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |scriptproviderz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |scriptproviderz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |scriptproviderz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory () T@$Memory_11060)
(declare-fun _$t1 () Int)
(declare-fun $t5 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_B_T'@0| () T@$0_B_T)
(declare-fun $t8@1 () T@$Mutation_13992)
(declare-fun $t10@0 () T@$Mutation_3430)
(declare-fun $t10@1 () T@$Mutation_3430)
(declare-fun $t8@2 () T@$Mutation_13992)
(declare-fun $0_B_T_$memory@0 () T@$Memory_12156)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_B_T_$memory () T@$Memory_12156)
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun $t8 () T@$Mutation_13992)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $t8@0 () T@$Mutation_13992)
(declare-fun $abort_code@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(declare-fun $t2 () T@$Mutation_13992)
(declare-fun $t10 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_at_test_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19506) (let ((anon13_Else_correct  (=> (not $t12) (=> (and (and (|$IsValid'u64'| $t11) (= $t11 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t1)))) (and (= $t11 $t11) (= (ControlFlow 0 17396) (- 0 19934)))) (= $t5 $t11)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |$temp_0'$0_B_T'@0| (|v#$Mutation_13992| $t8@1)) (= |$temp_0'$0_B_T'@0| |$temp_0'$0_B_T'@0|)) (and (|$IsValid'u64'| 2) (= $t10@0 ($Mutation_3430 (|l#$Mutation_13992| $t8@1) (seq.++ (|p#$Mutation_13992| $t8@1) (seq.unit 0)) (|$x#$0_B_T| (|v#$Mutation_13992| $t8@1)))))) (and (and (= $t10@1 ($Mutation_3430 (|l#$Mutation_3430| $t10@0) (|p#$Mutation_3430| $t10@0) 2)) (= $t8@2 ($Mutation_13992 (|l#$Mutation_13992| $t8@1) (|p#$Mutation_13992| $t8@1) ($0_B_T (|v#$Mutation_3430| $t10@1))))) (and (= $0_B_T_$memory@0 ($Memory_12156 (|Store__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_13992| $t8@2)) true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_13992| $t8@2)) (|v#$Mutation_13992| $t8@2)))) (= $t12  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 17358) 17408) anon13_Then_correct) (=> (= (ControlFlow 0 17358) 17396) anon13_Else_correct))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 17480) 17428) anon12_Then_correct) (=> (= (ControlFlow 0 17480) 17358) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) _$t0)) (= (ControlFlow 0 17478) 17480)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_12156| $0_B_T_$memory) _$t0) (=> (and (and (= $t8@0 ($Mutation_13992 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) _$t0))) (= $t8@1 $t8@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 17274) 17428) anon12_Then_correct) (=> (= (ControlFlow 0 17274) 17358) anon12_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t6) (|$IsValid'u64'| $t5)) (and (= $t5 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) _$t1))) (= $t5 $t5))) (and (=> (= (ControlFlow 0 17252) (- 0 19710)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 17252) 17478) anon11_Then_correct) (=> (= (ControlFlow 0 17252) 17274) anon11_Else_correct)))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |scriptproviderz3bpl.1884:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11060| $0_A_S_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) $a_0@@0)))
(|$IsValid'$0_B_T'| $rsc@@0))
 :qid |scriptproviderz3bpl.1888:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12156| $0_B_T_$memory) $a_0@@0))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11060| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 17216) 17492) anon10_Then_correct) (=> (= (ControlFlow 0 17216) 17252) anon10_Else_correct)))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_13992| $t2)) 0) (= (seq.len (|p#$Mutation_13992| $t8)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t10)) 0) (= (ControlFlow 0 17124) 17216))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19506) 17124) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19506)))
(get-value ((ControlFlow 0 17124)))
(get-value ((ControlFlow 0 17216)))
(get-value ((ControlFlow 0 17252)))
(assert (not (= (ControlFlow 0 17252) (- 19710))))
(check-sat)
(pop 1)
; Invalid
