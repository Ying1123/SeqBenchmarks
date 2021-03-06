(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-logic ALL)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_55353 0)) ((($Memory_55353 (|domain#$Memory_55353| |T@[Int]Bool|) (|contents#$Memory_55353| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_64162 0)) ((($Memory_64162 (|domain#$Memory_64162| |T@[Int]Bool|) (|contents#$Memory_64162| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_62654 0)) ((($Memory_62654 (|domain#$Memory_62654| |T@[Int]Bool|) (|contents#$Memory_62654| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_61619 0)) ((($Memory_61619 (|domain#$Memory_61619| |T@[Int]Bool|) (|contents#$Memory_61619| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_61555 0)) ((($Memory_61555 (|domain#$Memory_61555| |T@[Int]Bool|) (|contents#$Memory_61555| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_61405 0)) ((($Memory_61405 (|domain#$Memory_61405| |T@[Int]Bool|) (|contents#$Memory_61405| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_63563 0)) ((($Memory_63563 (|domain#$Memory_63563| |T@[Int]Bool|) (|contents#$Memory_63563| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_63472 0)) ((($Memory_63472 (|domain#$Memory_63472| |T@[Int]Bool|) (|contents#$Memory_63472| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_60405 0)) ((($Memory_60405 (|domain#$Memory_60405| |T@[Int]Bool|) (|contents#$Memory_60405| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_33973 0)) (((Vec_33973 (|v#Vec_33973| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_33973| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_33973) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_33934 0)) (((Vec_33934 (|v#Vec_33934| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_33934| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_33934) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_14776 0)) (((Vec_14776 (|v#Vec_14776| |T@[Int]Int|) (|l#Vec_14776| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomain| 0)
(declare-datatypes ((T@Vec_34312 0)) (((Vec_34312 (|v#Vec_34312| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#Vec_34312| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomains 0)) ((($1_DiemId_DiemIdDomains (|$domains#$1_DiemId_DiemIdDomains| T@Vec_34312) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomains| 0)
(declare-datatypes ((T@$Memory_64098 0)) ((($Memory_64098 (|domain#$Memory_64098| |T@[Int]Bool|) (|contents#$Memory_64098| |T@[Int]$1_DiemId_DiemIdDomains|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_14776) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_62820 0)) ((($Memory_62820 (|domain#$Memory_62820| |T@[Int]Bool|) (|contents#$Memory_62820| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_14776) (|$base_url#$1_DualAttestation_Credential| T@Vec_14776) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_14776) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_61799 0)) ((($Memory_61799 (|domain#$Memory_61799| |T@[Int]Bool|) (|contents#$Memory_61799| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_34130 0)) (((Vec_34130 (|v#Vec_34130| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_34130| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_34130) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_61522 0)) ((($Memory_61522 (|domain#$Memory_61522| |T@[Int]Bool|) (|contents#$Memory_61522| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_14776) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_14776) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_33895 0)) (((Vec_33895 (|v#Vec_33895| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_33895| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_33895) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_34051 0)) (((Vec_34051 (|v#Vec_34051| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_34051| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_34051) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_60438 0)) ((($Memory_60438 (|domain#$Memory_60438| |T@[Int]Bool|) (|contents#$Memory_60438| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_59819 0)) ((($Memory_59819 (|domain#$Memory_59819| |T@[Int]Bool|) (|contents#$Memory_59819| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_59298 0)) ((($Memory_59298 (|domain#$Memory_59298| |T@[Int]Bool|) (|contents#$Memory_59298| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_58971 0)) ((($Memory_58971 (|domain#$Memory_58971| |T@[Int]Bool|) (|contents#$Memory_58971| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_58849 0)) ((($Memory_58849 (|domain#$Memory_58849| |T@[Int]Bool|) (|contents#$Memory_58849| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_14776) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_14776) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_14776) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_14776) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_14776) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_33809 0)) (((Multiset_33809 (|v#Multiset_33809| |T@[$EventRep]Int|) (|l#Multiset_33809| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_33809| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_33809|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_64804 0)) ((($Mutation_64804 (|l#$Mutation_64804| T@$Location) (|p#$Mutation_64804| T@Vec_14776) (|v#$Mutation_64804| T@$1_DiemId_DiemIdDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_64739 0)) ((($Mutation_64739 (|l#$Mutation_64739| T@$Location) (|p#$Mutation_64739| T@Vec_14776) (|v#$Mutation_64739| T@$1_DiemId_DiemIdDomains) ) ) ))
(declare-datatypes ((T@$Mutation_56031 0)) ((($Mutation_56031 (|l#$Mutation_56031| T@$Location) (|p#$Mutation_56031| T@Vec_14776) (|v#$Mutation_56031| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10447 0)) ((($Mutation_10447 (|l#$Mutation_10447| T@$Location) (|p#$Mutation_10447| T@Vec_14776) (|v#$Mutation_10447| Int) ) ) ))
(declare-datatypes ((T@$Mutation_51912 0)) ((($Mutation_51912 (|l#$Mutation_51912| T@$Location) (|p#$Mutation_51912| T@Vec_14776) (|v#$Mutation_51912| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$Mutation_50335 0)) ((($Mutation_50335 (|l#$Mutation_50335| T@$Location) (|p#$Mutation_50335| T@Vec_14776) (|v#$Mutation_50335| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_49348 0)) ((($Mutation_49348 (|l#$Mutation_49348| T@$Location) (|p#$Mutation_49348| T@Vec_14776) (|v#$Mutation_49348| T@Vec_33895) ) ) ))
(declare-datatypes ((T@$Mutation_47693 0)) ((($Mutation_47693 (|l#$Mutation_47693| T@$Location) (|p#$Mutation_47693| T@Vec_14776) (|v#$Mutation_47693| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_46706 0)) ((($Mutation_46706 (|l#$Mutation_46706| T@$Location) (|p#$Mutation_46706| T@Vec_14776) (|v#$Mutation_46706| T@Vec_34130) ) ) ))
(declare-datatypes ((T@$Mutation_45028 0)) ((($Mutation_45028 (|l#$Mutation_45028| T@$Location) (|p#$Mutation_45028| T@Vec_14776) (|v#$Mutation_45028| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_44041 0)) ((($Mutation_44041 (|l#$Mutation_44041| T@$Location) (|p#$Mutation_44041| T@Vec_14776) (|v#$Mutation_44041| T@Vec_34051) ) ) ))
(declare-datatypes ((T@$Mutation_42245 0)) ((($Mutation_42245 (|l#$Mutation_42245| T@$Location) (|p#$Mutation_42245| T@Vec_14776) (|v#$Mutation_42245| T@$1_DiemId_DiemIdDomain) ) ) ))
(declare-datatypes ((T@$Mutation_41258 0)) ((($Mutation_41258 (|l#$Mutation_41258| T@$Location) (|p#$Mutation_41258| T@Vec_14776) (|v#$Mutation_41258| T@Vec_34312) ) ) ))
(declare-datatypes ((T@$Mutation_39576 0)) ((($Mutation_39576 (|l#$Mutation_39576| T@$Location) (|p#$Mutation_39576| T@Vec_14776) (|v#$Mutation_39576| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_38589 0)) ((($Mutation_38589 (|l#$Mutation_38589| T@$Location) (|p#$Mutation_38589| T@Vec_14776) (|v#$Mutation_38589| T@Vec_33973) ) ) ))
(declare-datatypes ((T@$Mutation_36876 0)) ((($Mutation_36876 (|l#$Mutation_36876| T@$Location) (|p#$Mutation_36876| T@Vec_14776) (|v#$Mutation_36876| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_35889 0)) ((($Mutation_35889 (|l#$Mutation_35889| T@$Location) (|p#$Mutation_35889| T@Vec_14776) (|v#$Mutation_35889| T@Vec_33934) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_33934 T@Vec_33934) Bool)
(declare-fun InRangeVec_29105 (T@Vec_33934 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_33934) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_33934 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_33973 T@Vec_33973) Bool)
(declare-fun InRangeVec_29306 (T@Vec_33973 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_33973) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_33973 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemId_DiemIdDomain''| (T@Vec_34312 T@Vec_34312) Bool)
(declare-fun InRangeVec_29507 (T@Vec_34312 Int) Bool)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_14776 T@Vec_14776) Bool)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomain_| (|T@[Int]$1_DiemId_DiemIdDomain| Int) T@$1_DiemId_DiemIdDomain)
(declare-fun |$IsValid'vec'$1_DiemId_DiemIdDomain''| (T@Vec_34312) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomain'| (T@$1_DiemId_DiemIdDomain) Bool)
(declare-fun |$IndexOfVec'$1_DiemId_DiemIdDomain'| (T@Vec_34312 T@$1_DiemId_DiemIdDomain) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34051 T@Vec_34051) Bool)
(declare-fun InRangeVec_29708 (T@Vec_34051 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34051) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_34051 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34130 T@Vec_34130) Bool)
(declare-fun InRangeVec_29909 (T@Vec_34130 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34130) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_34130 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_33895 T@Vec_33895) Bool)
(declare-fun InRangeVec_30110 (T@Vec_33895 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_33895) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_33895 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_14776 T@Vec_14776) Bool)
(declare-fun InRangeVec_9823 (T@Vec_14776 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_14776) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_14776 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_14776) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_14776 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_14776) T@Vec_14776)
(declare-fun $1_Hash_sha3 (T@Vec_14776) T@Vec_14776)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_14776) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_14776 T@Vec_14776 T@Vec_14776) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_33809_| (|T@[$1_Event_EventHandle]Multiset_33809| T@$1_Event_EventHandle) T@Multiset_33809)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainEvent'| (T@$1_DiemId_DiemIdDomainEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainManager'| (T@$1_DiemId_DiemIdDomainManager) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomains'| (T@$1_DiemId_DiemIdDomains) Bool)
(declare-fun IndexOfVec_14776 (T@Vec_14776 Int) Int)
(declare-fun IndexOfVec_33895 (T@Vec_33895 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_33934 (T@Vec_33934 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_33973 (T@Vec_33973 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_34051 (T@Vec_34051 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_34130 (T@Vec_34130 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_34312 (T@Vec_34312 T@$1_DiemId_DiemIdDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_33809| |T@[$1_Event_EventHandle]Multiset_33809|) |T@[$1_Event_EventHandle]Multiset_33809|)
(declare-fun |lambda#24| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemId_DiemIdDomain| |T@[Int]$1_DiemId_DiemIdDomain| Int T@$1_DiemId_DiemIdDomain) |T@[Int]$1_DiemId_DiemIdDomain|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemId_DiemIdDomain| Int Int T@$1_DiemId_DiemIdDomain) |T@[Int]$1_DiemId_DiemIdDomain|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemId_DiemIdDomain| |T@[Int]$1_DiemId_DiemIdDomain| Int T@$1_DiemId_DiemIdDomain) |T@[Int]$1_DiemId_DiemIdDomain|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemIdbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemIdbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemIdbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemIdbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemIdbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemIdbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_33934) (v2 T@Vec_33934) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_33934| v1) (|l#Vec_33934| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_29105 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v2) i@@0)))
 :qid |DiemIdbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemIdbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_33934) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_33934| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_29105 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@4) i@@1)))
 :qid |DiemIdbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemIdbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_33934) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_29105 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@5) i@@3) e))
 :qid |DiemIdbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_29105 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@5) j) e)))
 :qid |DiemIdbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemIdbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_33973) (v2@@0 T@Vec_33973) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_33973| v1@@0) (|l#Vec_33973| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_29306 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v2@@0) i@@4)))
 :qid |DiemIdbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemIdbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_33973) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_33973| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_29306 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@6) i@@5)))
 :qid |DiemIdbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemIdbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_33973) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_29306 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@7) i@@7) e@@0))
 :qid |DiemIdbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_29306 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@7) j@@0) e@@0)))
 :qid |DiemIdbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemIdbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_34312) (v2@@1 T@Vec_34312) ) (! (= (|$IsEqual'vec'$1_DiemId_DiemIdDomain''| v1@@1 v2@@1)  (and (= (|l#Vec_34312| v1@@1) (|l#Vec_34312| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_29507 v1@@1 i@@8) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v1@@1) i@@8)) (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v2@@1) i@@8))))
 :qid |DiemIdbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemIdbpl.975:48|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemId_DiemIdDomain''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_34312) ) (! (= (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_34312| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_29507 v@@8 i@@9) (|$IsValid'$1_DiemId_DiemIdDomain'| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@8) i@@9)))
 :qid |DiemIdbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemIdbpl.981:48|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_34312) (e@@1 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_29507 v@@9 i@@11)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@9) i@@11)) (|$domain#$1_DiemId_DiemIdDomain| e@@1)))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_29507 v@@9 i@@10)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@9) i@@10)) (|$domain#$1_DiemId_DiemIdDomain| e@@1))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@9) j@@1)) (|$domain#$1_DiemId_DiemIdDomain| e@@1))))
 :qid |DiemIdbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemIdbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_34051) (v2@@2 T@Vec_34051) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_34051| v1@@2) (|l#Vec_34051| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_29708 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))))
 :qid |DiemIdbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemIdbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_34051) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_34051| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_29708 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@10) i@@13)))
 :qid |DiemIdbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemIdbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_34051) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_29708 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemIdbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_29708 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemIdbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemIdbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_34130) (v2@@3 T@Vec_34130) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_34130| v1@@3) (|l#Vec_34130| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_29909 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v2@@3) i@@16))))
 :qid |DiemIdbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemIdbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_34130) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_34130| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_29909 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@12) i@@17)))
 :qid |DiemIdbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemIdbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_34130) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_29909 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |DiemIdbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_29909 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |DiemIdbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemIdbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_33895) (v2@@4 T@Vec_33895) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_33895| v1@@4) (|l#Vec_33895| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_30110 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v2@@4) i@@20)))))
 :qid |DiemIdbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemIdbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_33895) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_33895| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_30110 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@14) i@@21)))
 :qid |DiemIdbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemIdbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_33895) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_30110 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |DiemIdbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_30110 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |DiemIdbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemIdbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_14776) (v2@@5 T@Vec_14776) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_14776| v1@@5) (|l#Vec_14776| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9823 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_14776| v2@@5) i@@24)))
 :qid |DiemIdbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemIdbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_14776) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_14776| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9823 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_14776| v@@16) i@@25)))
 :qid |DiemIdbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemIdbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_14776) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9823 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@17) i@@27) e@@5))
 :qid |DiemIdbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9823 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@17) j@@5) e@@5)))
 :qid |DiemIdbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemIdbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_14776) (v2@@6 T@Vec_14776) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_14776| v1@@6) (|l#Vec_14776| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9823 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_14776| v2@@6) i@@28)))
 :qid |DiemIdbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemIdbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_14776) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_14776| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9823 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_14776| v@@18) i@@29)))
 :qid |DiemIdbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemIdbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_14776) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9823 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@19) i@@31) e@@6))
 :qid |DiemIdbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9823 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@19) j@@6) e@@6)))
 :qid |DiemIdbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemIdbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_14776) (v2@@7 T@Vec_14776) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |DiemIdbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_14776) (v2@@8 T@Vec_14776) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |DiemIdbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_14776) (k2 T@Vec_14776) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemIdbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_14776) (s2 T@Vec_14776) (k1@@0 T@Vec_14776) (k2@@0 T@Vec_14776) (m1 T@Vec_14776) (m2 T@Vec_14776) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemIdbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_33809| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| stream) v@@20) 0)
 :qid |DiemIdbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemIdbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |DiemIdbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@9 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@9)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9)))
 :qid |DiemIdbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |DiemIdbpl.2322:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@10 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@10)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10)))
 :qid |DiemIdbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |DiemIdbpl.2378:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DiemAccount_SentPaymentEvent) (v2@@11 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@11)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@11))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11)))
 :qid |DiemIdbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2) true)
 :qid |DiemIdbpl.2434:70|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DiemId_DiemIdDomainEvent) (v2@@12 T@$1_DiemId_DiemIdDomainEvent) ) (! (=  (and (and (= (|$removed#$1_DiemId_DiemIdDomainEvent| v1@@12) (|$removed#$1_DiemId_DiemIdDomainEvent| v2@@12)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v1@@12)) (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v2@@12)))) (= (|$address#$1_DiemId_DiemIdDomainEvent| v1@@12) (|$address#$1_DiemId_DiemIdDomainEvent| v2@@12))) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@12)))
 :qid |DiemIdbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3) true)
 :qid |DiemIdbpl.2490:82|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@13 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@13) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@13)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@13) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@13))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@13)))
 :qid |DiemIdbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4) true)
 :qid |DiemIdbpl.2546:88|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@14 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@14) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@14)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@14) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@14))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@14) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@14)))
 :qid |DiemIdbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@14) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@14))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5) true)
 :qid |DiemIdbpl.2602:72|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5))
)))
(assert (forall ((v1@@15 T@$1_VASPDomain_VASPDomainEvent) (v2@@15 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@15) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@15)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@15)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@15) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@15))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@15) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@15)))
 :qid |DiemIdbpl.2608:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@15) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@15))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemIdbpl.2669:61|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemIdbpl.2728:36|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemIdbpl.2747:71|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemIdbpl.2775:46|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemIdbpl.2787:64|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemIdbpl.2799:75|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemIdbpl.2811:72|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemIdbpl.2839:55|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemIdbpl.2862:46|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemIdbpl.2881:49|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemIdbpl.2901:71|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |DiemIdbpl.2922:45|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |DiemIdbpl.2945:48|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |DiemIdbpl.2963:45|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |DiemIdbpl.2976:45|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |DiemIdbpl.2989:31|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |DiemIdbpl.3002:31|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |DiemIdbpl.3015:45|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |DiemIdbpl.3033:50|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |DiemIdbpl.3049:52|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |DiemIdbpl.3062:46|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |DiemIdbpl.3085:38|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |DiemIdbpl.3099:39|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |DiemIdbpl.3121:60|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |DiemIdbpl.3138:66|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |DiemIdbpl.3167:50|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@25)))
 :qid |DiemIdbpl.3190:47|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@26)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@26))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@26))))
 :qid |DiemIdbpl.3209:58|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@27)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@27))))
 :qid |DiemIdbpl.3245:47|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@28)))
 :qid |DiemIdbpl.3268:55|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@29)))
 :qid |DiemIdbpl.3282:55|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@30)))
 :qid |DiemIdbpl.3296:57|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30))
)))
(assert (forall ((s@@31 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@31))))
 :qid |DiemIdbpl.3318:56|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@32))))
 :qid |DiemIdbpl.3345:52|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@33)))
 :qid |DiemIdbpl.3363:54|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33))
)))
(assert (forall ((s@@34 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@34)))
 :qid |DiemIdbpl.3386:43|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34))
)))
(assert (forall ((s@@35 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@35))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@35))))
 :qid |DiemIdbpl.3404:48|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@36)))
 :qid |DiemIdbpl.3420:50|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36))
)))
(assert (forall ((s@@37 T@$1_DiemId_DiemIdDomains) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37) (|$IsValid'vec'$1_DiemId_DiemIdDomain''| (|$domains#$1_DiemId_DiemIdDomains| s@@37)))
 :qid |DiemIdbpl.3433:44|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37))
)))
(assert (forall ((v@@21 T@Vec_33934) (i@@32 Int) ) (! (= (InRangeVec_29105 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_33934| v@@21))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29105 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_33973) (i@@33 Int) ) (! (= (InRangeVec_29306 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_33973| v@@22))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29306 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_34312) (i@@34 Int) ) (! (= (InRangeVec_29507 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_34312| v@@23))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29507 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_34051) (i@@35 Int) ) (! (= (InRangeVec_29708 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_34051| v@@24))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29708 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_34130) (i@@36 Int) ) (! (= (InRangeVec_29909 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_34130| v@@25))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29909 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_33895) (i@@37 Int) ) (! (= (InRangeVec_30110 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_33895| v@@26))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30110 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_14776) (i@@38 Int) ) (! (= (InRangeVec_9823 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_14776| v@@27))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9823 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_14776) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_14776 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9823 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@28) i@@40) e@@7))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9823 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@28) j@@7) e@@7)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_14776 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_33895) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_33895 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_30110 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@29) i@@42) e@@8))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_30110 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@29) j@@8) e@@8)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33895 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_33934) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_33934 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_29105 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@30) i@@44) e@@9))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_29105 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@30) j@@9) e@@9)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33934 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_33973) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_33973 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_29306 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@31) i@@46) e@@10))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_29306 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@31) j@@10) e@@10)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33973 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_34051) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_34051 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_29708 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@32) i@@48) e@@11))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_29708 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@32) j@@11) e@@11)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34051 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_34130) (e@@12 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@49 (IndexOfVec_34130 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_29909 v@@33 i@@50) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@33) i@@50) e@@12))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_29909 v@@33 i@@49) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@33) j@@12) e@@12)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34130 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_34312) (e@@13 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@51 (IndexOfVec_34312 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_29507 v@@34 i@@52) (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@34) i@@52) e@@13))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_29507 v@@34 i@@51) (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@34) j@@13) e@@13)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34312 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |DiemIdbpl.275:54|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_33809|) (|l#1| |T@[$1_Event_EventHandle]Multiset_33809|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#1| handle@@0))))
(Multiset_33809 (|lambda#24| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#0@@0| handle@@0)) (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemIdbpl.2235:13|
 :skolemid |289|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@54 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@54) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |DiemIdbpl.73:19|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@55 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |DiemIdbpl.82:30|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@14 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@14) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |DiemIdbpl.63:20|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |DiemIdbpl.73:19|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |DiemIdbpl.82:30|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |DiemIdbpl.63:20|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#4@@5| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemId_DiemIdDomain) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |DiemIdbpl.73:19|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemId_DiemIdDomain) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |DiemIdbpl.82:30|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#4@@7| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemId_DiemIdDomain) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |DiemIdbpl.63:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@60) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |DiemIdbpl.73:19|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |DiemIdbpl.82:30|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@17) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |DiemIdbpl.63:20|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@62) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |DiemIdbpl.73:19|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |DiemIdbpl.82:30|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@18) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |DiemIdbpl.63:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@64) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |DiemIdbpl.73:19|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |DiemIdbpl.82:30|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@19) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |DiemIdbpl.63:20|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |DiemIdbpl.73:19|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |DiemIdbpl.82:30|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |DiemIdbpl.63:20|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |DiemIdbpl.154:29|
 :skolemid |311|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t37 () T@Vec_34312)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int) T@$1_DiemId_DiemIdDomains)
(declare-fun $1_DiemId_DiemIdDomains_$memory@0 () T@$Memory_64098)
(declare-fun _$t1 () Int)
(declare-fun $1_DiemId_DiemIdDomains_$memory () T@$Memory_64098)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory () T@$Memory_64162)
(declare-fun $t11 () T@Vec_34312)
(declare-fun _$t2 () T@Vec_14776)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_58971)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t13 () T@$1_Event_EventHandle)
(declare-fun $t14 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_33809_| (|T@[$1_Event_EventHandle]Multiset_33809| T@$1_Event_EventHandle T@Multiset_33809) |T@[$1_Event_EventHandle]Multiset_33809|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_33809|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_33809)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|Store__T@[$1_Event_EventHandle]Multiset_33809_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_33809|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_33809)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|Store__T@[$1_Event_EventHandle]Multiset_33809_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_33809_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_56031)
(declare-fun $t36@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t33@1 () T@$Mutation_64804)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t33 () T@$Mutation_64804)
(declare-fun $t33@0 () T@$Mutation_64804)
(declare-fun MapConstVec_10052 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_10052 () Int)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int) T@$1_DiemId_DiemIdDomainManager)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t24@2 () T@$Mutation_64739)
(declare-fun $t24@1 () T@$Mutation_64739)
(declare-fun |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| () T@$Mutation_41258)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int T@$1_DiemId_DiemIdDomains) |T@[Int]$1_DiemId_DiemIdDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_41258)
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomain_| (|T@[Int]$1_DiemId_DiemIdDomain| Int T@$1_DiemId_DiemIdDomain) |T@[Int]$1_DiemId_DiemIdDomain|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomain|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomain)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|Store__T@[Int]$1_DiemId_DiemIdDomain_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomain|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomain)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|Store__T@[Int]$1_DiemId_DiemIdDomain_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| () Bool)
(declare-fun $t26@0 () T@Vec_34312)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_DiemId_DiemIdDomains'@0| () T@$1_DiemId_DiemIdDomains)
(declare-fun $t24 () T@$Mutation_64739)
(declare-fun $t24@0 () T@$Mutation_64739)
(declare-fun $abort_code@0 () Int)
(declare-fun $t21@0 () Bool)
(declare-fun $t23 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t17 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_58849)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_59298)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_59819)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_60438)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_61799)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_62820)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_61405)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_61522)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_63472)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_63563)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_62654)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_60405)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_61619)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_61555)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9 () T@$Mutation_64739)
(declare-fun $t31 () T@$Mutation_41258)
(declare-fun $t34 () T@$Mutation_56031)
(push 1)
(set-info :boogie-vc-id $1_DiemId_add_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 98005) (let ((anon45_Else_correct  (=> (and (not $abort_flag@2) (= $t37 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_64098| $1_DiemId_DiemIdDomains_$memory@0) _$t1)))) (and (=> (= (ControlFlow 0 84253) (- 0 100838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1))) (and (=> (= (ControlFlow 0 84253) (- 0 100849)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 84253) (- 0 100859)) (not (exists ((i@@68 Int) ) (!  (and (and (|$IsValid'u64'| i@@68) (InRangeVec_29507 $t11 i@@68)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t11) i@@68)) (|$domain#$1_DiemId_DiemIdDomain| ($1_DiemId_DiemIdDomain _$t2))))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
)))) (=> (not (exists ((i@@69 Int) ) (!  (and (and (|$IsValid'u64'| i@@69) (InRangeVec_29507 $t11 i@@69)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t11) i@@69)) (|$domain#$1_DiemId_DiemIdDomain| ($1_DiemId_DiemIdDomain _$t2))))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
))) (and (=> (= (ControlFlow 0 84253) (- 0 100871)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 84253) (- 0 100883)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $t12)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $t12)) 1))) (and (=> (= (ControlFlow 0 84253) (- 0 100901)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 84253) (- 0 100915)) (not (> (|l#Vec_14776| _$t2) 63))) (=> (not (> (|l#Vec_14776| _$t2) 63)) (and (=> (= (ControlFlow 0 84253) (- 0 100927)) (exists ((i@@70 Int) ) (!  (and (and (|$IsValid'u64'| i@@70) (InRangeVec_29507 $t37 i@@70)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t37) i@@70)) (|$domain#$1_DiemId_DiemIdDomain| ($1_DiemId_DiemIdDomain _$t2))))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
))) (=> (exists ((i@@71 Int) ) (!  (and (and (|$IsValid'u64'| i@@71) (InRangeVec_29507 $t37 i@@71)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t37) i@@71)) (|$domain#$1_DiemId_DiemIdDomain| ($1_DiemId_DiemIdDomain _$t2))))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
)) (and (=> (= (ControlFlow 0 84253) (- 0 100937)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new (let ((len (|l#Multiset_33809| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@0) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_33809 (|Store__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@0) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@36 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| expected) handle@@1)) v@@36) (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| actual) handle@@1)) v@@36))
 :qid |DiemIdbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemIdbpl.2241:13|
 :skolemid |78|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_33809| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_33809 (|Store__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@37 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| expected@@0) handle@@2)) v@@37) (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| actual@@0) handle@@2)) v@@37))
 :qid |DiemIdbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemIdbpl.2241:13|
 :skolemid |78|
))))) (=> (= (ControlFlow 0 84253) (- 0 100962)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_33809| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_33809 (|Store__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@38 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| actual@@1) handle@@3)) v@@38) (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| expected@@1) handle@@3)) v@@38))
 :qid |DiemIdbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemIdbpl.2241:13|
 :skolemid |78|
)))))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 82785) (- 0 100630)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@72 Int) ) (!  (and (and (|$IsValid'u64'| i@@72) (InRangeVec_29507 $t11 i@@72)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t11) i@@72)) (|$domain#$1_DiemId_DiemIdDomain| ($1_DiemId_DiemIdDomain _$t2))))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (> (|l#Vec_14776| _$t2) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@73 Int) ) (!  (and (and (|$IsValid'u64'| i@@73) (InRangeVec_29507 $t11 i@@73)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t11) i@@73)) (|$domain#$1_DiemId_DiemIdDomain| ($1_DiemId_DiemIdDomain _$t2))))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (> (|l#Vec_14776| _$t2) 63)) (=> (= (ControlFlow 0 82785) (- 0 100696)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= 5 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= 5 $t17@0))) (and (exists ((i@@74 Int) ) (!  (and (and (|$IsValid'u64'| i@@74) (InRangeVec_29507 $t11 i@@74)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t11) i@@74)) (|$domain#$1_DiemId_DiemIdDomain| ($1_DiemId_DiemIdDomain _$t2))))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
)) (= 7 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) $t12)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $t12)) 1)) (= 3 $t17@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17@0))) (and (> (|l#Vec_14776| _$t2) 63) (= 7 $t17@0))))))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 84267) 82785))) L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| (|v#$Mutation_56031| $t34@0)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_33809| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@3) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0))))
(Multiset_33809 (|Store__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@3) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 84067) 84267) anon45_Then_correct) (=> (= (ControlFlow 0 84067) 84253) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not $abort_flag@2) (= $t34@0 ($Mutation_56031 (|l#$Mutation_64804| $t33@1) (let ((l (|l#Vec_14776| (|p#$Mutation_64804| $t33@1))))
(Vec_14776 (|Store__T@[Int]Int_| (|v#Vec_14776| (|p#$Mutation_64804| $t33@1)) l 0) (+ l 1))) (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|v#$Mutation_64804| $t33@1))))) (and (= $t36@0 ($1_DiemId_DiemIdDomainEvent false inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 _$t1)) (= (ControlFlow 0 84073) 84067))) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|)))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 84281) 82785))) L7_correct)))
(let ((anon43_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 84333) 84281) anon44_Then_correct) (=> (= (ControlFlow 0 84333) 84073) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= (ControlFlow 0 84331) 84333)) anon43_Then$1_correct)))
(let ((anon43_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (=> (and (and (= $t33@0 ($Mutation_64804 ($Global 186537453) (Vec_14776 (MapConstVec_10052 DefaultVecElem_10052) 0) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (= $t33@1 $t33@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 83958) 84281) anon44_Then_correct) (=> (= (ControlFlow 0 83958) 84073) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (not $abort_flag@1) (= $t24@2 ($Mutation_64739 (|l#$Mutation_64739| $t24@1) (|p#$Mutation_64739| $t24@1) ($1_DiemId_DiemIdDomains (|v#$Mutation_41258| |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1|))))) (and (=> (= (ControlFlow 0 83936) (- 0 100220)) (let (($range_0 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@75 $i_1))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))) i@@75))) 63)))
 :qid |DiemIdbpl.4015:105|
 :skolemid |170|
)))) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i@@76 $i_1@@0))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))) i@@76))) 63)))
 :qid |DiemIdbpl.4015:105|
 :skolemid |170|
))) (and (=> (= (ControlFlow 0 83936) (- 0 100268)) (let (($range_0@@1 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@77 $i_1@@1))
(let (($range_2 ($Range (+ i@@77 1) (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((j@@21 $i_3))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))) i@@77)) (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))) j@@21))))))
 :qid |DiemIdbpl.4023:110|
 :skolemid |171|
)))))
 :qid |DiemIdbpl.4022:105|
 :skolemid |172|
)))) (=> (let (($range_0@@2 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((i@@78 $i_1@@2))
(let (($range_2@@0 ($Range (+ i@@78 1) (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@0) (let ((j@@22 $i_3@@0))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))) i@@78)) (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))) j@@22))))))
 :qid |DiemIdbpl.4023:110|
 :skolemid |171|
)))))
 :qid |DiemIdbpl.4022:105|
 :skolemid |172|
))) (and (=> (= (ControlFlow 0 83936) (- 0 100353)) (let (($range_0@@3 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))
(forall (($i_1@@3 Int) ) (!  (=> (InRangeVec_29507 $range_0@@3 $i_1@@3) (let (($elem (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $range_0@@3) $i_1@@3)))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| $elem)) 63)))
 :qid |DiemIdbpl.4030:86|
 :skolemid |173|
)))) (=> (let (($range_0@@4 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@2))))
(forall (($i_1@@4 Int) ) (!  (=> (InRangeVec_29507 $range_0@@4 $i_1@@4) (let (($elem@@0 (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $range_0@@4) $i_1@@4)))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| $elem@@0)) 63)))
 :qid |DiemIdbpl.4030:86|
 :skolemid |173|
))) (=> (and (= $1_DiemId_DiemIdDomains_$memory@0 ($Memory_64098 (|Store__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_64739| $t24@2)) true) (|Store__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_64739| $t24@2)) (|v#$Mutation_64739| $t24@2)))) (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 83936) 84331) anon43_Then_correct) (=> (= (ControlFlow 0 83936) 83958) anon43_Else_correct))))))))))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 84347) 82785))) L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| ($Mutation_41258 (|l#$Mutation_41258| $t31@0) (|p#$Mutation_41258| $t31@0) (let ((l@@0 (|l#Vec_34312| (|v#$Mutation_41258| $t31@0))))
(Vec_34312 (|Store__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|v#$Mutation_41258| $t31@0)) l@@0 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 83710) 84347) anon42_Then_correct) (=> (= (ControlFlow 0 83710) 83936) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (= $t31@0 ($Mutation_41258 (|l#$Mutation_64739| $t24@1) (let ((l@@1 (|l#Vec_14776| (|p#$Mutation_64739| $t24@1))))
(Vec_14776 (|Store__T@[Int]Int_| (|v#Vec_14776| (|p#$Mutation_64739| $t24@1)) l@@1 0) (+ l@@1 1))) (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1)))) (= (ControlFlow 0 83716) 83710)) |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|))))
(let ((anon41_Else_correct  (=> (not inline$$Not$0$dst@1) (and (=> (= (ControlFlow 0 83643) (- 0 99977)) (let (($range_0@@5 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i@@79 $i_1@@5))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))) i@@79))) 63)))
 :qid |DiemIdbpl.3961:105|
 :skolemid |166|
)))) (=> (let (($range_0@@6 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i@@80 $i_1@@6))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))) i@@80))) 63)))
 :qid |DiemIdbpl.3961:105|
 :skolemid |166|
))) (and (=> (= (ControlFlow 0 83643) (- 0 100025)) (let (($range_0@@7 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i@@81 $i_1@@7))
(let (($range_2@@1 ($Range (+ i@@81 1) (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@1) (let ((j@@23 $i_3@@1))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))) i@@81)) (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))) j@@23))))))
 :qid |DiemIdbpl.3969:110|
 :skolemid |167|
)))))
 :qid |DiemIdbpl.3968:105|
 :skolemid |168|
)))) (=> (let (($range_0@@8 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@8) (let ((i@@82 $i_1@@8))
(let (($range_2@@2 ($Range (+ i@@82 1) (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@2) (let ((j@@24 $i_3@@2))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))) i@@82)) (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))) j@@24))))))
 :qid |DiemIdbpl.3969:110|
 :skolemid |167|
)))))
 :qid |DiemIdbpl.3968:105|
 :skolemid |168|
))) (and (=> (= (ControlFlow 0 83643) (- 0 100110)) (let (($range_0@@9 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))
(forall (($i_1@@9 Int) ) (!  (=> (InRangeVec_29507 $range_0@@9 $i_1@@9) (let (($elem@@1 (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $range_0@@9) $i_1@@9)))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| $elem@@1)) 63)))
 :qid |DiemIdbpl.3976:86|
 :skolemid |169|
)))) (=> (let (($range_0@@10 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))))
(forall (($i_1@@10 Int) ) (!  (=> (InRangeVec_29507 $range_0@@10 $i_1@@10) (let (($elem@@2 (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $range_0@@10) $i_1@@10)))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| $elem@@2)) 63)))
 :qid |DiemIdbpl.3976:86|
 :skolemid |169|
))) (=> (= $t30 $t30) (=> (and (= $t17@0 $t30) (= (ControlFlow 0 83643) 82785)) L7_correct)))))))))))
(let ((anon40_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t30) (= $t30 7)) (and (= $t30 $t30) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 83449) 83716) anon41_Then_correct) (=> (= (ControlFlow 0 83449) 83643) anon41_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1|)) (= (ControlFlow 0 83409) 83449)) anon40_Else$1_correct)))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 83415) 83409)) inline$$Not$0$anon0_correct)))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 84361) 82785))) L7_correct)))
(let ((|inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| (exists ((i@@83 Int) ) (!  (and (and (|$IsValid'u64'| i@@83) (InRangeVec_29507 $t26@0 i@@83)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $t26@0) i@@83)) (|$domain#$1_DiemId_DiemIdDomain| inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
))) (and (=> (= (ControlFlow 0 83365) 84361) anon40_Then_correct) (=> (= (ControlFlow 0 83365) 83415) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)) (and (= $t26@0 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_64739| $t24@1))) (= (ControlFlow 0 83371) 83365))) |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|)))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 84375) 82785))) L7_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$L3_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 inline$$1_DiemId_create_diem_id_domain$0$$t4@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@0)) (and (=> (= (ControlFlow 0 83265) 84375) anon39_Then_correct) (=> (= (ControlFlow 0 83265) 83371) anon39_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= (ControlFlow 0 83259) 83265))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 $abort_code@1) (= (ControlFlow 0 83297) 83265))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct  (=> (and inline$$Le$0$dst@1 (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 ($1_DiemId_DiemIdDomain _$t2))) (=> (and (and (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1))) (and (=> (= (ControlFlow 0 83283) 84375) anon39_Then_correct) (=> (= (ControlFlow 0 83283) 83371) anon39_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 7)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 83243) 83283) inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct) (=> (= (ControlFlow 0 83243) 83259) inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u8'$0$l@1| 63)) (= (ControlFlow 0 83207) 83243)) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 83213) 83207)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (|l#Vec_14776| _$t2)) (and (=> (= (ControlFlow 0 83147) 83297) inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct) (=> (= (ControlFlow 0 83147) 83213) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct)))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 83153) 83147)) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((anon38_Else_correct  (=> (and (and (not $abort_flag@0) (= |$temp_0'$1_DiemId_DiemIdDomains'@0| (|v#$Mutation_64739| $t24@1))) (and (= |$temp_0'$1_DiemId_DiemIdDomains'@0| |$temp_0'$1_DiemId_DiemIdDomains'@0|) (= (ControlFlow 0 83303) 83153))) inline$$1_DiemId_create_diem_id_domain$0$anon0_correct)))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t17@0 $abort_code@1) (= (ControlFlow 0 84389) 82785))) L7_correct)))
(let ((anon37_Then$1_correct  (=> (= $t24@1 $t24) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 84441) 84389) anon38_Then_correct) (=> (= (ControlFlow 0 84441) 83303) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= (ControlFlow 0 84439) 84441)) anon37_Then$1_correct)))
(let ((anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1) (=> (and (and (= $t24@0 ($Mutation_64739 ($Global _$t1) (Vec_14776 (MapConstVec_10052 DefaultVecElem_10052) 0) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1))) (= $t24@1 $t24@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 82869) 84389) anon38_Then_correct) (=> (= (ControlFlow 0 82869) 83303) anon38_Else_correct))))))
(let ((anon36_Then_correct  (=> $t21@0 (and (=> (= (ControlFlow 0 82847) 84439) anon37_Then_correct) (=> (= (ControlFlow 0 82847) 82869) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t21@0) (= $t23 $t23)) (and (= $t17@0 $t23) (= (ControlFlow 0 82843) 82785))) L7_correct)))
(let ((anon35_Then_correct  (=> inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 (=> (and (= $t21@0 (|Select__T@[Int]Bool_| (|domain#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 5)) (and (= $t23 $t23) (= $t21@0 $t21@0))) (and (=> (= (ControlFlow 0 82827) 82847) anon36_Then_correct) (=> (= (ControlFlow 0 82827) 82843) anon36_Else_correct)))))))
(let ((anon35_Else_correct  (=> (and (and (not inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1) (= $t20 $t20)) (and (= $t17@0 $t20) (= (ControlFlow 0 82573) 82785))) L7_correct)))
(let ((anon34_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 5)) (and (= $t20 $t20) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1))) (and (=> (= (ControlFlow 0 82557) 82827) anon35_Then_correct) (=> (= (ControlFlow 0 82557) 82573) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> $t16 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) $t15)) (= 5 $t17)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $t15)) 1)) (= 3 $t17))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17))) (= $t17 $t17)) (and (= $t17@0 $t17) (= (ControlFlow 0 84527) 82785))) L7_correct))))
(let ((anon34_Then_correct true))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1)) (and (=> (= (ControlFlow 0 82515) 84455) anon34_Then_correct) (=> (= (ControlFlow 0 82515) 82557) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not $t16) (= (ControlFlow 0 82521) 82515)) inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct)))
(let ((anon0$1_correct  (=> (and (and (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr)) 0)) (= addr 173345816)))
 :qid |DiemIdbpl.3586:20|
 :skolemid |133|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_58849| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@0)) 1)) (= addr@@0 186537453)))
 :qid |DiemIdbpl.3594:20|
 :skolemid |134|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_58849| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) 186537453)) 1))))) (=> (and (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@1)) 2))))))
 :qid |DiemIdbpl.3602:20|
 :skolemid |135|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@2)) 2))))))
 :qid |DiemIdbpl.3606:20|
 :skolemid |136|
))) (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@3)) 2))))))
 :qid |DiemIdbpl.3610:20|
 :skolemid |137|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@4)) 2))))))
 :qid |DiemIdbpl.3614:20|
 :skolemid |138|
)))) (and (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@5)) 2)))))
 :qid |DiemIdbpl.3618:20|
 :skolemid |139|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@6)) 2)))))
 :qid |DiemIdbpl.3622:20|
 :skolemid |140|
))) (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@7)) 2)))))
 :qid |DiemIdbpl.3626:20|
 :skolemid |141|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59298| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@8)) 4))))
 :qid |DiemIdbpl.3630:20|
 :skolemid |142|
))))) (=> (and (and (and (and (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59819| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@9)) 3))))
 :qid |DiemIdbpl.3634:20|
 :skolemid |143|
)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59819| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@10)) 3))))
 :qid |DiemIdbpl.3638:20|
 :skolemid |144|
))) (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59819| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (not (= (|l#Vec_33895| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59819| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |DiemIdbpl.3642:20|
 :skolemid |145|
)) (let (($range_0@@11 ($Range 0 (|l#Vec_34051| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_60438| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@11) (let ((i1 $i_1@@11))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_60438| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_60438| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) i1)))) 3))))
 :qid |DiemIdbpl.3646:151|
 :skolemid |146|
))))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_61799| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DiemIdbpl.3651:20|
 :skolemid |147|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (= (|Select__T@[Int]Bool_| (|domain#$Memory_62820| $1_DiemAccount_DiemAccount_$memory) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@14)))
 :qid |DiemIdbpl.3655:20|
 :skolemid |148|
))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (= (|Select__T@[Int]Bool_| (|domain#$Memory_61405| $1_VASPDomain_VASPDomainManager_$memory) addr@@15)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@15)) 1))))
 :qid |DiemIdbpl.3659:20|
 :skolemid |149|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (= (|Select__T@[Int]Bool_| (|domain#$Memory_61522| $1_VASPDomain_VASPDomains_$memory) addr@@16)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@16)) 5))))
 :qid |DiemIdbpl.3663:20|
 :skolemid |150|
))))) (and (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_63472| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_63563| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@17)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@17)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@17)) 2)))))
 :qid |DiemIdbpl.3667:20|
 :skolemid |151|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (= (|Select__T@[Int]Bool_| (|domain#$Memory_62654| $1_DesignatedDealer_Dealer_$memory) addr@@18)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@18)) 2))))
 :qid |DiemIdbpl.3671:20|
 :skolemid |152|
))) (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_61799| $1_DualAttestation_Credential_$memory) addr@@19)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@19)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@19)) 5)))))
 :qid |DiemIdbpl.3675:20|
 :skolemid |153|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_60405| $1_SlidingNonce_SlidingNonce_$memory) addr@@20)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@20)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@20)) 1)))))
 :qid |DiemIdbpl.3679:20|
 :skolemid |154|
)))) (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_59819| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@21)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@21)) 3))))
 :qid |DiemIdbpl.3683:20|
 :skolemid |155|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_59298| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@22)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@22)) 4))))
 :qid |DiemIdbpl.3687:20|
 :skolemid |156|
))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_61619| $1_VASP_ParentVASP_$memory) addr@@23)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@23)) 5))))
 :qid |DiemIdbpl.3691:20|
 :skolemid |157|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_61555| $1_VASP_ChildVASP_$memory) addr@@24)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) addr@@24)) 6))))
 :qid |DiemIdbpl.3695:20|
 :skolemid |158|
)))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))) (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DiemIdbpl.3707:20|
 :skolemid |159|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@0)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@0))
 :qid |DiemIdbpl.3711:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) $a_0@@1)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@1) (and (and (let (($range_1 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@84 $i_2))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)) i@@84))) 63)))
 :qid |DiemIdbpl.3716:136|
 :skolemid |161|
))) (let (($range_3 ($Range 0 (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@85 $i_4))
(let (($range_5 ($Range (+ i@@85 1) (|l#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@25 $i_6))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)) i@@85)) (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)) j@@25))))))
 :qid |DiemIdbpl.3718:96|
 :skolemid |162|
)))))
 :qid |DiemIdbpl.3717:196|
 :skolemid |163|
)))) (let (($range_7 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))
(forall (($i_8 Int) ) (!  (=> (InRangeVec_29507 $range_7 $i_8) (let (($elem@@3 (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| $range_7) $i_8)))
(<= (|l#Vec_14776| (|$domain#$1_DiemId_DiemIdDomain| $elem@@3)) 63)))
 :qid |DiemIdbpl.3719:221|
 :skolemid |164|
))))))
 :qid |DiemIdbpl.3715:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) $a_0@@1))
)) (= $t11 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_64098| $1_DiemId_DiemIdDomains_$memory) _$t1)))))) (and (and (and (= $t12 (|$addr#$signer| _$t0)) (= $t13 (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_64162| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (and (= $t14 ($1_DiemId_DiemIdDomainEvent false ($1_DiemId_DiemIdDomain _$t2) _$t1)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= $t15 (|$addr#$signer| _$t0)) (= $t16  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_58971| $1_Roles_RoleId_$memory) $t15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_58971| $1_Roles_RoleId_$memory) $t15)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))))) (and (=> (= (ControlFlow 0 82428) 84527) anon33_Then_correct) (=> (= (ControlFlow 0 82428) 82521) anon33_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_33809| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| stream@@4) v@@39) 0)
 :qid |DiemIdbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemIdbpl.2225:13|
 :skolemid |77|
))) (= (ControlFlow 0 81348) 82428)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_14776| (|p#$Mutation_64739| $t9)) 0) (= (|l#Vec_14776| (|p#$Mutation_64739| $t24)) 0)) (=> (and (and (= (|l#Vec_14776| (|p#$Mutation_41258| $t31)) 0) (= (|l#Vec_14776| (|p#$Mutation_64804| $t33)) 0)) (and (= (|l#Vec_14776| (|p#$Mutation_56031| $t34)) 0) (= (ControlFlow 0 81358) 81348))) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 98005) 81358) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_55353 0)) ((($Memory_55353 (|domain#$Memory_55353| |T@[Int]Bool|) (|contents#$Memory_55353| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_64162 0)) ((($Memory_64162 (|domain#$Memory_64162| |T@[Int]Bool|) (|contents#$Memory_64162| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_62654 0)) ((($Memory_62654 (|domain#$Memory_62654| |T@[Int]Bool|) (|contents#$Memory_62654| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_61619 0)) ((($Memory_61619 (|domain#$Memory_61619| |T@[Int]Bool|) (|contents#$Memory_61619| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_61555 0)) ((($Memory_61555 (|domain#$Memory_61555| |T@[Int]Bool|) (|contents#$Memory_61555| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_61405 0)) ((($Memory_61405 (|domain#$Memory_61405| |T@[Int]Bool|) (|contents#$Memory_61405| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_63563 0)) ((($Memory_63563 (|domain#$Memory_63563| |T@[Int]Bool|) (|contents#$Memory_63563| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_63472 0)) ((($Memory_63472 (|domain#$Memory_63472| |T@[Int]Bool|) (|contents#$Memory_63472| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_60405 0)) ((($Memory_60405 (|domain#$Memory_60405| |T@[Int]Bool|) (|contents#$Memory_60405| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_33973 0)) (((Vec_33973 (|v#Vec_33973| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_33973| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_33973) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_33934 0)) (((Vec_33934 (|v#Vec_33934| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_33934| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_33934) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_14776 0)) (((Vec_14776 (|v#Vec_14776| |T@[Int]Int|) (|l#Vec_14776| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomain| 0)
(declare-datatypes ((T@Vec_34312 0)) (((Vec_34312 (|v#Vec_34312| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#Vec_34312| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomains 0)) ((($1_DiemId_DiemIdDomains (|$domains#$1_DiemId_DiemIdDomains| T@Vec_34312) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomains| 0)
(declare-datatypes ((T@$Memory_64098 0)) ((($Memory_64098 (|domain#$Memory_64098| |T@[Int]Bool|) (|contents#$Memory_64098| |T@[Int]$1_DiemId_DiemIdDomains|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_14776) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_62820 0)) ((($Memory_62820 (|domain#$Memory_62820| |T@[Int]Bool|) (|contents#$Memory_62820| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_14776) (|$base_url#$1_DualAttestation_Credential| T@Vec_14776) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_14776) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_61799 0)) ((($Memory_61799 (|domain#$Memory_61799| |T@[Int]Bool|) (|contents#$Memory_61799| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_34130 0)) (((Vec_34130 (|v#Vec_34130| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_34130| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_34130) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_61522 0)) ((($Memory_61522 (|domain#$Memory_61522| |T@[Int]Bool|) (|contents#$Memory_61522| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_14776) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_14776) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_33895 0)) (((Vec_33895 (|v#Vec_33895| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_33895| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_33895) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_34051 0)) (((Vec_34051 (|v#Vec_34051| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_34051| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_34051) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_60438 0)) ((($Memory_60438 (|domain#$Memory_60438| |T@[Int]Bool|) (|contents#$Memory_60438| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_59819 0)) ((($Memory_59819 (|domain#$Memory_59819| |T@[Int]Bool|) (|contents#$Memory_59819| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_14776) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_59298 0)) ((($Memory_59298 (|domain#$Memory_59298| |T@[Int]Bool|) (|contents#$Memory_59298| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_58971 0)) ((($Memory_58971 (|domain#$Memory_58971| |T@[Int]Bool|) (|contents#$Memory_58971| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_58849 0)) ((($Memory_58849 (|domain#$Memory_58849| |T@[Int]Bool|) (|contents#$Memory_58849| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_14776) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_14776) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_14776) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_14776) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_14776) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_33809 0)) (((Multiset_33809 (|v#Multiset_33809| |T@[$EventRep]Int|) (|l#Multiset_33809| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_33809| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_33809|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_64804 0)) ((($Mutation_64804 (|l#$Mutation_64804| T@$Location) (|p#$Mutation_64804| T@Vec_14776) (|v#$Mutation_64804| T@$1_DiemId_DiemIdDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_64739 0)) ((($Mutation_64739 (|l#$Mutation_64739| T@$Location) (|p#$Mutation_64739| T@Vec_14776) (|v#$Mutation_64739| T@$1_DiemId_DiemIdDomains) ) ) ))
(declare-datatypes ((T@$Mutation_56031 0)) ((($Mutation_56031 (|l#$Mutation_56031| T@$Location) (|p#$Mutation_56031| T@Vec_14776) (|v#$Mutation_56031| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10447 0)) ((($Mutation_10447 (|l#$Mutation_10447| T@$Location) (|p#$Mutation_10447| T@Vec_14776) (|v#$Mutation_10447| Int) ) ) ))
(declare-datatypes ((T@$Mutation_51912 0)) ((($Mutation_51912 (|l#$Mutation_51912| T@$Location) (|p#$Mutation_51912| T@Vec_14776) (|v#$Mutation_51912| T@Vec_14776) ) ) ))
(declare-datatypes ((T@$Mutation_50335 0)) ((($Mutation_50335 (|l#$Mutation_50335| T@$Location) (|p#$Mutation_50335| T@Vec_14776) (|v#$Mutation_50335| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_49348 0)) ((($Mutation_49348 (|l#$Mutation_49348| T@$Location) (|p#$Mutation_49348| T@Vec_14776) (|v#$Mutation_49348| T@Vec_33895) ) ) ))
(declare-datatypes ((T@$Mutation_47693 0)) ((($Mutation_47693 (|l#$Mutation_47693| T@$Location) (|p#$Mutation_47693| T@Vec_14776) (|v#$Mutation_47693| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_46706 0)) ((($Mutation_46706 (|l#$Mutation_46706| T@$Location) (|p#$Mutation_46706| T@Vec_14776) (|v#$Mutation_46706| T@Vec_34130) ) ) ))
(declare-datatypes ((T@$Mutation_45028 0)) ((($Mutation_45028 (|l#$Mutation_45028| T@$Location) (|p#$Mutation_45028| T@Vec_14776) (|v#$Mutation_45028| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_44041 0)) ((($Mutation_44041 (|l#$Mutation_44041| T@$Location) (|p#$Mutation_44041| T@Vec_14776) (|v#$Mutation_44041| T@Vec_34051) ) ) ))
(declare-datatypes ((T@$Mutation_42245 0)) ((($Mutation_42245 (|l#$Mutation_42245| T@$Location) (|p#$Mutation_42245| T@Vec_14776) (|v#$Mutation_42245| T@$1_DiemId_DiemIdDomain) ) ) ))
(declare-datatypes ((T@$Mutation_41258 0)) ((($Mutation_41258 (|l#$Mutation_41258| T@$Location) (|p#$Mutation_41258| T@Vec_14776) (|v#$Mutation_41258| T@Vec_34312) ) ) ))
(declare-datatypes ((T@$Mutation_39576 0)) ((($Mutation_39576 (|l#$Mutation_39576| T@$Location) (|p#$Mutation_39576| T@Vec_14776) (|v#$Mutation_39576| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_38589 0)) ((($Mutation_38589 (|l#$Mutation_38589| T@$Location) (|p#$Mutation_38589| T@Vec_14776) (|v#$Mutation_38589| T@Vec_33973) ) ) ))
(declare-datatypes ((T@$Mutation_36876 0)) ((($Mutation_36876 (|l#$Mutation_36876| T@$Location) (|p#$Mutation_36876| T@Vec_14776) (|v#$Mutation_36876| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_35889 0)) ((($Mutation_35889 (|l#$Mutation_35889| T@$Location) (|p#$Mutation_35889| T@Vec_14776) (|v#$Mutation_35889| T@Vec_33934) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_33934 T@Vec_33934) Bool)
(declare-fun InRangeVec_29105 (T@Vec_33934 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_33934) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_33934 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_33973 T@Vec_33973) Bool)
(declare-fun InRangeVec_29306 (T@Vec_33973 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_33973) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_33973 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemId_DiemIdDomain''| (T@Vec_34312 T@Vec_34312) Bool)
(declare-fun InRangeVec_29507 (T@Vec_34312 Int) Bool)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_14776 T@Vec_14776) Bool)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomain_| (|T@[Int]$1_DiemId_DiemIdDomain| Int) T@$1_DiemId_DiemIdDomain)
(declare-fun |$IsValid'vec'$1_DiemId_DiemIdDomain''| (T@Vec_34312) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomain'| (T@$1_DiemId_DiemIdDomain) Bool)
(declare-fun |$IndexOfVec'$1_DiemId_DiemIdDomain'| (T@Vec_34312 T@$1_DiemId_DiemIdDomain) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34051 T@Vec_34051) Bool)
(declare-fun InRangeVec_29708 (T@Vec_34051 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34051) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_34051 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34130 T@Vec_34130) Bool)
(declare-fun InRangeVec_29909 (T@Vec_34130 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34130) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_34130 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_33895 T@Vec_33895) Bool)
(declare-fun InRangeVec_30110 (T@Vec_33895 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_33895) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_33895 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_14776 T@Vec_14776) Bool)
(declare-fun InRangeVec_9823 (T@Vec_14776 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_14776) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_14776 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_14776) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_14776 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_14776) T@Vec_14776)
(declare-fun $1_Hash_sha3 (T@Vec_14776) T@Vec_14776)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_14776) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_14776 T@Vec_14776 T@Vec_14776) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_33809_| (|T@[$1_Event_EventHandle]Multiset_33809| T@$1_Event_EventHandle) T@Multiset_33809)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainEvent'| (T@$1_DiemId_DiemIdDomainEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainManager'| (T@$1_DiemId_DiemIdDomainManager) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomains'| (T@$1_DiemId_DiemIdDomains) Bool)
(declare-fun IndexOfVec_14776 (T@Vec_14776 Int) Int)
(declare-fun IndexOfVec_33895 (T@Vec_33895 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_33934 (T@Vec_33934 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_33973 (T@Vec_33973 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_34051 (T@Vec_34051 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_34130 (T@Vec_34130 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_34312 (T@Vec_34312 T@$1_DiemId_DiemIdDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_33809| |T@[$1_Event_EventHandle]Multiset_33809|) |T@[$1_Event_EventHandle]Multiset_33809|)
(declare-fun |lambda#24| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemId_DiemIdDomain| |T@[Int]$1_DiemId_DiemIdDomain| Int T@$1_DiemId_DiemIdDomain) |T@[Int]$1_DiemId_DiemIdDomain|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemId_DiemIdDomain| Int Int T@$1_DiemId_DiemIdDomain) |T@[Int]$1_DiemId_DiemIdDomain|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemId_DiemIdDomain| |T@[Int]$1_DiemId_DiemIdDomain| Int T@$1_DiemId_DiemIdDomain) |T@[Int]$1_DiemId_DiemIdDomain|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemIdbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemIdbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemIdbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemIdbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemIdbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemIdbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_33934) (v2 T@Vec_33934) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_33934| v1) (|l#Vec_33934| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_29105 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v2) i@@0)))
 :qid |DiemIdbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemIdbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_33934) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_33934| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_29105 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@4) i@@1)))
 :qid |DiemIdbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemIdbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_33934) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_29105 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@5) i@@3) e))
 :qid |DiemIdbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_29105 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@5) j) e)))
 :qid |DiemIdbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemIdbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_33973) (v2@@0 T@Vec_33973) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_33973| v1@@0) (|l#Vec_33973| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_29306 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v2@@0) i@@4)))
 :qid |DiemIdbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemIdbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_33973) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_33973| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_29306 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@6) i@@5)))
 :qid |DiemIdbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemIdbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_33973) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_29306 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@7) i@@7) e@@0))
 :qid |DiemIdbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_29306 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@7) j@@0) e@@0)))
 :qid |DiemIdbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemIdbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_34312) (v2@@1 T@Vec_34312) ) (! (= (|$IsEqual'vec'$1_DiemId_DiemIdDomain''| v1@@1 v2@@1)  (and (= (|l#Vec_34312| v1@@1) (|l#Vec_34312| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_29507 v1@@1 i@@8) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v1@@1) i@@8)) (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v2@@1) i@@8))))
 :qid |DiemIdbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemIdbpl.975:48|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemId_DiemIdDomain''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_34312) ) (! (= (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_34312| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_29507 v@@8 i@@9) (|$IsValid'$1_DiemId_DiemIdDomain'| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@8) i@@9)))
 :qid |DiemIdbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemIdbpl.981:48|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_34312) (e@@1 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_29507 v@@9 i@@11)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@9) i@@11)) (|$domain#$1_DiemId_DiemIdDomain| e@@1)))
 :qid |DiemIdbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_29507 v@@9 i@@10)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@9) i@@10)) (|$domain#$1_DiemId_DiemIdDomain| e@@1))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@9) j@@1)) (|$domain#$1_DiemId_DiemIdDomain| e@@1))))
 :qid |DiemIdbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemIdbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_34051) (v2@@2 T@Vec_34051) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_34051| v1@@2) (|l#Vec_34051| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_29708 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v2@@2) i@@12)))))
 :qid |DiemIdbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemIdbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_34051) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_34051| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_29708 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@10) i@@13)))
 :qid |DiemIdbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemIdbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_34051) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_29708 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemIdbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_29708 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemIdbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemIdbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_34130) (v2@@3 T@Vec_34130) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_34130| v1@@3) (|l#Vec_34130| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_29909 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v2@@3) i@@16))))
 :qid |DiemIdbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemIdbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_34130) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_34130| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_29909 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@12) i@@17)))
 :qid |DiemIdbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemIdbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_34130) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_29909 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |DiemIdbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_29909 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |DiemIdbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemIdbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_33895) (v2@@4 T@Vec_33895) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_33895| v1@@4) (|l#Vec_33895| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_30110 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v2@@4) i@@20)))))
 :qid |DiemIdbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemIdbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_33895) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_33895| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_30110 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@14) i@@21)))
 :qid |DiemIdbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemIdbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_33895) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_30110 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |DiemIdbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_30110 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |DiemIdbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemIdbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_14776) (v2@@5 T@Vec_14776) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_14776| v1@@5) (|l#Vec_14776| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9823 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_14776| v2@@5) i@@24)))
 :qid |DiemIdbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemIdbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_14776) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_14776| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9823 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_14776| v@@16) i@@25)))
 :qid |DiemIdbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemIdbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_14776) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9823 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@17) i@@27) e@@5))
 :qid |DiemIdbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9823 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@17) j@@5) e@@5)))
 :qid |DiemIdbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemIdbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_14776) (v2@@6 T@Vec_14776) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_14776| v1@@6) (|l#Vec_14776| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9823 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_14776| v2@@6) i@@28)))
 :qid |DiemIdbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemIdbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_14776) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_14776| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9823 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_14776| v@@18) i@@29)))
 :qid |DiemIdbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemIdbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_14776) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9823 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@19) i@@31) e@@6))
 :qid |DiemIdbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9823 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@19) j@@6) e@@6)))
 :qid |DiemIdbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemIdbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_14776) (v2@@7 T@Vec_14776) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |DiemIdbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_14776) (v2@@8 T@Vec_14776) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |DiemIdbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_14776) (k2 T@Vec_14776) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemIdbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_14776) (s2 T@Vec_14776) (k1@@0 T@Vec_14776) (k2@@0 T@Vec_14776) (m1 T@Vec_14776) (m2 T@Vec_14776) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemIdbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_33809| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_33809| stream) v@@20) 0)
 :qid |DiemIdbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemIdbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |DiemIdbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@9 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@9)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9)))
 :qid |DiemIdbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |DiemIdbpl.2322:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@10 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@10)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10)))
 :qid |DiemIdbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |DiemIdbpl.2378:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DiemAccount_SentPaymentEvent) (v2@@11 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@11)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@11))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11)))
 :qid |DiemIdbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2) true)
 :qid |DiemIdbpl.2434:70|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DiemId_DiemIdDomainEvent) (v2@@12 T@$1_DiemId_DiemIdDomainEvent) ) (! (=  (and (and (= (|$removed#$1_DiemId_DiemIdDomainEvent| v1@@12) (|$removed#$1_DiemId_DiemIdDomainEvent| v2@@12)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v1@@12)) (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v2@@12)))) (= (|$address#$1_DiemId_DiemIdDomainEvent| v1@@12) (|$address#$1_DiemId_DiemIdDomainEvent| v2@@12))) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@12)))
 :qid |DiemIdbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3) true)
 :qid |DiemIdbpl.2490:82|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@13 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@13) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@13)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@13) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@13))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@13)))
 :qid |DiemIdbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4) true)
 :qid |DiemIdbpl.2546:88|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@14 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@14) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@14)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@14) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@14))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@14) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@14)))
 :qid |DiemIdbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@14) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@14))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5) true)
 :qid |DiemIdbpl.2602:72|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5))
)))
(assert (forall ((v1@@15 T@$1_VASPDomain_VASPDomainEvent) (v2@@15 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@15) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@15)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@15)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@15) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@15))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@15) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@15)))
 :qid |DiemIdbpl.2608:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@15) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@15))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemIdbpl.2669:61|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemIdbpl.2728:36|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemIdbpl.2747:71|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemIdbpl.2775:46|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemIdbpl.2787:64|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemIdbpl.2799:75|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemIdbpl.2811:72|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemIdbpl.2839:55|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemIdbpl.2862:46|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemIdbpl.2881:49|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemIdbpl.2901:71|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |DiemIdbpl.2922:45|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |DiemIdbpl.2945:48|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |DiemIdbpl.2963:45|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |DiemIdbpl.2976:45|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |DiemIdbpl.2989:31|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |DiemIdbpl.3002:31|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |DiemIdbpl.3015:45|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |DiemIdbpl.3033:50|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |DiemIdbpl.3049:52|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |DiemIdbpl.3062:46|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |DiemIdbpl.3085:38|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |DiemIdbpl.3099:39|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |DiemIdbpl.3121:60|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |DiemIdbpl.3138:66|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |DiemIdbpl.3167:50|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@25)))
 :qid |DiemIdbpl.3190:47|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@26)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@26))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@26))))
 :qid |DiemIdbpl.3209:58|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@27)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@27))))
 :qid |DiemIdbpl.3245:47|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@28)))
 :qid |DiemIdbpl.3268:55|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@29)))
 :qid |DiemIdbpl.3282:55|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@30)))
 :qid |DiemIdbpl.3296:57|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30))
)))
(assert (forall ((s@@31 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@31))))
 :qid |DiemIdbpl.3318:56|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@32))))
 :qid |DiemIdbpl.3345:52|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@33)))
 :qid |DiemIdbpl.3363:54|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33))
)))
(assert (forall ((s@@34 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@34)))
 :qid |DiemIdbpl.3386:43|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34))
)))
(assert (forall ((s@@35 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@35))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@35))))
 :qid |DiemIdbpl.3404:48|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@36)))
 :qid |DiemIdbpl.3420:50|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36))
)))
(assert (forall ((s@@37 T@$1_DiemId_DiemIdDomains) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37) (|$IsValid'vec'$1_DiemId_DiemIdDomain''| (|$domains#$1_DiemId_DiemIdDomains| s@@37)))
 :qid |DiemIdbpl.3433:44|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37))
)))
(assert (forall ((v@@21 T@Vec_33934) (i@@32 Int) ) (! (= (InRangeVec_29105 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_33934| v@@21))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29105 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_33973) (i@@33 Int) ) (! (= (InRangeVec_29306 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_33973| v@@22))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29306 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_34312) (i@@34 Int) ) (! (= (InRangeVec_29507 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_34312| v@@23))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29507 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_34051) (i@@35 Int) ) (! (= (InRangeVec_29708 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_34051| v@@24))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29708 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_34130) (i@@36 Int) ) (! (= (InRangeVec_29909 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_34130| v@@25))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_29909 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_33895) (i@@37 Int) ) (! (= (InRangeVec_30110 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_33895| v@@26))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30110 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_14776) (i@@38 Int) ) (! (= (InRangeVec_9823 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_14776| v@@27))))
 :qid |DiemIdbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9823 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_14776) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_14776 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9823 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@28) i@@40) e@@7))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9823 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_14776| v@@28) j@@7) e@@7)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_14776 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_33895) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_33895 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_30110 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@29) i@@42) e@@8))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_30110 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_33895| v@@29) j@@8) e@@8)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33895 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_33934) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_33934 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_29105 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@30) i@@44) e@@9))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_29105 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_33934| v@@30) j@@9) e@@9)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33934 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_33973) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_33973 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_29306 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@31) i@@46) e@@10))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_29306 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_33973| v@@31) j@@10) e@@10)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33973 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_34051) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_34051 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_29708 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@32) i@@48) e@@11))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_29708 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34051| v@@32) j@@11) e@@11)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34051 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_34130) (e@@12 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@49 (IndexOfVec_34130 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_29909 v@@33 i@@50) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@33) i@@50) e@@12))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_29909 v@@33 i@@49) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34130| v@@33) j@@12) e@@12)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34130 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_34312) (e@@13 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@51 (IndexOfVec_34312 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_29507 v@@34 i@@52) (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@34) i@@52) e@@13))
 :qid |DiemIdbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_29507 v@@34 i@@51) (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|v#Vec_34312| v@@34) j@@13) e@@13)))
 :qid |DiemIdbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemIdbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34312 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |DiemIdbpl.275:54|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_33809|) (|l#1| |T@[$1_Event_EventHandle]Multiset_33809|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#1| handle@@0))))
(Multiset_33809 (|lambda#24| (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#0@@0| handle@@0)) (|v#Multiset_33809| (|Select__T@[$1_Event_EventHandle]Multiset_33809_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemIdbpl.2235:13|
 :skolemid |289|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_33809_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@54 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@54) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |DiemIdbpl.73:19|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@55 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |DiemIdbpl.82:30|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@14 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@14) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |DiemIdbpl.63:20|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |DiemIdbpl.73:19|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |DiemIdbpl.82:30|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |DiemIdbpl.63:20|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#4@@5| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemId_DiemIdDomain) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |DiemIdbpl.73:19|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemId_DiemIdDomain) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |DiemIdbpl.82:30|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#4@@7| |T@[Int]$1_DiemId_DiemIdDomain|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemId_DiemIdDomain) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemId_DiemIdDomain_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |DiemIdbpl.63:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomain_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@60) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |DiemIdbpl.73:19|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |DiemIdbpl.82:30|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@17) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |DiemIdbpl.63:20|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@62) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |DiemIdbpl.73:19|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |DiemIdbpl.82:30|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@18) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |DiemIdbpl.63:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@64) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |DiemIdbpl.73:19|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |DiemIdbpl.82:30|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@19) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |DiemIdbpl.63:20|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |DiemIdbpl.73:19|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |DiemIdbpl.82:30|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |DiemIdbpl.63:20|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |DiemIdbpl.154:29|
 :skolemid |311|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
; Valid

