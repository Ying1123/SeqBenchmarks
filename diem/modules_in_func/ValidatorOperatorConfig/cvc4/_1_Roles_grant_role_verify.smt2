(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_21355 0)) ((($Memory_21355 (|domain#$Memory_21355| |T@[Int]Bool|) (|contents#$Memory_21355| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_23261 0)) ((($Memory_23261 (|domain#$Memory_23261| |T@[Int]Bool|) (|contents#$Memory_23261| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_23228 0)) ((($Memory_23228 (|domain#$Memory_23228| |T@[Int]Bool|) (|contents#$Memory_23228| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_23985 0)) ((($Memory_23985 (|domain#$Memory_23985| |T@[Int]Bool|) (|contents#$Memory_23985| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_24160 0)) ((($Memory_24160 (|domain#$Memory_24160| |T@[Int]Bool|) (|contents#$Memory_24160| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_24100 0)) ((($Memory_24100 (|domain#$Memory_24100| |T@[Int]Bool|) (|contents#$Memory_24100| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_23195 0)) ((($Memory_23195 (|domain#$Memory_23195| |T@[Int]Bool|) (|contents#$Memory_23195| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_23648 0)) ((($Memory_23648 (|domain#$Memory_23648| |T@[Int]Bool|) (|contents#$Memory_23648| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_22822 0)) ((($Memory_22822 (|domain#$Memory_22822| |T@[Int]Bool|) (|contents#$Memory_22822| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_22700 0)) ((($Memory_22700 (|domain#$Memory_22700| |T@[Int]Bool|) (|contents#$Memory_22700| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_15010 0)) (((Multiset_15010 (|v#Multiset_15010| |T@[$EventRep]Int|) (|l#Multiset_15010| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_15010| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_15010|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21986 0)) ((($Mutation_21986 (|l#$Mutation_21986| T@$Location) (|p#$Mutation_21986| (Seq Int)) (|v#$Mutation_21986| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_4544 0)) ((($Mutation_4544 (|l#$Mutation_4544| T@$Location) (|p#$Mutation_4544| (Seq Int)) (|v#$Mutation_4544| Int) ) ) ))
(declare-datatypes ((T@$Mutation_18605 0)) ((($Mutation_18605 (|l#$Mutation_18605| T@$Location) (|p#$Mutation_18605| (Seq Int)) (|v#$Mutation_18605| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_17277 0)) ((($Mutation_17277 (|l#$Mutation_17277| T@$Location) (|p#$Mutation_17277| (Seq Int)) (|v#$Mutation_17277| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_16531 0)) ((($Mutation_16531 (|l#$Mutation_16531| T@$Location) (|p#$Mutation_16531| (Seq Int)) (|v#$Mutation_16531| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| ((Seq T@$1_ValidatorConfig_Config)) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| ((Seq T@$1_ValidatorConfig_Config) T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_15010_| (|T@[$1_Event_EventHandle]Multiset_15010| T@$1_Event_EventHandle) T@Multiset_15010)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun ReverseVec_4397 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_13333 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_15010| |T@[$1_Event_EventHandle]Multiset_15010|) |T@[$1_Event_EventHandle]Multiset_15010|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorOperatorConfigbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorOperatorConfigbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorOperatorConfigbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorOperatorConfigbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorOperatorConfigbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorOperatorConfigbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@4 i@@0)))
 :qid |ValidatorOperatorConfigbpl.595:13|
 :skolemid |15|
))))
 :qid |ValidatorOperatorConfigbpl.593:51|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_ValidatorConfig_Config)) (e T@$1_ValidatorConfig_Config) ) (! (let ((i@@1 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorOperatorConfigbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorOperatorConfigbpl.608:17|
 :skolemid |18|
)))))
 :qid |ValidatorOperatorConfigbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'address'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorOperatorConfigbpl.775:13|
 :skolemid |20|
))))
 :qid |ValidatorOperatorConfigbpl.773:33|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'address''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'address'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorOperatorConfigbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorOperatorConfigbpl.788:17|
 :skolemid |23|
)))))
 :qid |ValidatorOperatorConfigbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'address'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorOperatorConfigbpl.955:13|
 :skolemid |25|
))))
 :qid |ValidatorOperatorConfigbpl.953:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorOperatorConfigbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorOperatorConfigbpl.968:17|
 :skolemid |28|
)))))
 :qid |ValidatorOperatorConfigbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorOperatorConfigbpl.1141:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorOperatorConfigbpl.1157:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorOperatorConfigbpl.1228:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorOperatorConfigbpl.1231:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_15010| stream) 0) (forall ((v@@10 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_15010| stream) v@@10) 0)
 :qid |ValidatorOperatorConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigbpl.1292:13|
 :skolemid |34|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h) true)
 :qid |ValidatorOperatorConfigbpl.1333:82|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@1 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@1) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@1)))
 :qid |ValidatorOperatorConfigbpl.1339:15|
 :skolemid |37|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@1) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0) true)
 :qid |ValidatorOperatorConfigbpl.1389:88|
 :skolemid |38|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@2 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@2) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@2)))
 :qid |ValidatorOperatorConfigbpl.1395:15|
 :skolemid |39|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@2) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@2))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorOperatorConfigbpl.1461:61|
 :skolemid |40|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorOperatorConfigbpl.1525:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorOperatorConfigbpl.1928:71|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |ValidatorOperatorConfigbpl.2641:46|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |ValidatorOperatorConfigbpl.2654:64|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@4)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@4))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@4))))
 :qid |ValidatorOperatorConfigbpl.2683:55|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4))
)))
(assert (forall ((s@@5 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@5)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@5)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@5))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@5))))
 :qid |ValidatorOperatorConfigbpl.2705:46|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@6)))
 :qid |ValidatorOperatorConfigbpl.2720:45|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@7)))
 :qid |ValidatorOperatorConfigbpl.2733:45|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7))
)))
(assert (forall ((s@@8 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@8) true)
 :qid |ValidatorOperatorConfigbpl.2746:31|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@8))
)))
(assert (forall ((s@@9 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@9) true)
 :qid |ValidatorOperatorConfigbpl.2759:31|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@9))
)))
(assert (forall ((s@@10 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@10)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@10)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@10))))
 :qid |ValidatorOperatorConfigbpl.2785:60|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@11)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@11)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@11))))
 :qid |ValidatorOperatorConfigbpl.2802:66|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@11))
)))
(assert (forall ((s@@12 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@12)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@12)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@12))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@12))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@12))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@12))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@12))))
 :qid |ValidatorOperatorConfigbpl.2831:50|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@12))
)))
(assert (forall ((s@@13 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@13) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@13)))
 :qid |ValidatorOperatorConfigbpl.2850:45|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@13))
)))
(assert (forall ((s@@14 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@14) true)
 :qid |ValidatorOperatorConfigbpl.2864:51|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@15) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@15)))
 :qid |ValidatorOperatorConfigbpl.2878:55|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@16) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@16)))
 :qid |ValidatorOperatorConfigbpl.2892:55|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@16))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4397 v@@11)))
 (and (= (seq.len r@@0) (seq.len v@@11)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@11 (- (- (seq.len v@@11) i@@9) 1))))
 :qid |ValidatorOperatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |ValidatorOperatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4397 v@@11))
)))
(assert (forall ((v@@12 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_13333 v@@12)))
 (and (= (seq.len r@@1) (seq.len v@@12)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@12 (- (- (seq.len v@@12) i@@10) 1))))
 :qid |ValidatorOperatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |ValidatorOperatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13333 v@@12))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |ValidatorOperatorConfigbpl.250:54|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_15010|) (|l#1| |T@[$1_Event_EventHandle]Multiset_15010|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#1| handle@@0))))
(Multiset_15010 (|lambda#3| (|v#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#0@@0| handle@@0)) (|v#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorOperatorConfigbpl.1302:13|
 :skolemid |120|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@13 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@13) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@13) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@13)))
 :qid |ValidatorOperatorConfigbpl.129:29|
 :skolemid |121|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@13))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_22822)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_22822)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_23648)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_23195)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_23228)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_23985)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_23261)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_24100)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_24160)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_22822)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 35438) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 32290) (- 0 36233)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr))))))
 :qid |ValidatorOperatorConfigbpl.1760:15|
 :skolemid |59|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@0)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@0))))))
 :qid |ValidatorOperatorConfigbpl.1760:15|
 :skolemid |59|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36275)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@1)) 0)) (= addr@@1 173345816)))
 :qid |ValidatorOperatorConfigbpl.1766:15|
 :skolemid |60|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@2)) 0)) (= addr@@2 173345816)))
 :qid |ValidatorOperatorConfigbpl.1766:15|
 :skolemid |60|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36300)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@3)) 1)) (= addr@@3 186537453)))
 :qid |ValidatorOperatorConfigbpl.1772:15|
 :skolemid |61|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@4)) 1)) (= addr@@4 186537453)))
 :qid |ValidatorOperatorConfigbpl.1772:15|
 :skolemid |61|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36325)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@5)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1778:15|
 :skolemid |62|
))) (=> (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@6)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1778:15|
 :skolemid |62|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36351)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@7)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1784:15|
 :skolemid |63|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@8)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1784:15|
 :skolemid |63|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36377)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@9)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1790:15|
 :skolemid |64|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@10)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1790:15|
 :skolemid |64|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36403)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@11)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1796:15|
 :skolemid |65|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@12)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1796:15|
 :skolemid |65|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36429)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@13)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1802:15|
 :skolemid |66|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@14)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1802:15|
 :skolemid |66|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36453)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@15)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1808:15|
 :skolemid |67|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@16)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1808:15|
 :skolemid |67|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36477)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@17)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1814:15|
 :skolemid |68|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@18)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1814:15|
 :skolemid |68|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36501)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@19)) 4))))
 :qid |ValidatorOperatorConfigbpl.1820:15|
 :skolemid |69|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@20)) 4))))
 :qid |ValidatorOperatorConfigbpl.1820:15|
 :skolemid |69|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36526)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a)) (=> (not (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a)))) (and ($1_Signer_is_txn_signer_addr a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) a) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) a)) 3))))))
 :qid |ValidatorOperatorConfigbpl.1826:15|
 :skolemid |70|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0)) (=> (not (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0)))) (and ($1_Signer_is_txn_signer_addr a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@0)) 3))))))
 :qid |ValidatorOperatorConfigbpl.1826:15|
 :skolemid |70|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36585)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@21)) 3))))
 :qid |ValidatorOperatorConfigbpl.1832:15|
 :skolemid |71|
))) (=> (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@22)) 3))))
 :qid |ValidatorOperatorConfigbpl.1832:15|
 :skolemid |71|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36610)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@23)) 3))))
 :qid |ValidatorOperatorConfigbpl.1838:15|
 :skolemid |72|
))) (=> (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@24)) 3))))
 :qid |ValidatorOperatorConfigbpl.1838:15|
 :skolemid |72|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36635)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@25)) 3))))
 :qid |ValidatorOperatorConfigbpl.1844:15|
 :skolemid |73|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@26) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@26)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@26)) 3))))
 :qid |ValidatorOperatorConfigbpl.1844:15|
 :skolemid |73|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36660)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23228| $1_DualAttestation_Limit_$memory) 173345816) (=> (not (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_23228| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_23228| $1_DualAttestation_Limit_$memory) 173345816)))) (exists ((a@@2 Int) ) (!  (and (|$IsValid'address'| a@@2) (and ($1_Signer_is_txn_signer_addr a@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@2)) 1))))
 :qid |ValidatorOperatorConfigbpl.1516:13|
 :skolemid |41|
)))))
 :qid |ValidatorOperatorConfigbpl.1850:15|
 :skolemid |74|
))) (=> (forall ((a@@3 Int) ) (!  (=> (|$IsValid'address'| a@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23228| $1_DualAttestation_Limit_$memory) 173345816) (=> (not (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_23228| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_23228| $1_DualAttestation_Limit_$memory) 173345816)))) (exists ((a@@4 Int) ) (!  (and (|$IsValid'address'| a@@4) (and ($1_Signer_is_txn_signer_addr a@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@4)) 1))))
 :qid |ValidatorOperatorConfigbpl.1516:13|
 :skolemid |41|
)))))
 :qid |ValidatorOperatorConfigbpl.1850:15|
 :skolemid |74|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36695)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23985| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1856:15|
 :skolemid |75|
))) (=> (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23985| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr1@@0)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1856:15|
 :skolemid |75|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36727)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23261| $1_AccountFreezing_FreezingBit_$memory) addr@@27) (=> (not (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_23261| $1_AccountFreezing_FreezingBit_$memory) addr@@27)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_23261| $1_AccountFreezing_FreezingBit_$memory) addr@@27)))) (exists ((a@@5 Int) ) (!  (and (|$IsValid'address'| a@@5) (and ($1_Signer_is_txn_signer_addr a@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@5)) 1))))
 :qid |ValidatorOperatorConfigbpl.1516:13|
 :skolemid |41|
)))))
 :qid |ValidatorOperatorConfigbpl.1862:15|
 :skolemid |76|
))) (=> (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23261| $1_AccountFreezing_FreezingBit_$memory) addr@@28) (=> (not (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_23261| $1_AccountFreezing_FreezingBit_$memory) addr@@28)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_23261| $1_AccountFreezing_FreezingBit_$memory) addr@@28)))) (exists ((a@@6 Int) ) (!  (and (|$IsValid'address'| a@@6) (and ($1_Signer_is_txn_signer_addr a@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) a@@6)) 1))))
 :qid |ValidatorOperatorConfigbpl.1516:13|
 :skolemid |41|
)))))
 :qid |ValidatorOperatorConfigbpl.1862:15|
 :skolemid |76|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36770)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_24100| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_24160| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@29)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@29)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@29)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@29)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1868:15|
 :skolemid |77|
))) (=> (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_24100| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_24160| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@30)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@30)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@30)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) addr@@30)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1868:15|
 :skolemid |77|
)) (and (=> (= (ControlFlow 0 32290) (- 0 36806)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 32290) (- 0 36817)) (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory@1) (|$addr#$signer| _$t0)) (=> (= (ControlFlow 0 32290) (- 0 36826)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory@1) (|$addr#$signer| _$t0))) _$t1)))))))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 31605) (- 0 36203)) (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (=> (= (ControlFlow 0 31605) (- 0 36209)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0 $abort_code@1) (= (ControlFlow 0 32304) 31605))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 32356) 32304) anon12_Then_correct) (=> (= (ControlFlow 0 32356) 32290) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 32354) 32356)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_Roles_RoleId_$memory@0 ($Memory_22822 (|Store__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) $t11@0))) (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 31655) 32304) anon12_Then_correct) (=> (= (ControlFlow 0 31655) 32290) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0 ($1_Roles_RoleId _$t1))) (and (=> (= (ControlFlow 0 31633) (- 0 36071)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 31633) 32354) anon11_Then_correct) (=> (= (ControlFlow 0 31633) 31655) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9 $t9)) (and (= $t10@0 $t9) (= (ControlFlow 0 31573) 31605))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 6)) (and (= $t9 $t9) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 31557) 31633) anon10_Then_correct) (=> (= (ControlFlow 0 31557) 31573) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 31521) 31557)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@31)) 0)) (= addr@@31 173345816)))
 :qid |ValidatorOperatorConfigbpl.1568:20|
 :skolemid |43|
)) (=> (and (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@32)) 1)) (= addr@@32 186537453)))
 :qid |ValidatorOperatorConfigbpl.1572:20|
 :skolemid |44|
)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@33)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1576:20|
 :skolemid |45|
))) (=> (and (and (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@34)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1580:20|
 :skolemid |46|
)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@35)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1584:20|
 :skolemid |47|
))) (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@36)) 2))))))
 :qid |ValidatorOperatorConfigbpl.1588:20|
 :skolemid |48|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@37)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1592:20|
 :skolemid |49|
)))) (=> (and (and (and (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@38)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1596:20|
 :skolemid |50|
)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@39)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1600:20|
 :skolemid |51|
))) (and (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@40) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@40)) 4))))
 :qid |ValidatorOperatorConfigbpl.1604:20|
 :skolemid |52|
)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@41)) 3))))
 :qid |ValidatorOperatorConfigbpl.1608:20|
 :skolemid |53|
)))) (and (and (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@42) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@42)) 3))))
 :qid |ValidatorOperatorConfigbpl.1612:20|
 :skolemid |54|
)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@43) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@43)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |ValidatorOperatorConfigbpl.1616:20|
 :skolemid |55|
))) (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23985| $1_DualAttestation_Credential_$memory) addr1@@1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@1)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1620:20|
 :skolemid |56|
)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_24100| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@44) (|Select__T@[Int]Bool_| (|domain#$Memory_24160| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@44)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@44)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@44)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@44)) 2)))))
 :qid |ValidatorOperatorConfigbpl.1624:20|
 :skolemid |57|
))))) (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |ValidatorOperatorConfigbpl.1633:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $a_0))
))) (and (= $t4 (|$addr#$signer| _$t0)) (=> (= _$t1 0) (= $t4 173345816))))) (and (and (and (=> (= _$t1 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t5) (= $t5 (|$addr#$signer| _$t0))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t5)) (= (ControlFlow 0 31527) 31521))))) inline$$Not$0$anon0_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_15010| stream@@0) 0) (forall ((v@@14 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_15010| stream@@0) v@@14) 0)
 :qid |ValidatorOperatorConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigbpl.1292:13|
 :skolemid |34|
))) (= (ControlFlow 0 30976) 31527)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 35438) 30976) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
