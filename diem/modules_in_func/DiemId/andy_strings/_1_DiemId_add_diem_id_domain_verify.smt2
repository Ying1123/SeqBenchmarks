(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_50050 0)) ((($Memory_50050 (|domain#$Memory_50050| |T@[Int]Bool|) (|contents#$Memory_50050| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_57968 0)) ((($Memory_57968 (|domain#$Memory_57968| |T@[Int]Bool|) (|contents#$Memory_57968| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomains 0)) ((($1_DiemId_DiemIdDomains (|$domains#$1_DiemId_DiemIdDomains| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomains| 0)
(declare-datatypes ((T@$Memory_57904 0)) ((($Memory_57904 (|domain#$Memory_57904| |T@[Int]Bool|) (|contents#$Memory_57904| |T@[Int]$1_DiemId_DiemIdDomains|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_56611 0)) ((($Memory_56611 (|domain#$Memory_56611| |T@[Int]Bool|) (|contents#$Memory_56611| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_55917 0)) ((($Memory_55917 (|domain#$Memory_55917| |T@[Int]Bool|) (|contents#$Memory_55917| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_55737 0)) ((($Memory_55737 (|domain#$Memory_55737| |T@[Int]Bool|) (|contents#$Memory_55737| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_55673 0)) ((($Memory_55673 (|domain#$Memory_55673| |T@[Int]Bool|) (|contents#$Memory_55673| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_55541 0)) ((($Memory_55541 (|domain#$Memory_55541| |T@[Int]Bool|) (|contents#$Memory_55541| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_55640 0)) ((($Memory_55640 (|domain#$Memory_55640| |T@[Int]Bool|) (|contents#$Memory_55640| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_57393 0)) ((($Memory_57393 (|domain#$Memory_57393| |T@[Int]Bool|) (|contents#$Memory_57393| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_57302 0)) ((($Memory_57302 (|domain#$Memory_57302| |T@[Int]Bool|) (|contents#$Memory_57302| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_54600 0)) ((($Memory_54600 (|domain#$Memory_54600| |T@[Int]Bool|) (|contents#$Memory_54600| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_56772 0)) ((($Memory_56772 (|domain#$Memory_56772| |T@[Int]Bool|) (|contents#$Memory_56772| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_54633 0)) ((($Memory_54633 (|domain#$Memory_54633| |T@[Int]Bool|) (|contents#$Memory_54633| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_54089 0)) ((($Memory_54089 (|domain#$Memory_54089| |T@[Int]Bool|) (|contents#$Memory_54089| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_53657 0)) ((($Memory_53657 (|domain#$Memory_53657| |T@[Int]Bool|) (|contents#$Memory_53657| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_53330 0)) ((($Memory_53330 (|domain#$Memory_53330| |T@[Int]Bool|) (|contents#$Memory_53330| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_53208 0)) ((($Memory_53208 (|domain#$Memory_53208| |T@[Int]Bool|) (|contents#$Memory_53208| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_32802 0)) (((Multiset_32802 (|v#Multiset_32802| |T@[$EventRep]Int|) (|l#Multiset_32802| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_32802| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_32802|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_58573 0)) ((($Mutation_58573 (|l#$Mutation_58573| T@$Location) (|p#$Mutation_58573| (Seq Int)) (|v#$Mutation_58573| T@$1_DiemId_DiemIdDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_58512 0)) ((($Mutation_58512 (|l#$Mutation_58512| T@$Location) (|p#$Mutation_58512| (Seq Int)) (|v#$Mutation_58512| T@$1_DiemId_DiemIdDomains) ) ) ))
(declare-datatypes ((T@$Mutation_50681 0)) ((($Mutation_50681 (|l#$Mutation_50681| T@$Location) (|p#$Mutation_50681| (Seq Int)) (|v#$Mutation_50681| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10069 0)) ((($Mutation_10069 (|l#$Mutation_10069| T@$Location) (|p#$Mutation_10069| (Seq Int)) (|v#$Mutation_10069| Int) ) ) ))
(declare-datatypes ((T@$Mutation_47300 0)) ((($Mutation_47300 (|l#$Mutation_47300| T@$Location) (|p#$Mutation_47300| (Seq Int)) (|v#$Mutation_47300| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_46010 0)) ((($Mutation_46010 (|l#$Mutation_46010| T@$Location) (|p#$Mutation_46010| (Seq Int)) (|v#$Mutation_46010| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_45264 0)) ((($Mutation_45264 (|l#$Mutation_45264| T@$Location) (|p#$Mutation_45264| (Seq Int)) (|v#$Mutation_45264| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_43860 0)) ((($Mutation_43860 (|l#$Mutation_43860| T@$Location) (|p#$Mutation_43860| (Seq Int)) (|v#$Mutation_43860| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_43114 0)) ((($Mutation_43114 (|l#$Mutation_43114| T@$Location) (|p#$Mutation_43114| (Seq Int)) (|v#$Mutation_43114| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_41710 0)) ((($Mutation_41710 (|l#$Mutation_41710| T@$Location) (|p#$Mutation_41710| (Seq Int)) (|v#$Mutation_41710| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_40964 0)) ((($Mutation_40964 (|l#$Mutation_40964| T@$Location) (|p#$Mutation_40964| (Seq Int)) (|v#$Mutation_40964| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_39560 0)) ((($Mutation_39560 (|l#$Mutation_39560| T@$Location) (|p#$Mutation_39560| (Seq Int)) (|v#$Mutation_39560| T@$1_DiemId_DiemIdDomain) ) ) ))
(declare-datatypes ((T@$Mutation_38814 0)) ((($Mutation_38814 (|l#$Mutation_38814| T@$Location) (|p#$Mutation_38814| (Seq Int)) (|v#$Mutation_38814| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_37410 0)) ((($Mutation_37410 (|l#$Mutation_37410| T@$Location) (|p#$Mutation_37410| (Seq Int)) (|v#$Mutation_37410| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_36664 0)) ((($Mutation_36664 (|l#$Mutation_36664| T@$Location) (|p#$Mutation_36664| (Seq Int)) (|v#$Mutation_36664| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_35222 0)) ((($Mutation_35222 (|l#$Mutation_35222| T@$Location) (|p#$Mutation_35222| (Seq Int)) (|v#$Mutation_35222| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_34476 0)) ((($Mutation_34476 (|l#$Mutation_34476| T@$Location) (|p#$Mutation_34476| (Seq Int)) (|v#$Mutation_34476| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| ((Seq T@$1_DiemAccount_KeyRotationCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| ((Seq T@$1_DiemAccount_KeyRotationCapability) T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| ((Seq T@$1_DiemAccount_WithdrawCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| ((Seq T@$1_DiemAccount_WithdrawCapability) T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsValid'vec'$1_DiemId_DiemIdDomain''| ((Seq T@$1_DiemId_DiemIdDomain)) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomain'| (T@$1_DiemId_DiemIdDomain) Bool)
(declare-fun |$IndexOfVec'$1_DiemId_DiemIdDomain'| ((Seq T@$1_DiemId_DiemIdDomain) T@$1_DiemId_DiemIdDomain) Int)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| ((Seq T@$1_DiemSystem_ValidatorInfo)) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| ((Seq T@$1_DiemSystem_ValidatorInfo) T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| ((Seq T@$1_VASPDomain_VASPDomain)) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| ((Seq T@$1_VASPDomain_VASPDomain) T@$1_VASPDomain_VASPDomain) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_32802_| (|T@[$1_Event_EventHandle]Multiset_32802| T@$1_Event_EventHandle) T@Multiset_32802)
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
(declare-fun ReverseVec_9922 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_29338 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_28353 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_28550 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_28944 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_29141 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_28747 ((Seq T@$1_DiemId_DiemIdDomain)) (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_32802| |T@[$1_Event_EventHandle]Multiset_32802|) |T@[$1_Event_EventHandle]Multiset_32802|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemIdbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemIdbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemIdbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemIdbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemIdbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemIdbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@4 i@@0)))
 :qid |DiemIdbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemIdbpl.593:62|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@1 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemIdbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemIdbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemIdbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemIdbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemIdbpl.773:59|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemIdbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemIdbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemIdbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (= (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemId_DiemIdDomain'| (seq.nth v@@8 i@@6)))
 :qid |DiemIdbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemIdbpl.953:48|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemId_DiemIdDomain)) (e@@1 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemIdbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemIdbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemIdbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemIdbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemIdbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemIdbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemIdbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |DiemIdbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemIdbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemIdbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemIdbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemIdbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |DiemIdbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemIdbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemIdbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemIdbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemIdbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'address'| (seq.nth v@@16 i@@18)))
 :qid |DiemIdbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemIdbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemIdbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemIdbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemIdbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'u8'| (seq.nth v@@18 i@@21)))
 :qid |DiemIdbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemIdbpl.1853:28|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemIdbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemIdbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemIdbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemIdbpl.2041:15|
 :skolemid |55|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemIdbpl.2057:15|
 :skolemid |56|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemIdbpl.2128:15|
 :skolemid |57|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemIdbpl.2131:15|
 :skolemid |58|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_32802| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream) v@@20) 0)
 :qid |DiemIdbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemIdbpl.2192:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |DiemIdbpl.2233:80|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@1 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1)))
 :qid |DiemIdbpl.2239:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |DiemIdbpl.2289:78|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@2 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2)))
 :qid |DiemIdbpl.2295:15|
 :skolemid |64|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |DiemIdbpl.2345:74|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DiemAccount_SentPaymentEvent) (v2@@3 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3)))
 :qid |DiemIdbpl.2351:15|
 :skolemid |66|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2) true)
 :qid |DiemIdbpl.2401:70|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemId_DiemIdDomainEvent) (v2@@4 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@4)))
 :qid |DiemIdbpl.2407:15|
 :skolemid |68|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3) true)
 :qid |DiemIdbpl.2457:82|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@5 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5)))
 :qid |DiemIdbpl.2463:15|
 :skolemid |70|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4) true)
 :qid |DiemIdbpl.2513:88|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6)))
 :qid |DiemIdbpl.2519:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5) true)
 :qid |DiemIdbpl.2569:72|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_VASPDomain_VASPDomainEvent) (v2@@7 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@7) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@7)))
 :qid |DiemIdbpl.2575:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@7) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@7))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemIdbpl.2636:61|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemIdbpl.2695:36|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemIdbpl.2714:71|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemIdbpl.2743:46|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemIdbpl.2756:64|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemIdbpl.2769:75|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemIdbpl.2782:72|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemIdbpl.2811:55|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemIdbpl.2833:46|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemIdbpl.2851:49|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemIdbpl.2871:71|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |DiemIdbpl.2893:45|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |DiemIdbpl.2916:48|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |DiemIdbpl.2932:45|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |DiemIdbpl.2945:45|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |DiemIdbpl.2958:31|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |DiemIdbpl.2971:31|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |DiemIdbpl.2984:45|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |DiemIdbpl.3003:50|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |DiemIdbpl.3018:52|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |DiemIdbpl.3032:46|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |DiemIdbpl.3056:38|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |DiemIdbpl.3070:39|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |DiemIdbpl.3092:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |DiemIdbpl.3109:66|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |DiemIdbpl.3138:50|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@25)))
 :qid |DiemIdbpl.3157:47|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@26)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@26))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@26))))
 :qid |DiemIdbpl.3177:58|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@27)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@27))))
 :qid |DiemIdbpl.3212:47|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@28)))
 :qid |DiemIdbpl.3231:55|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@29)))
 :qid |DiemIdbpl.3245:55|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@30)))
 :qid |DiemIdbpl.3259:57|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30))
)))
(assert (forall ((s@@31 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@31))))
 :qid |DiemIdbpl.3281:56|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@32))))
 :qid |DiemIdbpl.3306:52|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@33)))
 :qid |DiemIdbpl.3322:54|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33))
)))
(assert (forall ((s@@34 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@34)))
 :qid |DiemIdbpl.3345:43|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34))
)))
(assert (forall ((s@@35 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@35))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@35))))
 :qid |DiemIdbpl.3364:48|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@36)))
 :qid |DiemIdbpl.3379:50|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36))
)))
(assert (forall ((s@@37 T@$1_DiemId_DiemIdDomains) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37) (|$IsValid'vec'$1_DiemId_DiemIdDomain''| (|$domains#$1_DiemId_DiemIdDomains| s@@37)))
 :qid |DiemIdbpl.3393:44|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37))
)))
(assert (forall ((v@@21 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_9922 v@@21)))
 (and (= (seq.len r@@0) (seq.len v@@21)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@0))) (= (seq.nth r@@0 i@@24) (seq.nth v@@21 (- (- (seq.len v@@21) i@@24) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@24))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_9922 v@@21))
)))
(assert (forall ((v@@22 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_29338 v@@22)))
 (and (= (seq.len r@@1) (seq.len v@@22)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@1))) (= (seq.nth r@@1 i@@25) (seq.nth v@@22 (- (- (seq.len v@@22) i@@25) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@25))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29338 v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_28353 v@@23)))
 (and (= (seq.len r@@2) (seq.len v@@23)) (forall ((i@@26 Int) ) (!  (=> (and (>= i@@26 0) (< i@@26 (seq.len r@@2))) (= (seq.nth r@@2 i@@26) (seq.nth v@@23 (- (- (seq.len v@@23) i@@26) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@26))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28353 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_28550 v@@24)))
 (and (= (seq.len r@@3) (seq.len v@@24)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@3))) (= (seq.nth r@@3 i@@27) (seq.nth v@@24 (- (- (seq.len v@@24) i@@27) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@27))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28550 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_28944 v@@25)))
 (and (= (seq.len r@@4) (seq.len v@@25)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@4))) (= (seq.nth r@@4 i@@28) (seq.nth v@@25 (- (- (seq.len v@@25) i@@28) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@28))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28944 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@5 (ReverseVec_29141 v@@26)))
 (and (= (seq.len r@@5) (seq.len v@@26)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@5))) (= (seq.nth r@@5 i@@29) (seq.nth v@@26 (- (- (seq.len v@@26) i@@29) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@29))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29141 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (let ((r@@6 (ReverseVec_28747 v@@27)))
 (and (= (seq.len r@@6) (seq.len v@@27)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@6))) (= (seq.nth r@@6 i@@30) (seq.nth v@@27 (- (- (seq.len v@@27) i@@30) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@30))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28747 v@@27))
)))
(assert (forall ((|l#0| Bool) (i@@31 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31) |l#0|)
 :qid |DiemIdbpl.250:54|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_32802|) (|l#1| |T@[$1_Event_EventHandle]Multiset_32802|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#1| handle@@0))))
(Multiset_32802 (|lambda#3| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#0@@0| handle@@0)) (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemIdbpl.2202:13|
 :skolemid |271|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@28) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@28)))
 :qid |DiemIdbpl.129:29|
 :skolemid |272|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int) T@$1_DiemId_DiemIdDomainManager)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory () T@$Memory_57968)
(declare-fun $t1@0 () Bool)
(declare-fun $es () T@$EventStore)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t37 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int) T@$1_DiemId_DiemIdDomains)
(declare-fun $1_DiemId_DiemIdDomains_$memory@0 () T@$Memory_57904)
(declare-fun _$t1 () Int)
(declare-fun $1_DiemId_DiemIdDomains_$memory () T@$Memory_57904)
(declare-fun $t11 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun _$t2 () (Seq Int))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_53330)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t13 () T@$1_Event_EventHandle)
(declare-fun $t14 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_32802_| (|T@[$1_Event_EventHandle]Multiset_32802| T@$1_Event_EventHandle T@Multiset_32802) |T@[$1_Event_EventHandle]Multiset_32802|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_32802|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_32802)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|Store__T@[$1_Event_EventHandle]Multiset_32802_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_32802|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_32802)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|Store__T@[$1_Event_EventHandle]Multiset_32802_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_32802_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_50681)
(declare-fun $t36@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t33@1 () T@$Mutation_58573)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t33 () T@$Mutation_58573)
(declare-fun $t33@0 () T@$Mutation_58573)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t24@2 () T@$Mutation_58512)
(declare-fun $t24@1 () T@$Mutation_58512)
(declare-fun |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| () T@$Mutation_38814)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int T@$1_DiemId_DiemIdDomains) |T@[Int]$1_DiemId_DiemIdDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_38814)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| () Bool)
(declare-fun $t26@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_DiemId_DiemIdDomains'@0| () T@$1_DiemId_DiemIdDomains)
(declare-fun $t24 () T@$Mutation_58512)
(declare-fun $t24@0 () T@$Mutation_58512)
(declare-fun $abort_code@0 () Int)
(declare-fun $t21@0 () Bool)
(declare-fun $t23 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t17 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_53208)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_53657)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_54089)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_54633)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_55917)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_56772)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_55541)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_55640)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_57302)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_57393)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_56611)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_54600)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_55737)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_55673)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9 () T@$Mutation_58512)
(declare-fun $t31 () T@$Mutation_38814)
(declare-fun $t34 () T@$Mutation_50681)
(push 1)
(set-info :boogie-vc-id $1_DiemId_add_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 87797) (let ((anon45_Else_correct  (=> (and (not $abort_flag@2) (= $t37 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory@0) _$t1)))) (and (=> (= (ControlFlow 0 77662) (- 0 90630)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1))) (and (=> (= (ControlFlow 0 77662) (- 0 90641)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 77662) (- 0 90651)) (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len $t11)))) (= (seq.nth $t11 i@@32) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
)))) (=> (not (exists ((i@@33 Int) ) (!  (and (and (|$IsValid'u64'| i@@33) (and (>= i@@33 0) (< i@@33 (seq.len $t11)))) (= (seq.nth $t11 i@@33) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (and (=> (= (ControlFlow 0 77662) (- 0 90663)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 77662) (- 0 90675)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12)) 1))) (and (=> (= (ControlFlow 0 77662) (- 0 90693)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 77662) (- 0 90707)) (not (> (seq.len _$t2) 63))) (=> (not (> (seq.len _$t2) 63)) (and (=> (= (ControlFlow 0 77662) (- 0 90719)) (exists ((i@@34 Int) ) (!  (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len $t37)))) (= (seq.nth $t37 i@@34) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (=> (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len $t37)))) (= (seq.nth $t37 i@@35) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
)) (and (=> (= (ControlFlow 0 77662) (- 0 90729)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new (let ((len (|l#Multiset_32802| stream@@1)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected) handle@@2)) (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual) handle@@2))) (forall ((v@@30 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected) handle@@2)) v@@30) (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual) handle@@2)) v@@30))
 :qid |DiemIdbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemIdbpl.2208:13|
 :skolemid |60|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_32802| stream@@2)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@0) handle@@3)) (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@0) handle@@3))) (forall ((v@@31 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@0) handle@@3)) v@@31) (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@0) handle@@3)) v@@31))
 :qid |DiemIdbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemIdbpl.2208:13|
 :skolemid |60|
))))) (=> (= (ControlFlow 0 77662) (- 0 90754)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_32802| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@3) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@3) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@1) handle@@4)) (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@1) handle@@4))) (forall ((v@@32 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@1) handle@@4)) v@@32) (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@1) handle@@4)) v@@32))
 :qid |DiemIdbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemIdbpl.2208:13|
 :skolemid |60|
)))))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 76194) (- 0 90422)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@36 Int) ) (!  (and (and (|$IsValid'u64'| i@@36) (and (>= i@@36 0) (< i@@36 (seq.len $t11)))) (= (seq.nth $t11 i@@36) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (> (seq.len _$t2) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@37 Int) ) (!  (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len $t11)))) (= (seq.nth $t11 i@@37) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (> (seq.len _$t2) 63)) (=> (= (ControlFlow 0 76194) (- 0 90488)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= 5 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= 5 $t17@0))) (and (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len $t11)))) (= (seq.nth $t11 i@@38) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
)) (= 7 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12)) 1)) (= 3 $t17@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17@0))) (and (> (seq.len _$t2) 63) (= 7 $t17@0))))))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 77676) 76194))) L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| (|v#$Mutation_50681| $t34@0)) (= $es@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_32802| stream@@4)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 77476) 77676) anon45_Then_correct) (=> (= (ControlFlow 0 77476) 77662) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not $abort_flag@2) (= $t34@0 ($Mutation_50681 (|l#$Mutation_58573| $t33@1) (seq.++ (|p#$Mutation_58573| $t33@1) (seq.unit 0)) (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|v#$Mutation_58573| $t33@1))))) (and (= $t36@0 ($1_DiemId_DiemIdDomainEvent false inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 _$t1)) (= (ControlFlow 0 77482) 77476))) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|)))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 77690) 76194))) L7_correct)))
(let ((anon43_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 77742) 77690) anon44_Then_correct) (=> (= (ControlFlow 0 77742) 77482) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= (ControlFlow 0 77740) 77742)) anon43_Then$1_correct)))
(let ((anon43_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (=> (and (and (= $t33@0 ($Mutation_58573 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (= $t33@1 $t33@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 77367) 77690) anon44_Then_correct) (=> (= (ControlFlow 0 77367) 77482) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (not $abort_flag@1) (= $t24@2 ($Mutation_58512 (|l#$Mutation_58512| $t24@1) (|p#$Mutation_58512| $t24@1) ($1_DiemId_DiemIdDomains (|v#$Mutation_38814| |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1|))))) (and (=> (= (ControlFlow 0 77345) (- 0 90012)) (let (($range_0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@39 $i_1))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2)) i@@39))) 63)))
 :qid |DiemIdbpl.3976:105|
 :skolemid |152|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i@@40 $i_1@@0))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2)) i@@40))) 63)))
 :qid |DiemIdbpl.3976:105|
 :skolemid |152|
))) (and (=> (= (ControlFlow 0 77345) (- 0 90060)) (let (($range_0@@1 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@41 $i_1@@1))
(let (($range_2 ($Range (+ i@@41 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((j@@7 $i_3))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2)) i@@41) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2)) j@@7)))))
 :qid |DiemIdbpl.3984:110|
 :skolemid |153|
)))))
 :qid |DiemIdbpl.3983:105|
 :skolemid |154|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((i@@42 $i_1@@2))
(let (($range_2@@0 ($Range (+ i@@42 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@0) (let ((j@@8 $i_3@@0))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2)) i@@42) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2)) j@@8)))))
 :qid |DiemIdbpl.3984:110|
 :skolemid |153|
)))))
 :qid |DiemIdbpl.3983:105|
 :skolemid |154|
))) (and (=> (= (ControlFlow 0 77345) (- 0 90145)) (let (($range_0@@3 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let (($elem (seq.nth $range_0@@3 $i_1@@3)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem)) 63)))
 :qid |DiemIdbpl.3991:86|
 :skolemid |155|
)))) (=> (let (($range_0@@4 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2))))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let (($elem@@0 (seq.nth $range_0@@4 $i_1@@4)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@0)) 63)))
 :qid |DiemIdbpl.3991:86|
 :skolemid |155|
))) (=> (and (= $1_DiemId_DiemIdDomains_$memory@0 ($Memory_57904 (|Store__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_58512| $t24@2)) true) (|Store__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_58512| $t24@2)) (|v#$Mutation_58512| $t24@2)))) (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 77345) 77740) anon43_Then_correct) (=> (= (ControlFlow 0 77345) 77367) anon43_Else_correct))))))))))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 77756) 76194))) L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| ($Mutation_38814 (|l#$Mutation_38814| $t31@0) (|p#$Mutation_38814| $t31@0) (seq.++ (|v#$Mutation_38814| $t31@0) (seq.unit inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)))) (and (=> (= (ControlFlow 0 77119) 77756) anon42_Then_correct) (=> (= (ControlFlow 0 77119) 77345) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (= $t31@0 ($Mutation_38814 (|l#$Mutation_58512| $t24@1) (seq.++ (|p#$Mutation_58512| $t24@1) (seq.unit 0)) (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1)))) (= (ControlFlow 0 77125) 77119)) |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|))))
(let ((anon41_Else_correct  (=> (not inline$$Not$0$dst@1) (and (=> (= (ControlFlow 0 77052) (- 0 89769)) (let (($range_0@@5 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i@@43 $i_1@@5))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1)) i@@43))) 63)))
 :qid |DiemIdbpl.3922:105|
 :skolemid |148|
)))) (=> (let (($range_0@@6 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i@@44 $i_1@@6))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1)) i@@44))) 63)))
 :qid |DiemIdbpl.3922:105|
 :skolemid |148|
))) (and (=> (= (ControlFlow 0 77052) (- 0 89817)) (let (($range_0@@7 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i@@45 $i_1@@7))
(let (($range_2@@1 ($Range (+ i@@45 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@1) (let ((j@@9 $i_3@@1))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1)) i@@45) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1)) j@@9)))))
 :qid |DiemIdbpl.3930:110|
 :skolemid |149|
)))))
 :qid |DiemIdbpl.3929:105|
 :skolemid |150|
)))) (=> (let (($range_0@@8 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@8) (let ((i@@46 $i_1@@8))
(let (($range_2@@2 ($Range (+ i@@46 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@2) (let ((j@@10 $i_3@@2))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1)) i@@46) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1)) j@@10)))))
 :qid |DiemIdbpl.3930:110|
 :skolemid |149|
)))))
 :qid |DiemIdbpl.3929:105|
 :skolemid |150|
))) (and (=> (= (ControlFlow 0 77052) (- 0 89902)) (let (($range_0@@9 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))
(forall (($i_1@@9 Int) ) (!  (=> (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@9))) (let (($elem@@1 (seq.nth $range_0@@9 $i_1@@9)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@1)) 63)))
 :qid |DiemIdbpl.3937:86|
 :skolemid |151|
)))) (=> (let (($range_0@@10 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))))
(forall (($i_1@@10 Int) ) (!  (=> (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@10))) (let (($elem@@2 (seq.nth $range_0@@10 $i_1@@10)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@2)) 63)))
 :qid |DiemIdbpl.3937:86|
 :skolemid |151|
))) (=> (= $t30 $t30) (=> (and (= $t17@0 $t30) (= (ControlFlow 0 77052) 76194)) L7_correct)))))))))))
(let ((anon40_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t30) (= $t30 7)) (and (= $t30 $t30) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 76858) 77125) anon41_Then_correct) (=> (= (ControlFlow 0 76858) 77052) anon41_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1|)) (= (ControlFlow 0 76818) 76858)) anon40_Else$1_correct)))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 76824) 76818)) inline$$Not$0$anon0_correct)))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 77770) 76194))) L7_correct)))
(let ((|inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (and (>= i@@47 0) (< i@@47 (seq.len $t26@0)))) (= (seq.nth $t26@0 i@@47) inline$$1_DiemId_create_diem_id_domain$0$$ret0@1))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (and (=> (= (ControlFlow 0 76774) 77770) anon40_Then_correct) (=> (= (ControlFlow 0 76774) 76824) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)) (and (= $t26@0 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1))) (= (ControlFlow 0 76780) 76774))) |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|)))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 77784) 76194))) L7_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$L3_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 inline$$1_DiemId_create_diem_id_domain$0$$t4@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@0)) (and (=> (= (ControlFlow 0 76674) 77784) anon39_Then_correct) (=> (= (ControlFlow 0 76674) 76780) anon39_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= (ControlFlow 0 76668) 76674))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 $abort_code@1) (= (ControlFlow 0 76706) 76674))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct  (=> (and inline$$Le$0$dst@1 (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 ($1_DiemId_DiemIdDomain _$t2))) (=> (and (and (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1))) (and (=> (= (ControlFlow 0 76692) 77784) anon39_Then_correct) (=> (= (ControlFlow 0 76692) 76780) anon39_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 7)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 76652) 76692) inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct) (=> (= (ControlFlow 0 76652) 76668) inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u8'$0$l@1| 63)) (= (ControlFlow 0 76616) 76652)) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 76622) 76616)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2)) (and (=> (= (ControlFlow 0 76556) 76706) inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct) (=> (= (ControlFlow 0 76556) 76622) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct)))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 76562) 76556)) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((anon38_Else_correct  (=> (and (and (not $abort_flag@0) (= |$temp_0'$1_DiemId_DiemIdDomains'@0| (|v#$Mutation_58512| $t24@1))) (and (= |$temp_0'$1_DiemId_DiemIdDomains'@0| |$temp_0'$1_DiemId_DiemIdDomains'@0|) (= (ControlFlow 0 76712) 76562))) inline$$1_DiemId_create_diem_id_domain$0$anon0_correct)))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t17@0 $abort_code@1) (= (ControlFlow 0 77798) 76194))) L7_correct)))
(let ((anon37_Then$1_correct  (=> (= $t24@1 $t24) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 77850) 77798) anon38_Then_correct) (=> (= (ControlFlow 0 77850) 76712) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= (ControlFlow 0 77848) 77850)) anon37_Then$1_correct)))
(let ((anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1) (=> (and (and (= $t24@0 ($Mutation_58512 ($Global _$t1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1))) (= $t24@1 $t24@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 76278) 77798) anon38_Then_correct) (=> (= (ControlFlow 0 76278) 76712) anon38_Else_correct))))))
(let ((anon36_Then_correct  (=> $t21@0 (and (=> (= (ControlFlow 0 76256) 77848) anon37_Then_correct) (=> (= (ControlFlow 0 76256) 76278) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t21@0) (= $t23 $t23)) (and (= $t17@0 $t23) (= (ControlFlow 0 76252) 76194))) L7_correct)))
(let ((anon35_Then_correct  (=> inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 (=> (and (= $t21@0 (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 5)) (and (= $t23 $t23) (= $t21@0 $t21@0))) (and (=> (= (ControlFlow 0 76236) 76256) anon36_Then_correct) (=> (= (ControlFlow 0 76236) 76252) anon36_Else_correct)))))))
(let ((anon35_Else_correct  (=> (and (and (not inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1) (= $t20 $t20)) (and (= $t17@0 $t20) (= (ControlFlow 0 75982) 76194))) L7_correct)))
(let ((anon34_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 5)) (and (= $t20 $t20) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1))) (and (=> (= (ControlFlow 0 75966) 76236) anon35_Then_correct) (=> (= (ControlFlow 0 75966) 75982) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> $t16 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t15)) (= 5 $t17)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t15)) 1)) (= 3 $t17))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17))) (= $t17 $t17)) (and (= $t17@0 $t17) (= (ControlFlow 0 77936) 76194))) L7_correct))))
(let ((anon34_Then_correct true))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1)) (and (=> (= (ControlFlow 0 75924) 77864) anon34_Then_correct) (=> (= (ControlFlow 0 75924) 75966) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not $t16) (= (ControlFlow 0 75930) 75924)) inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct)))
(let ((anon0$1_correct@@0  (=> (and (and (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr)) 0)) (= addr 173345816)))
 :qid |DiemIdbpl.3547:20|
 :skolemid |115|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53208| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@0)) 1)) (= addr@@0 186537453)))
 :qid |DiemIdbpl.3555:20|
 :skolemid |116|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53208| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) 186537453)) 1))))) (=> (and (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@1)) 2))))))
 :qid |DiemIdbpl.3563:20|
 :skolemid |117|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@2)) 2))))))
 :qid |DiemIdbpl.3567:20|
 :skolemid |118|
))) (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@3)) 2))))))
 :qid |DiemIdbpl.3571:20|
 :skolemid |119|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@4)) 2))))))
 :qid |DiemIdbpl.3575:20|
 :skolemid |120|
)))) (and (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@5)) 2)))))
 :qid |DiemIdbpl.3579:20|
 :skolemid |121|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@6)) 2)))))
 :qid |DiemIdbpl.3583:20|
 :skolemid |122|
))) (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@7)) 2)))))
 :qid |DiemIdbpl.3587:20|
 :skolemid |123|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53657| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@8)) 4))))
 :qid |DiemIdbpl.3591:20|
 :skolemid |124|
))))) (=> (and (and (and (and (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@9)) 3))))
 :qid |DiemIdbpl.3595:20|
 :skolemid |125|
)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@10)) 3))))
 :qid |DiemIdbpl.3599:20|
 :skolemid |126|
))) (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |DiemIdbpl.3603:20|
 :skolemid |127|
)) (let (($range_0@@11 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54633| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@11) (let ((i1 $i_1@@11))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54633| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54633| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13)))) i1)))) 3))))
 :qid |DiemIdbpl.3607:151|
 :skolemid |128|
))))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_55917| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DiemIdbpl.3612:20|
 :skolemid |129|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (= (|Select__T@[Int]Bool_| (|domain#$Memory_56772| $1_DiemAccount_DiemAccount_$memory) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@14)))
 :qid |DiemIdbpl.3616:20|
 :skolemid |130|
))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55541| $1_VASPDomain_VASPDomainManager_$memory) addr@@15)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@15)) 1))))
 :qid |DiemIdbpl.3620:20|
 :skolemid |131|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55640| $1_VASPDomain_VASPDomains_$memory) addr@@16)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@16)) 5))))
 :qid |DiemIdbpl.3624:20|
 :skolemid |132|
))))) (and (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_57302| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_57393| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@17)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@17)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@17)) 2)))))
 :qid |DiemIdbpl.3628:20|
 :skolemid |133|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (= (|Select__T@[Int]Bool_| (|domain#$Memory_56611| $1_DesignatedDealer_Dealer_$memory) addr@@18)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@18)) 2))))
 :qid |DiemIdbpl.3632:20|
 :skolemid |134|
))) (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55917| $1_DualAttestation_Credential_$memory) addr@@19)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@19)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@19)) 5)))))
 :qid |DiemIdbpl.3636:20|
 :skolemid |135|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54600| $1_SlidingNonce_SlidingNonce_$memory) addr@@20)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@20)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@20)) 1)))))
 :qid |DiemIdbpl.3640:20|
 :skolemid |136|
)))) (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@21)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@21)) 3))))
 :qid |DiemIdbpl.3644:20|
 :skolemid |137|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_53657| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@22)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@22)) 4))))
 :qid |DiemIdbpl.3648:20|
 :skolemid |138|
))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55737| $1_VASP_ParentVASP_$memory) addr@@23)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@23)) 5))))
 :qid |DiemIdbpl.3652:20|
 :skolemid |139|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55673| $1_VASP_ChildVASP_$memory) addr@@24)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@24)) 6))))
 :qid |DiemIdbpl.3656:20|
 :skolemid |140|
)))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemIdbpl.3668:20|
 :skolemid |141|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@1)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@1))
 :qid |DiemIdbpl.3672:20|
 :skolemid |142|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) $a_0@@2)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@2) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@48 $i_2))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2) i@@48))) 63)))
 :qid |DiemIdbpl.3677:136|
 :skolemid |143|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@49 $i_4))
(let (($range_5 ($Range (+ i@@49 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@11 $i_6))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2) i@@49) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2) j@@11)))))
 :qid |DiemIdbpl.3679:96|
 :skolemid |144|
)))))
 :qid |DiemIdbpl.3678:196|
 :skolemid |145|
)))) (let (($range_7 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem@@3 (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@3)) 63)))
 :qid |DiemIdbpl.3680:221|
 :skolemid |146|
))))))
 :qid |DiemIdbpl.3676:20|
 :skolemid |147|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) $a_0@@2))
)) (= $t11 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1)))))) (and (and (and (= $t12 (|$addr#$signer| _$t0)) (= $t13 (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (and (= $t14 ($1_DiemId_DiemIdDomainEvent false ($1_DiemId_DiemIdDomain _$t2) _$t1)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= $t15 (|$addr#$signer| _$t0)) (= $t16  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t15)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))))) (and (=> (= (ControlFlow 0 75837) 77936) anon33_Then_correct) (=> (= (ControlFlow 0 75837) 75930) anon33_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_32802| stream@@5) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@5) v@@33) 0)
 :qid |DiemIdbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemIdbpl.2192:13|
 :skolemid |59|
))) (= (ControlFlow 0 74757) 75837)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_58512| $t9)) 0) (= (seq.len (|p#$Mutation_58512| $t24)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_38814| $t31)) 0) (= (seq.len (|p#$Mutation_58573| $t33)) 0)) (and (= (seq.len (|p#$Mutation_50681| $t34)) 0) (= (ControlFlow 0 74767) 74757))) inline$$InitEventStore$0$anon0_correct@@0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 87797) 74767) anon0_correct@@0)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
