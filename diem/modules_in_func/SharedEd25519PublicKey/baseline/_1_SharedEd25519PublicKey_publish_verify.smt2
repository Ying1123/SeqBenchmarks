(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_30941 0)) ((($Memory_30941 (|domain#$Memory_30941| |T@[Int]Bool|) (|contents#$Memory_30941| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_20335 0)) (((Vec_20335 (|v#Vec_20335| |T@[Int]#0|) (|l#Vec_20335| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_34923 0)) ((($Memory_34923 (|domain#$Memory_34923| |T@[Int]Bool|) (|contents#$Memory_34923| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_9892 0)) (((Vec_9892 (|v#Vec_9892| |T@[Int]Int|) (|l#Vec_9892| Int) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@Vec_9892) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_37508 0)) ((($Memory_37508 (|domain#$Memory_37508| |T@[Int]Bool|) (|contents#$Memory_37508| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_33651 0)) ((($Memory_33651 (|domain#$Memory_33651| |T@[Int]Bool|) (|contents#$Memory_33651| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_34701 0)) ((($Memory_34701 (|domain#$Memory_34701| |T@[Int]Bool|) (|contents#$Memory_34701| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_19255 0)) (((Vec_19255 (|v#Vec_19255| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_19255| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_19255) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_19216 0)) (((Vec_19216 (|v#Vec_19216| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_19216| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_19216) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_9892) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_33684 0)) ((($Memory_33684 (|domain#$Memory_33684| |T@[Int]Bool|) (|contents#$Memory_33684| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_33202 0)) ((($Memory_33202 (|domain#$Memory_33202| |T@[Int]Bool|) (|contents#$Memory_33202| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_9892) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_9892) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_9892) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_9892) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_19175 0)) (((Multiset_19175 (|v#Multiset_19175| |T@[$EventRep]Int|) (|l#Multiset_19175| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_19175| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_19175|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37719 0)) ((($Mutation_37719 (|l#$Mutation_37719| T@$Location) (|p#$Mutation_37719| T@Vec_9892) (|v#$Mutation_37719| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_35776 0)) ((($Mutation_35776 (|l#$Mutation_35776| T@$Location) (|p#$Mutation_35776| T@Vec_9892) (|v#$Mutation_35776| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_35731 0)) ((($Mutation_35731 (|l#$Mutation_35731| T@$Location) (|p#$Mutation_35731| T@Vec_9892) (|v#$Mutation_35731| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_31572 0)) ((($Mutation_31572 (|l#$Mutation_31572| T@$Location) (|p#$Mutation_31572| T@Vec_9892) (|v#$Mutation_31572| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7024 0)) ((($Mutation_7024 (|l#$Mutation_7024| T@$Location) (|p#$Mutation_7024| T@Vec_9892) (|v#$Mutation_7024| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28896 0)) ((($Mutation_28896 (|l#$Mutation_28896| T@$Location) (|p#$Mutation_28896| T@Vec_9892) (|v#$Mutation_28896| T@Vec_9892) ) ) ))
(declare-datatypes ((T@$Mutation_27319 0)) ((($Mutation_27319 (|l#$Mutation_27319| T@$Location) (|p#$Mutation_27319| T@Vec_9892) (|v#$Mutation_27319| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_26332 0)) ((($Mutation_26332 (|l#$Mutation_26332| T@$Location) (|p#$Mutation_26332| T@Vec_9892) (|v#$Mutation_26332| T@Vec_19255) ) ) ))
(declare-datatypes ((T@$Mutation_24667 0)) ((($Mutation_24667 (|l#$Mutation_24667| T@$Location) (|p#$Mutation_24667| T@Vec_9892) (|v#$Mutation_24667| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_23680 0)) ((($Mutation_23680 (|l#$Mutation_23680| T@$Location) (|p#$Mutation_23680| T@Vec_9892) (|v#$Mutation_23680| T@Vec_19216) ) ) ))
(declare-datatypes ((T@$Mutation_21967 0)) ((($Mutation_21967 (|l#$Mutation_21967| T@$Location) (|p#$Mutation_21967| T@Vec_9892) (|v#$Mutation_21967| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_20980 0)) ((($Mutation_20980 (|l#$Mutation_20980| T@$Location) (|p#$Mutation_20980| T@Vec_9892) (|v#$Mutation_20980| T@Vec_20335) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_20335 T@Vec_20335) Bool)
(declare-fun InRangeVec_16544 (T@Vec_20335 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_20335) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_20335 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_19216 T@Vec_19216) Bool)
(declare-fun InRangeVec_16745 (T@Vec_19216 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_19216) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_19216 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_19255 T@Vec_19255) Bool)
(declare-fun InRangeVec_16946 (T@Vec_19255 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_19255) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_19255 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_9892 T@Vec_9892) Bool)
(declare-fun InRangeVec_6400 (T@Vec_9892 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_9892) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_9892 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_9892) T@Vec_9892)
(declare-fun $1_Hash_sha3 (T@Vec_9892) T@Vec_9892)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_9892) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_9892 T@Vec_9892 T@Vec_9892) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_19175_| (|T@[$1_Event_EventHandle]Multiset_19175| T@$1_Event_EventHandle) T@Multiset_19175)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AccountOperationsCapability'| (T@$1_DiemAccount_AccountOperationsCapability) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AdminTransactionEvent'| (T@$1_DiemAccount_AdminTransactionEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun $1_Authenticator_spec_ed25519_authentication_key (T@Vec_9892) T@Vec_9892)
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun IndexOfVec_19216 (T@Vec_19216 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_19255 (T@Vec_19255 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_9892 (T@Vec_9892 Int) Int)
(declare-fun IndexOfVec_20335 (T@Vec_20335 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_19175| |T@[$1_Event_EventHandle]Multiset_19175|) |T@[$1_Event_EventHandle]Multiset_19175|)
(declare-fun |lambda#15| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#13| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SharedEd25519PublicKeybpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SharedEd25519PublicKeybpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SharedEd25519PublicKeybpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SharedEd25519PublicKeybpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SharedEd25519PublicKeybpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SharedEd25519PublicKeybpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeybpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeybpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_20335) (v2 T@Vec_20335) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_20335| v1) (|l#Vec_20335| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_16544 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_20335| v2) i@@0)))
 :qid |SharedEd25519PublicKeybpl.615:13|
 :skolemid |17|
))))
 :qid |SharedEd25519PublicKeybpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_20335) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_20335| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_16544 v@@4 i@@1) true)
 :qid |SharedEd25519PublicKeybpl.621:13|
 :skolemid |19|
))))
 :qid |SharedEd25519PublicKeybpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_20335) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_16544 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@5) i@@3) e))
 :qid |SharedEd25519PublicKeybpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_16544 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@5) j) e)))
 :qid |SharedEd25519PublicKeybpl.634:17|
 :skolemid |22|
)))))
 :qid |SharedEd25519PublicKeybpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_19216) (v2@@0 T@Vec_19216) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_19216| v1@@0) (|l#Vec_19216| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_16745 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v2@@0) i@@4)))
 :qid |SharedEd25519PublicKeybpl.796:13|
 :skolemid |24|
))))
 :qid |SharedEd25519PublicKeybpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_19216) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_19216| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_16745 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@6) i@@5)))
 :qid |SharedEd25519PublicKeybpl.802:13|
 :skolemid |26|
))))
 :qid |SharedEd25519PublicKeybpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_19216) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_16745 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@7) i@@7) e@@0))
 :qid |SharedEd25519PublicKeybpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_16745 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@7) j@@0) e@@0)))
 :qid |SharedEd25519PublicKeybpl.815:17|
 :skolemid |29|
)))))
 :qid |SharedEd25519PublicKeybpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_19255) (v2@@1 T@Vec_19255) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_19255| v1@@1) (|l#Vec_19255| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_16946 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v2@@1) i@@8)))
 :qid |SharedEd25519PublicKeybpl.977:13|
 :skolemid |31|
))))
 :qid |SharedEd25519PublicKeybpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_19255) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_19255| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_16946 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@8) i@@9)))
 :qid |SharedEd25519PublicKeybpl.983:13|
 :skolemid |33|
))))
 :qid |SharedEd25519PublicKeybpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_19255) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_16946 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@9) i@@11) e@@1))
 :qid |SharedEd25519PublicKeybpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_16946 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@9) j@@1) e@@1)))
 :qid |SharedEd25519PublicKeybpl.996:17|
 :skolemid |36|
)))))
 :qid |SharedEd25519PublicKeybpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_9892) (v2@@2 T@Vec_9892) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2)  (and (= (|l#Vec_9892| v1@@2) (|l#Vec_9892| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6400 v1@@2 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v1@@2) i@@12) (|Select__T@[Int]Int_| (|v#Vec_9892| v2@@2) i@@12)))
 :qid |SharedEd25519PublicKeybpl.1158:13|
 :skolemid |38|
))))
 :qid |SharedEd25519PublicKeybpl.1156:28|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'u8''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_9892) ) (! (= (|$IsValid'vec'u8''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_9892| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6400 v@@10 i@@13) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_9892| v@@10) i@@13)))
 :qid |SharedEd25519PublicKeybpl.1164:13|
 :skolemid |40|
))))
 :qid |SharedEd25519PublicKeybpl.1162:28|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u8''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_9892) (e@@2 Int) ) (! (let ((i@@14 (|$IndexOfVec'u8'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6400 v@@11 i@@15)) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@11) i@@15) e@@2))
 :qid |SharedEd25519PublicKeybpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6400 v@@11 i@@14)) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@11) j@@2) e@@2)))
 :qid |SharedEd25519PublicKeybpl.1177:17|
 :skolemid |43|
)))))
 :qid |SharedEd25519PublicKeybpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u8'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_9892) (v2@@3 T@Vec_9892) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@3) ($1_Hash_sha2 v2@@3)))
 :qid |SharedEd25519PublicKeybpl.1350:15|
 :skolemid |45|
 :pattern ( ($1_Hash_sha2 v1@@3) ($1_Hash_sha2 v2@@3))
)))
(assert (forall ((v1@@4 T@Vec_9892) (v2@@4 T@Vec_9892) ) (! (= (|$IsEqual'vec'u8''| v1@@4 v2@@4) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@4) ($1_Hash_sha3 v2@@4)))
 :qid |SharedEd25519PublicKeybpl.1366:15|
 :skolemid |46|
 :pattern ( ($1_Hash_sha3 v1@@4) ($1_Hash_sha3 v2@@4))
)))
(assert (forall ((k1 T@Vec_9892) (k2 T@Vec_9892) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SharedEd25519PublicKeybpl.1437:15|
 :skolemid |47|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_9892) (s2 T@Vec_9892) (k1@@0 T@Vec_9892) (k2@@0 T@Vec_9892) (m1 T@Vec_9892) (m2 T@Vec_9892) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SharedEd25519PublicKeybpl.1440:15|
 :skolemid |48|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_19175_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_19175| stream) 0) (forall ((v@@12 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_19175| stream) v@@12) 0)
 :qid |SharedEd25519PublicKeybpl.159:13|
 :skolemid |4|
))))
 :qid |SharedEd25519PublicKeybpl.1501:13|
 :skolemid |49|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h) true)
 :qid |SharedEd25519PublicKeybpl.1542:79|
 :skolemid |51|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_AdminTransactionEvent) (v2@@5 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5)))
 :qid |SharedEd25519PublicKeybpl.1548:15|
 :skolemid |52|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0) true)
 :qid |SharedEd25519PublicKeybpl.1598:76|
 :skolemid |53|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_CreateAccountEvent) (v2@@6 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6)))
 :qid |SharedEd25519PublicKeybpl.1604:15|
 :skolemid |54|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1) true)
 :qid |SharedEd25519PublicKeybpl.1654:78|
 :skolemid |55|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@7 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@7)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@7))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@7))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@7))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7)))
 :qid |SharedEd25519PublicKeybpl.1660:15|
 :skolemid |56|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2) true)
 :qid |SharedEd25519PublicKeybpl.1710:74|
 :skolemid |57|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_SentPaymentEvent) (v2@@8 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@8)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@8))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@8))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@8))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8)))
 :qid |SharedEd25519PublicKeybpl.1716:15|
 :skolemid |58|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8))
)))
(assert (forall ((s T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s)))
 :qid |SharedEd25519PublicKeybpl.1775:36|
 :skolemid |59|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s))
)))
(assert (forall ((s@@0 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@0) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@0)))
 :qid |SharedEd25519PublicKeybpl.1829:75|
 :skolemid |60|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@0))
)))
(assert (forall ((s@@1 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@1) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@1)))
 :qid |SharedEd25519PublicKeybpl.1841:72|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@1))
)))
(assert (forall ((s@@2 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@2) true)
 :qid |SharedEd25519PublicKeybpl.1853:68|
 :skolemid |62|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@2))
)))
(assert (forall ((s@@3 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@3) true)
 :qid |SharedEd25519PublicKeybpl.1866:51|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@3))
)))
(assert (forall ((s@@4 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@4)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@4)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@4))))
 :qid |SharedEd25519PublicKeybpl.1950:47|
 :skolemid |64|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@4))
)))
(assert (forall ((s@@5 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@5)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@5)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@5))))
 :qid |SharedEd25519PublicKeybpl.1976:63|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@5))
)))
(assert (forall ((s@@6 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@6) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@6)))
 :qid |SharedEd25519PublicKeybpl.1991:57|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@6))
)))
(assert (forall ((s@@7 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@7)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@7)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@7))))
 :qid |SharedEd25519PublicKeybpl.2007:54|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@8) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@8)))
 :qid |SharedEd25519PublicKeybpl.2021:55|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@9) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@9)))
 :qid |SharedEd25519PublicKeybpl.2034:57|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@10)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@10)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@10))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@10))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@10))))
 :qid |SharedEd25519PublicKeybpl.2056:56|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@11)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@11)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@11))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@11))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@11))))
 :qid |SharedEd25519PublicKeybpl.2083:52|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@11))
)))
(assert (forall ((s@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@12) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@12)))
 :qid |SharedEd25519PublicKeybpl.2101:54|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@12))
)))
(assert (forall ((public_key T@Vec_9892) ) (! (let (($$res ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res))
 :qid |SharedEd25519PublicKeybpl.2747:15|
 :skolemid |73|
)))
(assert (forall ((s@@13 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@13)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@13)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@13))))
 :qid |SharedEd25519PublicKeybpl.2765:69|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@13))
)))
(assert (forall ((v@@13 T@Vec_20335) (i@@16 Int) ) (! (= (InRangeVec_16544 v@@13 i@@16)  (and (>= i@@16 0) (< i@@16 (|l#Vec_20335| v@@13))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16544 v@@13 i@@16))
)))
(assert (forall ((v@@14 T@Vec_19216) (i@@17 Int) ) (! (= (InRangeVec_16745 v@@14 i@@17)  (and (>= i@@17 0) (< i@@17 (|l#Vec_19216| v@@14))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16745 v@@14 i@@17))
)))
(assert (forall ((v@@15 T@Vec_19255) (i@@18 Int) ) (! (= (InRangeVec_16946 v@@15 i@@18)  (and (>= i@@18 0) (< i@@18 (|l#Vec_19255| v@@15))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16946 v@@15 i@@18))
)))
(assert (forall ((v@@16 T@Vec_9892) (i@@19 Int) ) (! (= (InRangeVec_6400 v@@16 i@@19)  (and (>= i@@19 0) (< i@@19 (|l#Vec_9892| v@@16))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6400 v@@16 i@@19))
)))
(assert (forall ((v@@17 T@Vec_19216) (e@@3 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@20 (IndexOfVec_19216 v@@17 e@@3)))
(ite  (not (exists ((i@@21 Int) ) (!  (and (InRangeVec_16745 v@@17 i@@21) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@17) i@@21) e@@3))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@20 (- 0 1))  (and (and (InRangeVec_16745 v@@17 i@@20) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@17) i@@20) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@20)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@17) j@@3) e@@3)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19216 v@@17 e@@3))
)))
(assert (forall ((v@@18 T@Vec_19255) (e@@4 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@22 (IndexOfVec_19255 v@@18 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (InRangeVec_16946 v@@18 i@@23) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@18) i@@23) e@@4))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@22 (- 0 1))  (and (and (InRangeVec_16946 v@@18 i@@22) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@18) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (>= j@@4 0) (< j@@4 i@@22)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@18) j@@4) e@@4)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19255 v@@18 e@@4))
)))
(assert (forall ((v@@19 T@Vec_9892) (e@@5 Int) ) (! (let ((i@@24 (IndexOfVec_9892 v@@19 e@@5)))
(ite  (not (exists ((i@@25 Int) ) (!  (and (InRangeVec_6400 v@@19 i@@25) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@19) i@@25) e@@5))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@24 (- 0 1))  (and (and (InRangeVec_6400 v@@19 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@19) i@@24) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (>= j@@5 0) (< j@@5 i@@24)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@19) j@@5) e@@5)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_9892 v@@19 e@@5))
)))
(assert (forall ((v@@20 T@Vec_20335) (e@@6 |T@#0|) ) (! (let ((i@@26 (IndexOfVec_20335 v@@20 e@@6)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (InRangeVec_16544 v@@20 i@@27) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@20) i@@27) e@@6))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@26 (- 0 1))  (and (and (InRangeVec_16544 v@@20 i@@26) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@20) i@@26) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@26)) (not (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@20) j@@6) e@@6)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20335 v@@20 e@@6))
)))
(assert (forall ((|l#0| Bool) (i@@28 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@28) |l#0|)
 :qid |SharedEd25519PublicKeybpl.275:54|
 :skolemid |105|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@28))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_19175|) (|l#1| |T@[$1_Event_EventHandle]Multiset_19175|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_19175_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#1| handle@@0))))
(Multiset_19175 (|lambda#15| (|v#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#0@@0| handle@@0)) (|v#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SharedEd25519PublicKeybpl.1511:13|
 :skolemid |106|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_19175_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@29 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@29) (ite  (and (>= i@@29 |l#0@@1|) (< i@@29 |l#1@@0|)) (ite (< i@@29 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@29) (|Select__T@[Int]#0_| |l#4| (- i@@29 |l#5|))) |l#6|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |107|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@29))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@30 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@30) (ite  (and (<= |l#0@@2| i@@30) (< i@@30 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@30) |l#4@@0|)) |l#5@@0|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |108|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@30))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@7 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@7) (ite  (and (>= j@@7 |l#0@@3|) (< j@@7 |l#1@@2|)) (ite (< j@@7 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@7) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@7 |l#5@@1|))) |l#6@@0|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |109|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@7))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@31 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@31) (ite  (and (>= i@@31 |l#0@@4|) (< i@@31 |l#1@@3|)) (ite (< i@@31 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@31) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@31 |l#5@@2|))) |l#6@@1|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |110|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@31))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@32 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@32) (ite  (and (<= |l#0@@5| i@@32) (< i@@32 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@32) |l#4@@3|)) |l#5@@3|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@32))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@8 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@8) (ite  (and (>= j@@8 |l#0@@6|) (< j@@8 |l#1@@5|)) (ite (< j@@8 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@8) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@8 |l#5@@4|))) |l#6@@2|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@8))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@33 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@33) (ite  (and (>= i@@33 |l#0@@7|) (< i@@33 |l#1@@6|)) (ite (< i@@33 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@33) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@33 |l#5@@5|))) |l#6@@3|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@33))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@34 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@34) (ite  (and (<= |l#0@@8| i@@34) (< i@@34 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@34) |l#4@@6|)) |l#5@@6|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@34))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@9 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@9) (ite  (and (>= j@@9 |l#0@@9|) (< j@@9 |l#1@@8|)) (ite (< j@@9 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@9) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@9 |l#5@@7|))) |l#6@@4|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@9))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Int|) (|l#4@@8| |T@[Int]Int|) (|l#5@@8| Int) (|l#6@@5| Int) (i@@35 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@35) (ite  (and (>= i@@35 |l#0@@10|) (< i@@35 |l#1@@9|)) (ite (< i@@35 |l#2@@8|) (|Select__T@[Int]Int_| |l#3@@8| i@@35) (|Select__T@[Int]Int_| |l#4@@8| (- i@@35 |l#5@@8|))) |l#6@@5|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@35))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Int|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Int) (i@@36 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@36) (ite  (and (<= |l#0@@11| i@@36) (< i@@36 |l#1@@10|)) (|Select__T@[Int]Int_| |l#2@@9| (- (- |l#3@@9| i@@36) |l#4@@9|)) |l#5@@9|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@36))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Int|) (|l#4@@10| |T@[Int]Int|) (|l#5@@10| Int) (|l#6@@6| Int) (j@@10 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@10) (ite  (and (>= j@@10 |l#0@@12|) (< j@@10 |l#1@@11|)) (ite (< j@@10 |l#2@@10|) (|Select__T@[Int]Int_| |l#3@@10| j@@10) (|Select__T@[Int]Int_| |l#4@@10| (+ j@@10 |l#5@@10|))) |l#6@@6|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@10))
)))
(assert (forall ((|l#0@@13| |T@[$EventRep]Int|) (|l#1@@12| |T@[$EventRep]Int|) (v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#15| |l#0@@13| |l#1@@12|) v@@21) (- (|Select__T@[$EventRep]Int_| |l#0@@13| v@@21) (|Select__T@[$EventRep]Int_| |l#1@@12| v@@21)))
 :qid |SharedEd25519PublicKeybpl.154:29|
 :skolemid |119|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#15| |l#0@@13| |l#1@@12|) v@@21))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory () T@$Memory_37508)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 () T@$Memory_37508)
(declare-fun $t5 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_33684)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () T@Vec_9892)
(declare-fun MapConstVec_6629 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_6629 () Int)
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int) T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t11@0 () Int)
(declare-fun $abort_code@8 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 () T@$Memory_37508)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|)
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@1 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t17 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 () Bool)
(declare-fun $t13 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 () T@$Mutation_37719)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 () T@$Mutation_28896)
(declare-fun $t12@0 () T@$Mutation_37719)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 () T@$Mutation_28896)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 () T@$Mutation_37719)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0 () T@$Mutation_37719)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 () T@$Mutation_28896)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 () T@$Mutation_35731)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 () T@$Mutation_28896)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 () T@Vec_9892)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 () T@$Mutation_35731)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_33684)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_33684)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0 () T@$Mutation_35731)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 () T@$Mutation_35731)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0 () T@$Mutation_35731)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0 () T@$Mutation_28896)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0 () T@$Mutation_28896)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t4@0 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t8@0 () T@Vec_9892)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 () T@$Mutation_35776)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 () T@$Mutation_35776)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 () T@$Mutation_35731)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 () T@$Mutation_35731)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_33684)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0 () T@$Mutation_35731)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 () T@$Mutation_35731)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0 () T@$Mutation_35731)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0 () T@$Mutation_35776)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_33202)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_34701)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_34923)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_33651)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t12 () T@$Mutation_37719)
(push 1)
(set-info :boogie-vc-id $1_SharedEd25519PublicKey_publish$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 56201) (let ((anon21_Else_correct  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 48214) (- 0 59101)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) addr)))
 :qid |SharedEd25519PublicKeybpl.3014:15|
 :skolemid |84|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) addr@@0)))
 :qid |SharedEd25519PublicKeybpl.3014:15|
 :skolemid |84|
)) (and (=> (= (ControlFlow 0 48214) (- 0 59128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5)) (and (=> (= (ControlFlow 0 48214) (- 0 59138)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t6))) (and (=> (= (ControlFlow 0 48214) (- 0 59150)) (not (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (not (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (and (=> (= (ControlFlow 0 48214) (- 0 59161)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1))) (and (=> (= (ControlFlow 0 48214) (- 0 59171)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t5)))) 0)))))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t5)))) 0))))))) (and (=> (= (ControlFlow 0 48214) (- 0 59194)) (not (not (= (|l#Vec_9892| ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32)))) (=> (not (not (= (|l#Vec_9892| ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32))) (and (=> (= (ControlFlow 0 48214) (- 0 59210)) (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) $t7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) $t7) (=> (= (ControlFlow 0 48214) (- 0 59218)) (|$IsEqual'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) $t7)) _$t1)))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 48039) (- 0 58924)) (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t6))) (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t5)))) 0))))))) (not (= (|l#Vec_9892| ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32)))) (=> (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t6))) (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t5)))) 0))))))) (not (= (|l#Vec_9892| ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32))) (=> (= (ControlFlow 0 48039) (- 0 58986)) (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5) (= 6 $t11@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t6)) (= 5 $t11@0))) (and (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0) (= 1 $t11@0))) (and (not ($1_Signature_$ed25519_validate_pubkey _$t1)) (= 7 $t11@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $t5)))) 0)))))) (= 5 $t11@0))) (and (not (= (|l#Vec_9892| ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32)) (= 7 $t11@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= $t11@0 $abort_code@8) (= (ControlFlow 0 48228) 48039))) L3_correct)))
(let ((anon20_Then$1_correct  (=> (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (=> (and (= $abort_flag@7 true) (= $abort_code@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 48280) 48228) anon21_Then_correct) (=> (= (ControlFlow 0 48280) 48214) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 48278) 48280)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 ($Memory_37508 (|Store__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0) $t4@1))) (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0)) (and (= $abort_flag@7 $abort_flag@6) (= $abort_code@8 $abort_code@7))) (and (=> (= (ControlFlow 0 48073) 48228) anon21_Then_correct) (=> (= (ControlFlow 0 48073) 48214) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$1$dst@1 (and (=> (= (ControlFlow 0 48051) 48278) anon20_Then_correct) (=> (= (ControlFlow 0 48051) 48073) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= $t17 $t17)) (and (= $t11@0 $t17) (= (ControlFlow 0 47843) 48039))) L3_correct)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t17) (= $t17 6)) (and (= $t17 $t17) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 47827) 48051) anon19_Then_correct) (=> (= (ControlFlow 0 47827) 47843) anon19_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (= (ControlFlow 0 47791) 47827)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@6) (= (ControlFlow 0 47797) 47791)) inline$$Not$1$anon0_correct)))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t11@0 $abort_code@7) (= (ControlFlow 0 48294) 48039))) L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct  (=> (= $t13 $t13) (=> (and (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t13)) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 47747) 48294) anon18_Then_correct) (=> (= (ControlFlow 0 47747) 47797) anon18_Else_correct))))))
(let ((anon17_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= $t4@1 (|v#$Mutation_37719| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1)) (|$IsValid'address'| $t13)) (and (= $t13 (|$addr#$signer| _$t0)) (= (ControlFlow 0 47753) 47747))) inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct))))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t11@0 $abort_code@7) (= (ControlFlow 0 48308) 48039))) L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct  (=> (not $abort_flag@5) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 ($Mutation_28896 (|l#$Mutation_37719| $t12@0) (let ((l (|l#Vec_9892| (|p#$Mutation_37719| $t12@0))))
(Vec_9892 (|Store__T@[Int]Int_| (|v#Vec_9892| (|p#$Mutation_37719| $t12@0)) l 0) (+ l 1))) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_37719| $t12@0)))) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 ($Mutation_28896 (|l#$Mutation_28896| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) (|p#$Mutation_28896| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) _$t1))) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 ($Mutation_37719 (|l#$Mutation_37719| $t12@0) (|p#$Mutation_37719| $t12@0) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_28896| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_37719| $t12@0))))) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| (|v#$Mutation_37719| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)))) (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2|) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)) (and (= $abort_flag@6 $abort_flag@5) (= $abort_code@7 $abort_code@6)))) (and (=> (= (ControlFlow 0 47590) 48308) anon17_Then_correct) (=> (= (ControlFlow 0 47590) 47753) anon17_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct  (=> (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0) (=> (and (= $abort_flag@6 true) (= $abort_code@7 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1)) (and (=> (= (ControlFlow 0 46488) 48308) anon17_Then_correct) (=> (= (ControlFlow 0 46488) 47753) anon17_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@6) (= (ControlFlow 0 47604) 46488))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 ($Mutation_28896 (|l#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (let ((l@@0 (|l#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))
(Vec_9892 (|Store__T@[Int]Int_| (|v#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) l@@0 0) (+ l@@0 1))) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 ($Mutation_28896 (|l#$Mutation_28896| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) (|p#$Mutation_28896| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 ($Mutation_35731 (|l#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (|p#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_28896| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))) (= $1_DiemAccount_DiemAccount_$memory@2 ($Memory_33684 (|Store__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3))))) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4))) (and (=> (= (ControlFlow 0 47436) 47604) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 47436) 47590) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct  (=> (and (= $abort_code@6 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 47232) 47604) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 47232) 47590) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= (ControlFlow 0 47386) 47232))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct  (=> (and (and (and (not $abort_flag@4) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= |inline$$1_Vector_length'u8'$0$l@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1)))) (and (=> (= (ControlFlow 0 47370) 47436) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct) (=> (= (ControlFlow 0 47370) 47386) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 47450) 47232))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (|l#Vec_9892| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (=> (= (ControlFlow 0 47312) 47450) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct) (=> (= (ControlFlow 0 47312) 47370) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct  (=> (and (and (not $abort_flag@4) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= (ControlFlow 0 47318) 47312))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 47464) 47232))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) (and (=> (= (ControlFlow 0 47516) 47464) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 47516) 47318) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1)) (= (ControlFlow 0 47514) 47516)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 ($Mutation_35731 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1))) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1))) (and (=> (= (ControlFlow 0 47262) 47464) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 47262) 47318) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1))) (and (=> (= (ControlFlow 0 47240) 47514) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct) (=> (= (ControlFlow 0 47240) 47262) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= (ControlFlow 0 47226) 47232))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 47210) 47240) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct) (=> (= (ControlFlow 0 47210) 47226) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@4) (= (ControlFlow 0 47530) 47232))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 47168) 47530) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct) (=> (= (ControlFlow 0 47168) 47210) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct  (=> (= (|l#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0)) 0) (=> (and (= (|l#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) 0) (= (|l#Vec_9892| (|p#$Mutation_28896| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0)) 0)) (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1)) (= (ControlFlow 0 47174) 47168))) inline$$1_DiemAccount_exists_at$2$anon0_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_37719| $t12@0))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (|$IsEqual'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 ($1_Authenticator_spec_ed25519_authentication_key _$t1)) (= (ControlFlow 0 47534) 47174))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= (ControlFlow 0 46482) 46488))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 7)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 46466) 47534) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct) (=> (= (ControlFlow 0 46466) 46482) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@4) (= (ControlFlow 0 47618) 46488))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1)) (and (=> (= (ControlFlow 0 46420) 47618) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct) (=> (= (ControlFlow 0 46420) 46466) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct  (=> (= (|l#Vec_9892| (|p#$Mutation_28896| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0)) 0) (=> (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| (|v#$Mutation_37719| $t12@0)) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1|)) (and (= _$t1 _$t1) (= (ControlFlow 0 46426) 46420))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct))))
(let ((anon16_Else_correct  (=> (not $abort_flag@3) (=> (and (and (= $t4@0 ($1_SharedEd25519PublicKey_SharedEd25519PublicKey $t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= $t4@0 $t4@0)) (and (= $t12@0 ($Mutation_37719 ($Local 4) (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) $t4@0)) (= (ControlFlow 0 47624) 46426))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct))))
(let ((anon16_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t11@0 $abort_code@4) (= (ControlFlow 0 48322) 48039))) L3_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 ($Mutation_35776 (|l#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) (|p#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2)) (<= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1)) 0)))) (=> (and (and (and (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 ($Mutation_35731 (|l#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (|p#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_33684 (|Store__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0))) (and (and (= $abort_code@4 $abort_code@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0)) (and (= $abort_flag@3 $abort_flag@2) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0)))) (and (=> (= (ControlFlow 0 45845) 48322) anon16_Then_correct) (=> (= (ControlFlow 0 45845) 47624) anon16_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct  (=> (and (and (= $abort_code@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0)) (and (= $abort_flag@3 true) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 45522) 48322) anon16_Then_correct) (=> (= (ControlFlow 0 45522) 47624) anon16_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (=> (and (and (and (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0) (= (ControlFlow 0 45871) 45522))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct  (=> (and (not $abort_flag@2) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 ($Mutation_35776 (|l#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (let ((l@@1 (|l#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))))
(Vec_9892 (|Store__T@[Int]Int_| (|v#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) l@@1 2) (+ l@@1 1))) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0)))) (and (=> (= (ControlFlow 0 45753) 45871) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 45753) 45845) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@3) (= (ControlFlow 0 45885) 45522))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 45937) 45885) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 45937) 45753) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 45935) 45937)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 ($Mutation_35731 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 45707) 45885) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 45707) 45753) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct  (=> inline$$1_DiemAccount_exists_at$1$$t1@1 (and (=> (= (ControlFlow 0 45685) 45935) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 45685) 45707) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= (ControlFlow 0 45681) 45522))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct  (=> (and (not $abort_flag@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 45665) 45685) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 45665) 45681) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 45951) 45522))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 45623) 45951) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct) (=> (= (ControlFlow 0 45623) 45665) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 45629) 45623)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= (ControlFlow 0 45516) 45522))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 45500) 45629) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct) (=> (= (ControlFlow 0 45500) 45516) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 45460) 45500)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 45466) 45460)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 45965) 45522))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0))) (and (=> (= (ControlFlow 0 45336) 45965) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 45336) 45466) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct  (=> (= $abort_code@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1) (=> (and (= $abort_flag@1 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0)) (and (=> (= (ControlFlow 0 45284) 45965) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 45284) 45466) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 $abort_code@1) (= (ControlFlow 0 45350) 45284))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0)) (and (=> (= (ControlFlow 0 45402) 45350) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 45402) 45336) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 45400) 45402)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1))) (and (=> (= (ControlFlow 0 45302) 45350) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 45302) 45336) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (and (=> (= (ControlFlow 0 45288) 45400) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct) (=> (= (ControlFlow 0 45288) 45302) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 45278) 45284))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 45262) 45288) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct) (=> (= (ControlFlow 0 45262) 45278) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 45220) 45416) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct) (=> (= (ControlFlow 0 45220) 45262) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 45226) 45220)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct  (=> (= (|l#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0)) 0) (=> (and (and (and (= (|l#Vec_9892| (|p#$Mutation_35731| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0)) 0) (= (|l#Vec_9892| (|p#$Mutation_35776| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 (|$addr#$signer| _$t0))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 45422) 45226)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct))))
(let ((anon0$1_correct  (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@1) (or (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0) (and (not (= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0)) (= addr@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0)))))))
 :qid |SharedEd25519PublicKeybpl.2816:20|
 :skolemid |75|
)) (=> (and (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@2) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@2) (= (|l#Vec_19255| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@2)))) 0)) (and (not (= (|l#Vec_19255| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@2)))) 0)) (= addr@@2 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@2)))) 0)))))))
 :qid |SharedEd25519PublicKeybpl.2820:20|
 :skolemid |76|
)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (= (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_33202| $1_Roles_RoleId_$memory) addr@@3)))
 :qid |SharedEd25519PublicKeybpl.2824:20|
 :skolemid |77|
))) (=> (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (= (|Select__T@[Int]Bool_| (|domain#$Memory_34701| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@4)  (and (= addr@@4 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@4))))
 :qid |SharedEd25519PublicKeybpl.2828:20|
 :skolemid |78|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (= (|Select__T@[Int]Bool_| (|domain#$Memory_34923| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@5)  (and (= addr@@5 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@5))))
 :qid |SharedEd25519PublicKeybpl.2832:20|
 :skolemid |79|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (= (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_33651| $1_AccountFreezing_FreezingBit_$memory) addr@@6)))
 :qid |SharedEd25519PublicKeybpl.2836:20|
 :skolemid |80|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_33651| $1_AccountFreezing_FreezingBit_$memory) addr@@7)))
 :qid |SharedEd25519PublicKeybpl.2840:20|
 :skolemid |81|
)))) (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (and (|$IsValid'vec'u8''| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $a_0)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc) (and (<= (|l#Vec_19255| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc))) 1) (<= (|l#Vec_19216| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc))) 1))))
 :qid |SharedEd25519PublicKeybpl.2849:20|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_33684| $1_DiemAccount_DiemAccount_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@0)))
(|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| $rsc@@0))
 :qid |SharedEd25519PublicKeybpl.2853:20|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_37508| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@0))
)) (= $t5 (|$addr#$signer| _$t0))))) (and (and (and (= $t6 (|$addr#$signer| _$t0)) (= $t7 (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= $t8@0 (Vec_9892 (MapConstVec_6629 DefaultVecElem_6629) 0)) (|$IsValid'vec'u8''| $t8@0)) (and (= $t9 (|$addr#$signer| _$t0)) (= (ControlFlow 0 45971) 45422))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_19175_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_19175| stream@@0) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_19175| stream@@0) v@@22) 0)
 :qid |SharedEd25519PublicKeybpl.159:13|
 :skolemid |4|
))))
 :qid |SharedEd25519PublicKeybpl.1501:13|
 :skolemid |49|
))) (= (ControlFlow 0 43774) 45971)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_9892| (|p#$Mutation_37719| $t12)) 0) (= (ControlFlow 0 43784) 43774)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 56201) 43784) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_30941 0)) ((($Memory_30941 (|domain#$Memory_30941| |T@[Int]Bool|) (|contents#$Memory_30941| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_20335 0)) (((Vec_20335 (|v#Vec_20335| |T@[Int]#0|) (|l#Vec_20335| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_34923 0)) ((($Memory_34923 (|domain#$Memory_34923| |T@[Int]Bool|) (|contents#$Memory_34923| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_9892 0)) (((Vec_9892 (|v#Vec_9892| |T@[Int]Int|) (|l#Vec_9892| Int) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@Vec_9892) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_37508 0)) ((($Memory_37508 (|domain#$Memory_37508| |T@[Int]Bool|) (|contents#$Memory_37508| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_33651 0)) ((($Memory_33651 (|domain#$Memory_33651| |T@[Int]Bool|) (|contents#$Memory_33651| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_34701 0)) ((($Memory_34701 (|domain#$Memory_34701| |T@[Int]Bool|) (|contents#$Memory_34701| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_19255 0)) (((Vec_19255 (|v#Vec_19255| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_19255| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_19255) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_19216 0)) (((Vec_19216 (|v#Vec_19216| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_19216| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_19216) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_9892) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_33684 0)) ((($Memory_33684 (|domain#$Memory_33684| |T@[Int]Bool|) (|contents#$Memory_33684| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_33202 0)) ((($Memory_33202 (|domain#$Memory_33202| |T@[Int]Bool|) (|contents#$Memory_33202| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_9892) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_9892) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_9892) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_9892) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_19175 0)) (((Multiset_19175 (|v#Multiset_19175| |T@[$EventRep]Int|) (|l#Multiset_19175| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_19175| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_19175|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37719 0)) ((($Mutation_37719 (|l#$Mutation_37719| T@$Location) (|p#$Mutation_37719| T@Vec_9892) (|v#$Mutation_37719| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_35776 0)) ((($Mutation_35776 (|l#$Mutation_35776| T@$Location) (|p#$Mutation_35776| T@Vec_9892) (|v#$Mutation_35776| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_35731 0)) ((($Mutation_35731 (|l#$Mutation_35731| T@$Location) (|p#$Mutation_35731| T@Vec_9892) (|v#$Mutation_35731| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_31572 0)) ((($Mutation_31572 (|l#$Mutation_31572| T@$Location) (|p#$Mutation_31572| T@Vec_9892) (|v#$Mutation_31572| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7024 0)) ((($Mutation_7024 (|l#$Mutation_7024| T@$Location) (|p#$Mutation_7024| T@Vec_9892) (|v#$Mutation_7024| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28896 0)) ((($Mutation_28896 (|l#$Mutation_28896| T@$Location) (|p#$Mutation_28896| T@Vec_9892) (|v#$Mutation_28896| T@Vec_9892) ) ) ))
(declare-datatypes ((T@$Mutation_27319 0)) ((($Mutation_27319 (|l#$Mutation_27319| T@$Location) (|p#$Mutation_27319| T@Vec_9892) (|v#$Mutation_27319| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_26332 0)) ((($Mutation_26332 (|l#$Mutation_26332| T@$Location) (|p#$Mutation_26332| T@Vec_9892) (|v#$Mutation_26332| T@Vec_19255) ) ) ))
(declare-datatypes ((T@$Mutation_24667 0)) ((($Mutation_24667 (|l#$Mutation_24667| T@$Location) (|p#$Mutation_24667| T@Vec_9892) (|v#$Mutation_24667| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_23680 0)) ((($Mutation_23680 (|l#$Mutation_23680| T@$Location) (|p#$Mutation_23680| T@Vec_9892) (|v#$Mutation_23680| T@Vec_19216) ) ) ))
(declare-datatypes ((T@$Mutation_21967 0)) ((($Mutation_21967 (|l#$Mutation_21967| T@$Location) (|p#$Mutation_21967| T@Vec_9892) (|v#$Mutation_21967| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_20980 0)) ((($Mutation_20980 (|l#$Mutation_20980| T@$Location) (|p#$Mutation_20980| T@Vec_9892) (|v#$Mutation_20980| T@Vec_20335) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_20335 T@Vec_20335) Bool)
(declare-fun InRangeVec_16544 (T@Vec_20335 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_20335) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_20335 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_19216 T@Vec_19216) Bool)
(declare-fun InRangeVec_16745 (T@Vec_19216 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_19216) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_19216 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_19255 T@Vec_19255) Bool)
(declare-fun InRangeVec_16946 (T@Vec_19255 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_19255) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_19255 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_9892 T@Vec_9892) Bool)
(declare-fun InRangeVec_6400 (T@Vec_9892 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_9892) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_9892 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_9892) T@Vec_9892)
(declare-fun $1_Hash_sha3 (T@Vec_9892) T@Vec_9892)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_9892) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_9892 T@Vec_9892 T@Vec_9892) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_19175_| (|T@[$1_Event_EventHandle]Multiset_19175| T@$1_Event_EventHandle) T@Multiset_19175)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AccountOperationsCapability'| (T@$1_DiemAccount_AccountOperationsCapability) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AdminTransactionEvent'| (T@$1_DiemAccount_AdminTransactionEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun $1_Authenticator_spec_ed25519_authentication_key (T@Vec_9892) T@Vec_9892)
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun IndexOfVec_19216 (T@Vec_19216 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_19255 (T@Vec_19255 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_9892 (T@Vec_9892 Int) Int)
(declare-fun IndexOfVec_20335 (T@Vec_20335 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_19175| |T@[$1_Event_EventHandle]Multiset_19175|) |T@[$1_Event_EventHandle]Multiset_19175|)
(declare-fun |lambda#15| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#13| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SharedEd25519PublicKeybpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SharedEd25519PublicKeybpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SharedEd25519PublicKeybpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SharedEd25519PublicKeybpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SharedEd25519PublicKeybpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SharedEd25519PublicKeybpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeybpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeybpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_20335) (v2 T@Vec_20335) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_20335| v1) (|l#Vec_20335| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_16544 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_20335| v2) i@@0)))
 :qid |SharedEd25519PublicKeybpl.615:13|
 :skolemid |17|
))))
 :qid |SharedEd25519PublicKeybpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_20335) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_20335| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_16544 v@@4 i@@1) true)
 :qid |SharedEd25519PublicKeybpl.621:13|
 :skolemid |19|
))))
 :qid |SharedEd25519PublicKeybpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_20335) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_16544 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@5) i@@3) e))
 :qid |SharedEd25519PublicKeybpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_16544 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@5) j) e)))
 :qid |SharedEd25519PublicKeybpl.634:17|
 :skolemid |22|
)))))
 :qid |SharedEd25519PublicKeybpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_19216) (v2@@0 T@Vec_19216) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_19216| v1@@0) (|l#Vec_19216| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_16745 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v2@@0) i@@4)))
 :qid |SharedEd25519PublicKeybpl.796:13|
 :skolemid |24|
))))
 :qid |SharedEd25519PublicKeybpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_19216) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_19216| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_16745 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@6) i@@5)))
 :qid |SharedEd25519PublicKeybpl.802:13|
 :skolemid |26|
))))
 :qid |SharedEd25519PublicKeybpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_19216) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_16745 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@7) i@@7) e@@0))
 :qid |SharedEd25519PublicKeybpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_16745 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@7) j@@0) e@@0)))
 :qid |SharedEd25519PublicKeybpl.815:17|
 :skolemid |29|
)))))
 :qid |SharedEd25519PublicKeybpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_19255) (v2@@1 T@Vec_19255) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_19255| v1@@1) (|l#Vec_19255| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_16946 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v2@@1) i@@8)))
 :qid |SharedEd25519PublicKeybpl.977:13|
 :skolemid |31|
))))
 :qid |SharedEd25519PublicKeybpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_19255) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_19255| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_16946 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@8) i@@9)))
 :qid |SharedEd25519PublicKeybpl.983:13|
 :skolemid |33|
))))
 :qid |SharedEd25519PublicKeybpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_19255) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_16946 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@9) i@@11) e@@1))
 :qid |SharedEd25519PublicKeybpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_16946 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@9) j@@1) e@@1)))
 :qid |SharedEd25519PublicKeybpl.996:17|
 :skolemid |36|
)))))
 :qid |SharedEd25519PublicKeybpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_9892) (v2@@2 T@Vec_9892) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2)  (and (= (|l#Vec_9892| v1@@2) (|l#Vec_9892| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6400 v1@@2 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v1@@2) i@@12) (|Select__T@[Int]Int_| (|v#Vec_9892| v2@@2) i@@12)))
 :qid |SharedEd25519PublicKeybpl.1158:13|
 :skolemid |38|
))))
 :qid |SharedEd25519PublicKeybpl.1156:28|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'u8''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_9892) ) (! (= (|$IsValid'vec'u8''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_9892| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6400 v@@10 i@@13) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_9892| v@@10) i@@13)))
 :qid |SharedEd25519PublicKeybpl.1164:13|
 :skolemid |40|
))))
 :qid |SharedEd25519PublicKeybpl.1162:28|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u8''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_9892) (e@@2 Int) ) (! (let ((i@@14 (|$IndexOfVec'u8'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6400 v@@11 i@@15)) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@11) i@@15) e@@2))
 :qid |SharedEd25519PublicKeybpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6400 v@@11 i@@14)) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@11) j@@2) e@@2)))
 :qid |SharedEd25519PublicKeybpl.1177:17|
 :skolemid |43|
)))))
 :qid |SharedEd25519PublicKeybpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u8'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_9892) (v2@@3 T@Vec_9892) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@3) ($1_Hash_sha2 v2@@3)))
 :qid |SharedEd25519PublicKeybpl.1350:15|
 :skolemid |45|
 :pattern ( ($1_Hash_sha2 v1@@3) ($1_Hash_sha2 v2@@3))
)))
(assert (forall ((v1@@4 T@Vec_9892) (v2@@4 T@Vec_9892) ) (! (= (|$IsEqual'vec'u8''| v1@@4 v2@@4) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@4) ($1_Hash_sha3 v2@@4)))
 :qid |SharedEd25519PublicKeybpl.1366:15|
 :skolemid |46|
 :pattern ( ($1_Hash_sha3 v1@@4) ($1_Hash_sha3 v2@@4))
)))
(assert (forall ((k1 T@Vec_9892) (k2 T@Vec_9892) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SharedEd25519PublicKeybpl.1437:15|
 :skolemid |47|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_9892) (s2 T@Vec_9892) (k1@@0 T@Vec_9892) (k2@@0 T@Vec_9892) (m1 T@Vec_9892) (m2 T@Vec_9892) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SharedEd25519PublicKeybpl.1440:15|
 :skolemid |48|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_19175_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_19175| stream) 0) (forall ((v@@12 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_19175| stream) v@@12) 0)
 :qid |SharedEd25519PublicKeybpl.159:13|
 :skolemid |4|
))))
 :qid |SharedEd25519PublicKeybpl.1501:13|
 :skolemid |49|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h) true)
 :qid |SharedEd25519PublicKeybpl.1542:79|
 :skolemid |51|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_AdminTransactionEvent) (v2@@5 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5)))
 :qid |SharedEd25519PublicKeybpl.1548:15|
 :skolemid |52|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0) true)
 :qid |SharedEd25519PublicKeybpl.1598:76|
 :skolemid |53|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_CreateAccountEvent) (v2@@6 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6)))
 :qid |SharedEd25519PublicKeybpl.1604:15|
 :skolemid |54|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1) true)
 :qid |SharedEd25519PublicKeybpl.1654:78|
 :skolemid |55|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@7 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@7)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@7))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@7))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@7) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@7))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7)))
 :qid |SharedEd25519PublicKeybpl.1660:15|
 :skolemid |56|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2) true)
 :qid |SharedEd25519PublicKeybpl.1710:74|
 :skolemid |57|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_SentPaymentEvent) (v2@@8 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@8)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@8))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@8))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@8) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@8))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8)))
 :qid |SharedEd25519PublicKeybpl.1716:15|
 :skolemid |58|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8))
)))
(assert (forall ((s T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s)))
 :qid |SharedEd25519PublicKeybpl.1775:36|
 :skolemid |59|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s))
)))
(assert (forall ((s@@0 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@0) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@0)))
 :qid |SharedEd25519PublicKeybpl.1829:75|
 :skolemid |60|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@0))
)))
(assert (forall ((s@@1 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@1) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@1)))
 :qid |SharedEd25519PublicKeybpl.1841:72|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@1))
)))
(assert (forall ((s@@2 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@2) true)
 :qid |SharedEd25519PublicKeybpl.1853:68|
 :skolemid |62|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@2))
)))
(assert (forall ((s@@3 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@3) true)
 :qid |SharedEd25519PublicKeybpl.1866:51|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@3))
)))
(assert (forall ((s@@4 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@4)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@4)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@4))))
 :qid |SharedEd25519PublicKeybpl.1950:47|
 :skolemid |64|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@4))
)))
(assert (forall ((s@@5 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@5)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@5)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@5))))
 :qid |SharedEd25519PublicKeybpl.1976:63|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@5))
)))
(assert (forall ((s@@6 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@6) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@6)))
 :qid |SharedEd25519PublicKeybpl.1991:57|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@6))
)))
(assert (forall ((s@@7 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@7)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@7)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@7))))
 :qid |SharedEd25519PublicKeybpl.2007:54|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@8) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@8)))
 :qid |SharedEd25519PublicKeybpl.2021:55|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@9) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@9)))
 :qid |SharedEd25519PublicKeybpl.2034:57|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@10)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@10)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@10))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@10))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@10))))
 :qid |SharedEd25519PublicKeybpl.2056:56|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@11)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@11)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@11))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@11))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@11))))
 :qid |SharedEd25519PublicKeybpl.2083:52|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@11))
)))
(assert (forall ((s@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@12) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@12)))
 :qid |SharedEd25519PublicKeybpl.2101:54|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@12))
)))
(assert (forall ((public_key T@Vec_9892) ) (! (let (($$res ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res))
 :qid |SharedEd25519PublicKeybpl.2747:15|
 :skolemid |73|
)))
(assert (forall ((s@@13 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@13)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@13)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@13))))
 :qid |SharedEd25519PublicKeybpl.2765:69|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@13))
)))
(assert (forall ((v@@13 T@Vec_20335) (i@@16 Int) ) (! (= (InRangeVec_16544 v@@13 i@@16)  (and (>= i@@16 0) (< i@@16 (|l#Vec_20335| v@@13))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16544 v@@13 i@@16))
)))
(assert (forall ((v@@14 T@Vec_19216) (i@@17 Int) ) (! (= (InRangeVec_16745 v@@14 i@@17)  (and (>= i@@17 0) (< i@@17 (|l#Vec_19216| v@@14))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16745 v@@14 i@@17))
)))
(assert (forall ((v@@15 T@Vec_19255) (i@@18 Int) ) (! (= (InRangeVec_16946 v@@15 i@@18)  (and (>= i@@18 0) (< i@@18 (|l#Vec_19255| v@@15))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16946 v@@15 i@@18))
)))
(assert (forall ((v@@16 T@Vec_9892) (i@@19 Int) ) (! (= (InRangeVec_6400 v@@16 i@@19)  (and (>= i@@19 0) (< i@@19 (|l#Vec_9892| v@@16))))
 :qid |SharedEd25519PublicKeybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6400 v@@16 i@@19))
)))
(assert (forall ((v@@17 T@Vec_19216) (e@@3 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@20 (IndexOfVec_19216 v@@17 e@@3)))
(ite  (not (exists ((i@@21 Int) ) (!  (and (InRangeVec_16745 v@@17 i@@21) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@17) i@@21) e@@3))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@20 (- 0 1))  (and (and (InRangeVec_16745 v@@17 i@@20) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@17) i@@20) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@20)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_19216| v@@17) j@@3) e@@3)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19216 v@@17 e@@3))
)))
(assert (forall ((v@@18 T@Vec_19255) (e@@4 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@22 (IndexOfVec_19255 v@@18 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (InRangeVec_16946 v@@18 i@@23) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@18) i@@23) e@@4))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@22 (- 0 1))  (and (and (InRangeVec_16946 v@@18 i@@22) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@18) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (>= j@@4 0) (< j@@4 i@@22)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_19255| v@@18) j@@4) e@@4)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19255 v@@18 e@@4))
)))
(assert (forall ((v@@19 T@Vec_9892) (e@@5 Int) ) (! (let ((i@@24 (IndexOfVec_9892 v@@19 e@@5)))
(ite  (not (exists ((i@@25 Int) ) (!  (and (InRangeVec_6400 v@@19 i@@25) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@19) i@@25) e@@5))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@24 (- 0 1))  (and (and (InRangeVec_6400 v@@19 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@19) i@@24) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (>= j@@5 0) (< j@@5 i@@24)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9892| v@@19) j@@5) e@@5)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_9892 v@@19 e@@5))
)))
(assert (forall ((v@@20 T@Vec_20335) (e@@6 |T@#0|) ) (! (let ((i@@26 (IndexOfVec_20335 v@@20 e@@6)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (InRangeVec_16544 v@@20 i@@27) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@20) i@@27) e@@6))
 :qid |SharedEd25519PublicKeybpl.109:13|
 :skolemid |0|
))) (= i@@26 (- 0 1))  (and (and (InRangeVec_16544 v@@20 i@@26) (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@20) i@@26) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@26)) (not (= (|Select__T@[Int]#0_| (|v#Vec_20335| v@@20) j@@6) e@@6)))
 :qid |SharedEd25519PublicKeybpl.117:17|
 :skolemid |1|
)))))
 :qid |SharedEd25519PublicKeybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20335 v@@20 e@@6))
)))
(assert (forall ((|l#0| Bool) (i@@28 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@28) |l#0|)
 :qid |SharedEd25519PublicKeybpl.275:54|
 :skolemid |105|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@28))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_19175|) (|l#1| |T@[$1_Event_EventHandle]Multiset_19175|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_19175_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#1| handle@@0))))
(Multiset_19175 (|lambda#15| (|v#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#0@@0| handle@@0)) (|v#Multiset_19175| (|Select__T@[$1_Event_EventHandle]Multiset_19175_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SharedEd25519PublicKeybpl.1511:13|
 :skolemid |106|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_19175_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@29 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@29) (ite  (and (>= i@@29 |l#0@@1|) (< i@@29 |l#1@@0|)) (ite (< i@@29 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@29) (|Select__T@[Int]#0_| |l#4| (- i@@29 |l#5|))) |l#6|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |107|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@29))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@30 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@30) (ite  (and (<= |l#0@@2| i@@30) (< i@@30 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@30) |l#4@@0|)) |l#5@@0|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |108|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@30))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@7 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@7) (ite  (and (>= j@@7 |l#0@@3|) (< j@@7 |l#1@@2|)) (ite (< j@@7 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@7) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@7 |l#5@@1|))) |l#6@@0|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |109|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@7))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@31 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@31) (ite  (and (>= i@@31 |l#0@@4|) (< i@@31 |l#1@@3|)) (ite (< i@@31 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@31) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@31 |l#5@@2|))) |l#6@@1|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |110|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@31))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@32 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@32) (ite  (and (<= |l#0@@5| i@@32) (< i@@32 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@32) |l#4@@3|)) |l#5@@3|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@32))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@8 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@8) (ite  (and (>= j@@8 |l#0@@6|) (< j@@8 |l#1@@5|)) (ite (< j@@8 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@8) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@8 |l#5@@4|))) |l#6@@2|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@8))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@33 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@33) (ite  (and (>= i@@33 |l#0@@7|) (< i@@33 |l#1@@6|)) (ite (< i@@33 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@33) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@33 |l#5@@5|))) |l#6@@3|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@33))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@34 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@34) (ite  (and (<= |l#0@@8| i@@34) (< i@@34 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@34) |l#4@@6|)) |l#5@@6|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@34))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@9 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@9) (ite  (and (>= j@@9 |l#0@@9|) (< j@@9 |l#1@@8|)) (ite (< j@@9 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@9) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@9 |l#5@@7|))) |l#6@@4|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@9))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Int|) (|l#4@@8| |T@[Int]Int|) (|l#5@@8| Int) (|l#6@@5| Int) (i@@35 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@35) (ite  (and (>= i@@35 |l#0@@10|) (< i@@35 |l#1@@9|)) (ite (< i@@35 |l#2@@8|) (|Select__T@[Int]Int_| |l#3@@8| i@@35) (|Select__T@[Int]Int_| |l#4@@8| (- i@@35 |l#5@@8|))) |l#6@@5|))
 :qid |SharedEd25519PublicKeybpl.73:19|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@35))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Int|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Int) (i@@36 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@36) (ite  (and (<= |l#0@@11| i@@36) (< i@@36 |l#1@@10|)) (|Select__T@[Int]Int_| |l#2@@9| (- (- |l#3@@9| i@@36) |l#4@@9|)) |l#5@@9|))
 :qid |SharedEd25519PublicKeybpl.82:30|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@36))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Int|) (|l#4@@10| |T@[Int]Int|) (|l#5@@10| Int) (|l#6@@6| Int) (j@@10 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@10) (ite  (and (>= j@@10 |l#0@@12|) (< j@@10 |l#1@@11|)) (ite (< j@@10 |l#2@@10|) (|Select__T@[Int]Int_| |l#3@@10| j@@10) (|Select__T@[Int]Int_| |l#4@@10| (+ j@@10 |l#5@@10|))) |l#6@@6|))
 :qid |SharedEd25519PublicKeybpl.63:20|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@10))
)))
(assert (forall ((|l#0@@13| |T@[$EventRep]Int|) (|l#1@@12| |T@[$EventRep]Int|) (v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#15| |l#0@@13| |l#1@@12|) v@@21) (- (|Select__T@[$EventRep]Int_| |l#0@@13| v@@21) (|Select__T@[$EventRep]Int_| |l#1@@12| v@@21)))
 :qid |SharedEd25519PublicKeybpl.154:29|
 :skolemid |119|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#15| |l#0@@13| |l#1@@12|) v@@21))
)))
; Valid

