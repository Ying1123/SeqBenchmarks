(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_10437 0)) ((($Memory_10437 (|domain#$Memory_10437| |T@[Int]Bool|) (|contents#$Memory_10437| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10261 0)) ((($Memory_10261 (|domain#$Memory_10261| |T@[Int]Bool|) (|contents#$Memory_10261| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8542 0)) ((($Mutation_8542 (|l#$Mutation_8542| T@$Location) (|p#$Mutation_8542| (Seq Int)) (|v#$Mutation_8542| (Seq Int)) ) ) ))
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
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |disableinvfriendsandybpl.590:13|
 :skolemid |15|
))))
 :qid |disableinvfriendsandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |disableinvfriendsandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |disableinvfriendsandybpl.603:17|
 :skolemid |18|
)))))
 :qid |disableinvfriendsandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |disableinvfriendsandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |disableinvfriendsandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsandybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsandybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |disableinvfriendsandybpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |disableinvfriendsandybpl.905:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s@@0)))
 :qid |disableinvfriendsandybpl.920:47|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@1) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@1)))
 :qid |disableinvfriendsandybpl.934:47|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |disableinvfriendsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |disableinvfriendsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |disableinvfriendsandybpl.245:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1 () T@$Memory_10261)
(declare-fun $42_TestGlobalInvariants_S_$memory@1 () T@$Memory_10437)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10261)
(declare-fun $abort_code@2 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun $42_TestGlobalInvariants_R_$memory@0 () T@$Memory_10261)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int T@$42_TestGlobalInvariants_R) |T@[Int]$42_TestGlobalInvariants_R|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t5@0 () T@$42_TestGlobalInvariants_R)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_10437)
(declare-fun $42_TestGlobalInvariants_S_$memory@0 () T@$Memory_10437)
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int T@$42_TestGlobalInvariants_S) |T@[Int]$42_TestGlobalInvariants_S|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int) T@$42_TestGlobalInvariants_S)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_S|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_S)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|Store__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|Store__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestGlobalInvariants_S)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_create_R$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 15103) (let ((anon14_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 13385) (- 0 15507)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory@1) a)))
 :qid |disableinvfriendsandybpl.1046:15|
 :skolemid |32|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory@1) a@@0)))
 :qid |disableinvfriendsandybpl.1046:15|
 :skolemid |32|
)) (=> (= (ControlFlow 0 13385) (- 0 15531)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1) a@@1)))
 :qid |disableinvfriendsandybpl.1052:15|
 :skolemid |33|
))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13457) 13399) anon14_Then_correct) (=> (= (ControlFlow 0 13457) 13385) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 13455) 13457)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0 ($Memory_10261 (|Store__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0) $t5@0))) (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory@0)) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 13325) 13399) anon14_Then_correct) (=> (= (ControlFlow 0 13325) 13385) anon14_Else_correct))))))
(let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 13303) (- 0 15373)) (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory@1) a@@2)))
 :qid |disableinvfriendsandybpl.1013:15|
 :skolemid |31|
))) (=> (forall ((a@@3 Int) ) (!  (=> (|$IsValid'address'| a@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory@1) a@@3)))
 :qid |disableinvfriendsandybpl.1013:15|
 :skolemid |31|
)) (=> (and (|$IsValid'u64'| 0) (= $t5@0 ($42_TestGlobalInvariants_R 0))) (and (=> (= (ControlFlow 0 13303) 13455) anon13_Then_correct) (=> (= (ControlFlow 0 13303) 13325) anon13_Else_correct))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13523) 13471) anon12_Then_correct) (=> (= (ControlFlow 0 13523) 13303) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 13521) 13523)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $42_TestGlobalInvariants_S_$memory@0 ($Memory_10437 (|Store__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) (|$addr#$signer| _$t0) $t2@0))) (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 13252) 13471) anon12_Then_correct) (=> (= (ControlFlow 0 13252) 13303) anon12_Else_correct))))))
(let ((anon0$1_correct  (=> (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@4)))
 :qid |disableinvfriendsandybpl.963:20|
 :skolemid |28|
)) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |disableinvfriendsandybpl.969:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $a_0@@0)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@0))
 :qid |disableinvfriendsandybpl.973:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $a_0@@0))
)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0))))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) (|$addr#$signer| _$t0))) (= _$t0 _$t0)) (and (|$IsValid'u64'| 0) (= $t2@0 ($42_TestGlobalInvariants_S 0))))) (and (=> (= (ControlFlow 0 13230) 13521) anon11_Then_correct) (=> (= (ControlFlow 0 13230) 13252) anon11_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15103) 13230) anon0$1_correct)))
anon0_correct)))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1@@0 () T@$Memory_10261)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $42_TestGlobalInvariants_R_$memory@0@@0 () T@$Memory_10261)
(declare-fun $t2@0@@0 () T@$42_TestGlobalInvariants_R)
(declare-fun $abort_code@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_create_R_invalid$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 15586) (let ((anon7_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 13787) (- 0 15805)) (forall ((a@@5 Int) ) (!  (=> (|$IsValid'address'| a@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1@@0) a@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@5)))
 :qid |disableinvfriendsandybpl.1133:15|
 :skolemid |36|
))) (=> (forall ((a@@6 Int) ) (!  (=> (|$IsValid'address'| a@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1@@0) a@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@6)))
 :qid |disableinvfriendsandybpl.1133:15|
 :skolemid |36|
)) (=> (= (ControlFlow 0 13787) (- 0 15830)) (forall ((a@@7 Int) ) (!  (=> (|$IsValid'address'| a@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1@@0) a@@7)))
 :qid |disableinvfriendsandybpl.1139:15|
 :skolemid |37|
))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1@@0 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13857) 13805) anon7_Then_correct) (=> (= (ControlFlow 0 13857) 13787) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 13855) 13857)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0@@0 ($Memory_10261 (|Store__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@0) $t2@0@@0))) (= $42_TestGlobalInvariants_R_$memory@1@@0 $42_TestGlobalInvariants_R_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 13727) 13805) anon7_Then_correct) (=> (= (ControlFlow 0 13727) 13787) anon7_Else_correct))))))
(let ((anon0$1_correct@@0  (=> (and (forall ((a@@8 Int) ) (!  (=> (|$IsValid'address'| a@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@8)))
 :qid |disableinvfriendsandybpl.1090:20|
 :skolemid |34|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@0))) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@1)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc@@1))
 :qid |disableinvfriendsandybpl.1096:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@1))
)) (= _$t0@@0 _$t0@@0)) (and (|$IsValid'u64'| 0) (= $t2@0@@0 ($42_TestGlobalInvariants_R 0)))) (and (=> (= (ControlFlow 0 13705) 13855) anon6_Then_correct) (=> (= (ControlFlow 0 13705) 13727) anon6_Else_correct))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 15586) 13705) anon0$1_correct@@0)))
anon0_correct@@0))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 15586)))
(get-value ((ControlFlow 0 13705)))
(get-value ((ControlFlow 0 13727)))
(get-value ((ControlFlow 0 13787)))
(assert (not (= (ControlFlow 0 13787) (- 15805))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t9@0 () Int)
(declare-fun $t8@1 () T@$42_TestGlobalInvariants_S)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t8 () T@$42_TestGlobalInvariants_S)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () T@$42_TestGlobalInvariants_S)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_get_S_x$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 15863) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@1) (=> (and (= $t9@0 (|$x#$42_TestGlobalInvariants_S| $t8@1)) (= $t9@0 $t9@0)) (and (=> (= (ControlFlow 0 14177) (- 0 16179)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@1))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@1)))) (=> (= (ControlFlow 0 14177) (- 0 16192)) (= $t9@0 (|$x#$42_TestGlobalInvariants_S| (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) (|$addr#$signer| _$t0@@1)))))))))))
(let ((L3_correct  (=> (= (ControlFlow 0 14095) (- 0 16142)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@1))))))
(let ((anon12_Then_correct@@0  (=> $abort_flag@0@@1 (=> (and (= $abort_code@1@@1 $abort_code@1@@1) (= (ControlFlow 0 14191) 14095)) L3_correct))))
(let ((anon11_Then$1_correct@@0  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14243) 14191) anon12_Then_correct@@0) (=> (= (ControlFlow 0 14243) 14177) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $t7)) (= (ControlFlow 0 14241) 14243)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $t7) (=> (and (and (= $t8@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $t7)) (= $t8@1 $t8@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 14125) 14191) anon12_Then_correct@@0) (=> (= (ControlFlow 0 14125) 14177) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> $t4@0 (=> (and (|$IsValid'address'| $t7) (= $t7 (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 14111) 14241) anon11_Then_correct@@0) (=> (= (ControlFlow 0 14111) 14125) anon11_Else_correct@@0))))))
(let ((anon10_Else_correct  (=> (and (and (not $t4@0) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 14077) 14095))) L3_correct)))
(let ((anon0$1_correct@@1  (=> (forall ((a@@9 Int) ) (!  (=> (|$IsValid'address'| a@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@9)))
 :qid |disableinvfriendsandybpl.1185:20|
 :skolemid |38|
)) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@2)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc@@2))
 :qid |disableinvfriendsandybpl.1192:20|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $a_0@@3)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@3))
 :qid |disableinvfriendsandybpl.1196:20|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $a_0@@3))
)) (= _$t0@@1 _$t0@@1))) (and (and (|$IsValid'address'| $t3) (= $t3 (|$addr#$signer| _$t0@@1))) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $t3)) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 14055) 14111) anon10_Then_correct) (=> (= (ControlFlow 0 14055) 14077) anon10_Else_correct))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 15863) 14055) anon0$1_correct@@1)))
anon0_correct@@1)))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1@@1 () T@$Memory_10261)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t8@0@@0 () T@$42_TestGlobalInvariants_R)
(declare-fun $42_TestGlobalInvariants_R_$memory@0@@1 () T@$Memory_10261)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t4@0@@0 () Bool)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t3@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_remove_R_invalid$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16214) (let ((anon11_Else_correct@@1  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 14554) (- 0 16492)) (forall ((a@@10 Int) ) (!  (=> (|$IsValid'address'| a@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1@@1) a@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@10)))
 :qid |disableinvfriendsandybpl.1439:15|
 :skolemid |43|
))) (=> (forall ((a@@11 Int) ) (!  (=> (|$IsValid'address'| a@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1@@1) a@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@11)))
 :qid |disableinvfriendsandybpl.1439:15|
 :skolemid |43|
)) (=> (= (ControlFlow 0 14554) (- 0 16517)) (forall ((a@@12 Int) ) (!  (=> (|$IsValid'address'| a@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory@1@@1) a@@12)))
 :qid |disableinvfriendsandybpl.1445:15|
 :skolemid |44|
))))))))
(let ((anon11_Then_correct@@1 true))
(let ((anon10_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1@@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14620) 14568) anon11_Then_correct@@1) (=> (= (ControlFlow 0 14620) 14554) anon11_Else_correct@@1))))))
(let ((anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $t7@@0)) (= (ControlFlow 0 14618) 14620)) anon10_Then$1_correct)))
(let ((anon10_Else_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $t7@@0) (= $t8@0@@0 (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $t7@@0))) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0@@1 ($Memory_10261 (|Store__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $t7@@0 false) (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory))) (= $42_TestGlobalInvariants_R_$memory@1@@1 $42_TestGlobalInvariants_R_$memory@0@@1)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 14488) 14568) anon11_Then_correct@@1) (=> (= (ControlFlow 0 14488) 14554) anon11_Else_correct@@1))))))
(let ((anon9_Then_correct  (=> $t4@0@@0 (=> (and (|$IsValid'address'| $t7@@0) (= $t7@@0 (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 14468) 14618) anon10_Then_correct@@0) (=> (= (ControlFlow 0 14468) 14488) anon10_Else_correct@@0))))))
(let ((anon9_Else_correct true))
(let ((anon0$1_correct@@2  (=> (and (and (and (forall ((a@@13 Int) ) (!  (=> (|$IsValid'address'| a@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@13)))
 :qid |disableinvfriendsandybpl.1344:20|
 :skolemid |41|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@2))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@4)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc@@4))
 :qid |disableinvfriendsandybpl.1350:20|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@4))
)) (= _$t0@@2 _$t0@@2))) (and (and (|$IsValid'address'| $t3@@0) (= $t3@@0 (|$addr#$signer| _$t0@@2))) (and (= $t4@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $t3@@0)) (= $t4@0@@0 $t4@0@@0)))) (and (=> (= (ControlFlow 0 14418) 14468) anon9_Then_correct) (=> (= (ControlFlow 0 14418) 14440) anon9_Else_correct)))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 16214) 14418) anon0$1_correct@@2)))
anon0_correct@@2))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16214)))
(get-value ((ControlFlow 0 14418)))
(get-value ((ControlFlow 0 14468)))
(get-value ((ControlFlow 0 14488)))
(get-value ((ControlFlow 0 14554)))
(assert (not (= (ControlFlow 0 14554) (- 16517))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $42_TestGlobalInvariants_S_$memory@1@@0 () T@$Memory_10437)
(declare-fun $t9@0@@0 () Int)
(declare-fun $t8@@0 () T@$42_TestGlobalInvariants_S)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t7@@1 () Int)
(declare-fun $t8@0@@1 () T@$42_TestGlobalInvariants_S)
(declare-fun $42_TestGlobalInvariants_S_$memory@0@@0 () T@$Memory_10437)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t4@0@@1 () Bool)
(declare-fun $t3@@1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_remove_S_invalid$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16562) (let ((anon12_Else_correct@@1  (=> (not $abort_flag@0@@3) (and (=> (= (ControlFlow 0 14946) (- 0 16867)) (forall ((a@@14 Int) ) (!  (=> (|$IsValid'address'| a@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory@1@@0) a@@14)))
 :qid |disableinvfriendsandybpl.1592:15|
 :skolemid |48|
))) (=> (forall ((a@@15 Int) ) (!  (=> (|$IsValid'address'| a@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory@1@@0) a@@15)))
 :qid |disableinvfriendsandybpl.1592:15|
 :skolemid |48|
)) (=> (and (= $t9@0@@0 (|$x#$42_TestGlobalInvariants_S| $t8@@0)) (= (ControlFlow 0 14946) (- 0 16908))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@3))))))))))
(let ((L3_correct@@0  (=> (= (ControlFlow 0 14855) (- 0 16847)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) (|$addr#$signer| _$t0@@3))))))
(let ((anon12_Then_correct@@1  (=> $abort_flag@0@@3 (=> (and (= $abort_code@1@@3 $abort_code@1@@3) (= (ControlFlow 0 14960) 14855)) L3_correct@@0))))
(let ((anon11_Then$1_correct@@1  (=> (= $42_TestGlobalInvariants_S_$memory@1@@0 $42_TestGlobalInvariants_S_$memory) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15012) 14960) anon12_Then_correct@@1) (=> (= (ControlFlow 0 15012) 14946) anon12_Else_correct@@1))))))
(let ((anon11_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $t7@@1)) (= (ControlFlow 0 15010) 15012)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $t7@@1) (= $t8@0@@1 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $t7@@1))) (=> (and (and (= $42_TestGlobalInvariants_S_$memory@0@@0 ($Memory_10437 (|Store__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $t7@@1 false) (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory))) (= $42_TestGlobalInvariants_S_$memory@1@@0 $42_TestGlobalInvariants_S_$memory@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 14891) 14960) anon12_Then_correct@@1) (=> (= (ControlFlow 0 14891) 14946) anon12_Else_correct@@1))))))
(let ((anon10_Then_correct@@1  (=> $t4@0@@1 (=> (and (|$IsValid'address'| $t7@@1) (= $t7@@1 (|$addr#$signer| _$t0@@3))) (and (=> (= (ControlFlow 0 14871) 15010) anon11_Then_correct@@2) (=> (= (ControlFlow 0 14871) 14891) anon11_Else_correct@@2))))))
(let ((anon10_Else_correct@@1  (=> (and (and (not $t4@0@@1) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 14837) 14855))) L3_correct@@0)))
(let ((anon0$1_correct@@3  (=> (forall ((a@@16 Int) ) (!  (=> (|$IsValid'address'| a@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) a@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_10437| $42_TestGlobalInvariants_S_$memory) a@@16)))
 :qid |disableinvfriendsandybpl.1496:20|
 :skolemid |45|
)) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@5)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc@@5))
 :qid |disableinvfriendsandybpl.1502:20|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $a_0@@6)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@6))
 :qid |disableinvfriendsandybpl.1506:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10437| $42_TestGlobalInvariants_S_$memory) $a_0@@6))
)) (= _$t0@@3 _$t0@@3))) (and (and (|$IsValid'address'| $t3@@1) (= $t3@@1 (|$addr#$signer| _$t0@@3))) (and (= $t4@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_10261| $42_TestGlobalInvariants_R_$memory) $t3@@1)) (= $t4@0@@1 $t4@0@@1)))) (and (=> (= (ControlFlow 0 14815) 14871) anon10_Then_correct@@1) (=> (= (ControlFlow 0 14815) 14837) anon10_Else_correct@@1))))))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 16562) 14815) anon0$1_correct@@3)))
anon0_correct@@3)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16562)))
(get-value ((ControlFlow 0 14815)))
(get-value ((ControlFlow 0 14871)))
(get-value ((ControlFlow 0 14891)))
(get-value ((ControlFlow 0 14946)))
(assert (not (= (ControlFlow 0 14946) (- 16867))))
(check-sat)
(pop 1)
; Invalid
