(set-option :print-success false)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_240002 0)) ((($Memory_240002 (|domain#$Memory_240002| |T@[Int]Bool|) (|contents#$Memory_240002| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_265226 0)) ((($Memory_265226 (|domain#$Memory_265226| |T@[Int]Bool|) (|contents#$Memory_265226| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_264381 0)) ((($Memory_264381 (|domain#$Memory_264381| |T@[Int]Bool|) (|contents#$Memory_264381| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_247474 0)) ((($Memory_247474 (|domain#$Memory_247474| |T@[Int]Bool|) (|contents#$Memory_247474| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_264138 0)) ((($Memory_264138 (|domain#$Memory_264138| |T@[Int]Bool|) (|contents#$Memory_264138| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_264067 0)) ((($Memory_264067 (|domain#$Memory_264067| |T@[Int]Bool|) (|contents#$Memory_264067| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_264774 0)) ((($Memory_264774 (|domain#$Memory_264774| |T@[Int]Bool|) (|contents#$Memory_264774| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_247441 0)) ((($Memory_247441 (|domain#$Memory_247441| |T@[Int]Bool|) (|contents#$Memory_247441| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_248198 0)) ((($Memory_248198 (|domain#$Memory_248198| |T@[Int]Bool|) (|contents#$Memory_248198| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_265029 0)) ((($Memory_265029 (|domain#$Memory_265029| |T@[Int]Bool|) (|contents#$Memory_265029| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_265129 0)) ((($Memory_265129 (|domain#$Memory_265129| |T@[Int]Bool|) (|contents#$Memory_265129| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_264555 0)) ((($Memory_264555 (|domain#$Memory_264555| |T@[Int]Bool|) (|contents#$Memory_264555| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_264640 0)) ((($Memory_264640 (|domain#$Memory_264640| |T@[Int]Bool|) (|contents#$Memory_264640| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_263795 0)) ((($Memory_263795 (|domain#$Memory_263795| |T@[Int]Bool|) (|contents#$Memory_263795| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_263620 0)) ((($Memory_263620 (|domain#$Memory_263620| |T@[Int]Bool|) (|contents#$Memory_263620| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_264310 0)) ((($Memory_264310 (|domain#$Memory_264310| |T@[Int]Bool|) (|contents#$Memory_264310| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_256377 0)) ((($Memory_256377 (|domain#$Memory_256377| |T@[Int]Bool|) (|contents#$Memory_256377| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_256313 0)) ((($Memory_256313 (|domain#$Memory_256313| |T@[Int]Bool|) (|contents#$Memory_256313| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_256249 0)) ((($Memory_256249 (|domain#$Memory_256249| |T@[Int]Bool|) (|contents#$Memory_256249| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_256870 0)) ((($Memory_256870 (|domain#$Memory_256870| |T@[Int]Bool|) (|contents#$Memory_256870| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_256783 0)) ((($Memory_256783 (|domain#$Memory_256783| |T@[Int]Bool|) (|contents#$Memory_256783| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_256696 0)) ((($Memory_256696 (|domain#$Memory_256696| |T@[Int]Bool|) (|contents#$Memory_256696| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_261945 0)) ((($Memory_261945 (|domain#$Memory_261945| |T@[Int]Bool|) (|contents#$Memory_261945| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_262370 0)) ((($Memory_262370 (|domain#$Memory_262370| |T@[Int]Bool|) (|contents#$Memory_262370| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_248373 0)) ((($Memory_248373 (|domain#$Memory_248373| |T@[Int]Bool|) (|contents#$Memory_248373| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_261854 0)) ((($Memory_261854 (|domain#$Memory_261854| |T@[Int]Bool|) (|contents#$Memory_261854| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_263691 0)) ((($Memory_263691 (|domain#$Memory_263691| |T@[Int]Bool|) (|contents#$Memory_263691| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_262271 0)) ((($Memory_262271 (|domain#$Memory_262271| |T@[Int]Bool|) (|contents#$Memory_262271| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_248313 0)) ((($Memory_248313 (|domain#$Memory_248313| |T@[Int]Bool|) (|contents#$Memory_248313| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_261763 0)) ((($Memory_261763 (|domain#$Memory_261763| |T@[Int]Bool|) (|contents#$Memory_261763| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_263866 0)) ((($Memory_263866 (|domain#$Memory_263866| |T@[Int]Bool|) (|contents#$Memory_263866| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_262172 0)) ((($Memory_262172 (|domain#$Memory_262172| |T@[Int]Bool|) (|contents#$Memory_262172| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_255740 0)) ((($Memory_255740 (|domain#$Memory_255740| |T@[Int]Bool|) (|contents#$Memory_255740| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_255621 0)) ((($Memory_255621 (|domain#$Memory_255621| |T@[Int]Bool|) (|contents#$Memory_255621| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_255502 0)) ((($Memory_255502 (|domain#$Memory_255502| |T@[Int]Bool|) (|contents#$Memory_255502| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_252471 0)) ((($Memory_252471 (|domain#$Memory_252471| |T@[Int]Bool|) (|contents#$Memory_252471| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_252384 0)) ((($Memory_252384 (|domain#$Memory_252384| |T@[Int]Bool|) (|contents#$Memory_252384| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_252736 0)) ((($Memory_252736 (|domain#$Memory_252736| |T@[Int]Bool|) (|contents#$Memory_252736| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_251423 0)) ((($Memory_251423 (|domain#$Memory_251423| |T@[Int]Bool|) (|contents#$Memory_251423| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_251489 0)) ((($Memory_251489 (|domain#$Memory_251489| |T@[Int]Bool|) (|contents#$Memory_251489| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_251751 0)) ((($Memory_251751 (|domain#$Memory_251751| |T@[Int]Bool|) (|contents#$Memory_251751| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_251687 0)) ((($Memory_251687 (|domain#$Memory_251687| |T@[Int]Bool|) (|contents#$Memory_251687| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_251623 0)) ((($Memory_251623 (|domain#$Memory_251623| |T@[Int]Bool|) (|contents#$Memory_251623| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_251342 0)) ((($Memory_251342 (|domain#$Memory_251342| |T@[Int]Bool|) (|contents#$Memory_251342| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_251228 0)) ((($Memory_251228 (|domain#$Memory_251228| |T@[Int]Bool|) (|contents#$Memory_251228| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_264455 0)) ((($Memory_264455 (|domain#$Memory_264455| |T@[Int]Bool|) (|contents#$Memory_264455| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_251261 0)) ((($Memory_251261 (|domain#$Memory_251261| |T@[Int]Bool|) (|contents#$Memory_251261| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_247408 0)) ((($Memory_247408 (|domain#$Memory_247408| |T@[Int]Bool|) (|contents#$Memory_247408| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_247861 0)) ((($Memory_247861 (|domain#$Memory_247861| |T@[Int]Bool|) (|contents#$Memory_247861| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_247001 0)) ((($Memory_247001 (|domain#$Memory_247001| |T@[Int]Bool|) (|contents#$Memory_247001| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_246820 0)) ((($Memory_246820 (|domain#$Memory_246820| |T@[Int]Bool|) (|contents#$Memory_246820| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| (Seq Int)) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| (Seq Int)) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| (Seq Int)) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_215979 0)) (((Multiset_215979 (|v#Multiset_215979| |T@[$EventRep]Int|) (|l#Multiset_215979| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_215979| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_215979|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_487833 0)) ((($Mutation_487833 (|l#$Mutation_487833| T@$Location) (|p#$Mutation_487833| (Seq Int)) (|v#$Mutation_487833| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_160668 0)) ((($Mutation_160668 (|l#$Mutation_160668| T@$Location) (|p#$Mutation_160668| (Seq Int)) (|v#$Mutation_160668| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_312361 0)) ((($Mutation_312361 (|l#$Mutation_312361| T@$Location) (|p#$Mutation_312361| (Seq Int)) (|v#$Mutation_312361| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_312314 0)) ((($Mutation_312314 (|l#$Mutation_312314| T@$Location) (|p#$Mutation_312314| (Seq Int)) (|v#$Mutation_312314| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_310242 0)) ((($Mutation_310242 (|l#$Mutation_310242| T@$Location) (|p#$Mutation_310242| (Seq Int)) (|v#$Mutation_310242| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_310195 0)) ((($Mutation_310195 (|l#$Mutation_310195| T@$Location) (|p#$Mutation_310195| (Seq Int)) (|v#$Mutation_310195| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_308078 0)) ((($Mutation_308078 (|l#$Mutation_308078| T@$Location) (|p#$Mutation_308078| (Seq Int)) (|v#$Mutation_308078| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_308031 0)) ((($Mutation_308031 (|l#$Mutation_308031| T@$Location) (|p#$Mutation_308031| (Seq Int)) (|v#$Mutation_308031| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_294703 0)) ((($Mutation_294703 (|l#$Mutation_294703| T@$Location) (|p#$Mutation_294703| (Seq Int)) (|v#$Mutation_294703| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_292575 0)) ((($Mutation_292575 (|l#$Mutation_292575| T@$Location) (|p#$Mutation_292575| (Seq Int)) (|v#$Mutation_292575| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_290467 0)) ((($Mutation_290467 (|l#$Mutation_290467| T@$Location) (|p#$Mutation_290467| (Seq Int)) (|v#$Mutation_290467| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_270395 0)) ((($Mutation_270395 (|l#$Mutation_270395| T@$Location) (|p#$Mutation_270395| (Seq Int)) (|v#$Mutation_270395| |T@$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_254223 0)) ((($Mutation_254223 (|l#$Mutation_254223| T@$Location) (|p#$Mutation_254223| (Seq Int)) (|v#$Mutation_254223| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_240633 0)) ((($Mutation_240633 (|l#$Mutation_240633| T@$Location) (|p#$Mutation_240633| (Seq Int)) (|v#$Mutation_240633| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13443 0)) ((($Mutation_13443 (|l#$Mutation_13443| T@$Location) (|p#$Mutation_13443| (Seq Int)) (|v#$Mutation_13443| Int) ) ) ))
(declare-datatypes ((T@$Mutation_236009 0)) ((($Mutation_236009 (|l#$Mutation_236009| T@$Location) (|p#$Mutation_236009| (Seq Int)) (|v#$Mutation_236009| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_235263 0)) ((($Mutation_235263 (|l#$Mutation_235263| T@$Location) (|p#$Mutation_235263| (Seq Int)) (|v#$Mutation_235263| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_233859 0)) ((($Mutation_233859 (|l#$Mutation_233859| T@$Location) (|p#$Mutation_233859| (Seq Int)) (|v#$Mutation_233859| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_233113 0)) ((($Mutation_233113 (|l#$Mutation_233113| T@$Location) (|p#$Mutation_233113| (Seq Int)) (|v#$Mutation_233113| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_231709 0)) ((($Mutation_231709 (|l#$Mutation_231709| T@$Location) (|p#$Mutation_231709| (Seq Int)) (|v#$Mutation_231709| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_230963 0)) ((($Mutation_230963 (|l#$Mutation_230963| T@$Location) (|p#$Mutation_230963| (Seq Int)) (|v#$Mutation_230963| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_229559 0)) ((($Mutation_229559 (|l#$Mutation_229559| T@$Location) (|p#$Mutation_229559| (Seq Int)) (|v#$Mutation_229559| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_228813 0)) ((($Mutation_228813 (|l#$Mutation_228813| T@$Location) (|p#$Mutation_228813| (Seq Int)) (|v#$Mutation_228813| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_227409 0)) ((($Mutation_227409 (|l#$Mutation_227409| T@$Location) (|p#$Mutation_227409| (Seq Int)) (|v#$Mutation_227409| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_226663 0)) ((($Mutation_226663 (|l#$Mutation_226663| T@$Location) (|p#$Mutation_226663| (Seq Int)) (|v#$Mutation_226663| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_225259 0)) ((($Mutation_225259 (|l#$Mutation_225259| T@$Location) (|p#$Mutation_225259| (Seq Int)) (|v#$Mutation_225259| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_224513 0)) ((($Mutation_224513 (|l#$Mutation_224513| T@$Location) (|p#$Mutation_224513| (Seq Int)) (|v#$Mutation_224513| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_223109 0)) ((($Mutation_223109 (|l#$Mutation_223109| T@$Location) (|p#$Mutation_223109| (Seq Int)) (|v#$Mutation_223109| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_222363 0)) ((($Mutation_222363 (|l#$Mutation_222363| T@$Location) (|p#$Mutation_222363| (Seq Int)) (|v#$Mutation_222363| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_220959 0)) ((($Mutation_220959 (|l#$Mutation_220959| T@$Location) (|p#$Mutation_220959| (Seq Int)) (|v#$Mutation_220959| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_220213 0)) ((($Mutation_220213 (|l#$Mutation_220213| T@$Location) (|p#$Mutation_220213| (Seq Int)) (|v#$Mutation_220213| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_218771 0)) ((($Mutation_218771 (|l#$Mutation_218771| T@$Location) (|p#$Mutation_218771| (Seq Int)) (|v#$Mutation_218771| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_218025 0)) ((($Mutation_218025 (|l#$Mutation_218025| T@$Location) (|p#$Mutation_218025| (Seq Int)) (|v#$Mutation_218025| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| ((Seq T@$1_DiemSystem_ValidatorInfo)) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| ((Seq T@$1_DiemSystem_ValidatorInfo) T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|) |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| ((Seq T@$1_VASPDomain_VASPDomain)) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| ((Seq T@$1_VASPDomain_VASPDomain) T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| ((Seq T@$1_ValidatorConfig_Config)) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| ((Seq T@$1_ValidatorConfig_Config) T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsValid'vec'vec'u8'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u8''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_215979_| (|T@[$1_Event_EventHandle]Multiset_215979| T@$1_Event_EventHandle) T@Multiset_215979)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (T@$1_Event_EventHandle) Bool)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'#0''| (|T@$1_Diem_BurnCapability'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'#0''| (|T@$1_Diem_CurrencyInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| (|T@$1_Diem_MintCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'#0''| (|T@$1_Diem_MintCapability'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'#0''| (|T@$1_Diem_Preburn'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| (|T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| (|T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'#0''| (|T@$1_Diem_PreburnQueue'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AccountOperationsCapability'| (T@$1_DiemAccount_AccountOperationsCapability) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AdminTransactionEvent'| (T@$1_DiemAccount_AdminTransactionEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_13296 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_195755 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_194376 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_194573 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_194770 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_195952 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_195361 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_195164 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_194967 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_195558 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_215979| |T@[$1_Event_EventHandle]Multiset_215979|) |T@[$1_Event_EventHandle]Multiset_215979|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Diembpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Diembpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Diembpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Diembpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Diembpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Diembpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Diembpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Diembpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@4 i@@0)))
 :qid |Diembpl.595:13|
 :skolemid |15|
))))
 :qid |Diembpl.593:62|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@1 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Diembpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Diembpl.608:17|
 :skolemid |18|
)))))
 :qid |Diembpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@6 i@@3)))
 :qid |Diembpl.775:13|
 :skolemid |20|
))))
 :qid |Diembpl.773:59|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Diembpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Diembpl.788:17|
 :skolemid |23|
)))))
 :qid |Diembpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@8 i@@6)))
 :qid |Diembpl.955:13|
 :skolemid |25|
))))
 :qid |Diembpl.953:53|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |Diembpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |Diembpl.968:17|
 :skolemid |28|
)))))
 :qid |Diembpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@10 i@@9)))
 :qid |Diembpl.1135:13|
 :skolemid |30|
))))
 :qid |Diembpl.1133:57|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10))
)))
(assert (forall ((v@@11 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@2 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@10 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |Diembpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |Diembpl.1148:17|
 :skolemid |33|
)))))
 :qid |Diembpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |Diembpl.1315:13|
 :skolemid |35|
))))
 :qid |Diembpl.1313:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |Diembpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |Diembpl.1328:17|
 :skolemid |38|
)))))
 :qid |Diembpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |Diembpl.1495:13|
 :skolemid |40|
))))
 :qid |Diembpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |Diembpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |Diembpl.1508:17|
 :skolemid |43|
)))))
 :qid |Diembpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@16 i@@18)))
 :qid |Diembpl.1675:13|
 :skolemid |45|
))))
 :qid |Diembpl.1673:50|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_VASPDomain_VASPDomain)) (e@@5 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@19 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |Diembpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |Diembpl.1688:17|
 :skolemid |48|
)))))
 :qid |Diembpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |Diembpl.1855:13|
 :skolemid |50|
))))
 :qid |Diembpl.1853:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |Diembpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |Diembpl.1868:17|
 :skolemid |53|
)))))
 :qid |Diembpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |Diembpl.2035:13|
 :skolemid |55|
))))
 :qid |Diembpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |Diembpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |Diembpl.2048:17|
 :skolemid |58|
)))))
 :qid |Diembpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |Diembpl.2215:13|
 :skolemid |60|
))))
 :qid |Diembpl.2213:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |Diembpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |Diembpl.2228:17|
 :skolemid |63|
)))))
 :qid |Diembpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |Diembpl.2395:13|
 :skolemid |65|
))))
 :qid |Diembpl.2393:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |Diembpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |Diembpl.2408:17|
 :skolemid |68|
)))))
 :qid |Diembpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Diembpl.2581:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Diembpl.2597:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Diembpl.2668:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Diembpl.2671:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_215979_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_215979| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_215979| stream) v@@26) 0)
 :qid |Diembpl.134:13|
 :skolemid |2|
))))
 :qid |Diembpl.2732:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Diembpl.2773:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |Diembpl.2779:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Diembpl.2829:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |Diembpl.2835:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Diembpl.2885:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |Diembpl.2891:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Diembpl.2941:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |Diembpl.2947:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Diembpl.2997:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |Diembpl.3003:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Diembpl.3053:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |Diembpl.3059:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Diembpl.3109:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |Diembpl.3115:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Diembpl.3165:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |Diembpl.3171:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Diembpl.3221:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |Diembpl.3227:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |Diembpl.3277:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |Diembpl.3283:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |Diembpl.3333:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |Diembpl.3339:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |Diembpl.3389:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |Diembpl.3395:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |Diembpl.3445:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |Diembpl.3451:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |Diembpl.3501:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |Diembpl.3507:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |Diembpl.3557:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |Diembpl.3563:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |Diembpl.3613:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |Diembpl.3619:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |Diembpl.3669:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |Diembpl.3675:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |Diembpl.3754:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |Diembpl.3823:36|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |Diembpl.4221:71|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |Diembpl.4260:46|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |Diembpl.4273:64|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |Diembpl.4286:75|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |Diembpl.4299:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |Diembpl.4328:55|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |Diembpl.4350:46|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |Diembpl.4368:49|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |Diembpl.4428:71|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |Diembpl.4442:91|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |Diembpl.4456:113|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |Diembpl.4470:75|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |Diembpl.4484:73|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |Diembpl.4504:48|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |Diembpl.4520:57|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |Diembpl.4534:83|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |Diembpl.4548:103|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@18)))
 :qid |Diembpl.4562:48|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@19)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@19))))
 :qid |Diembpl.4583:45|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19))
)))
(assert (forall ((s@@20 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@20)))
 :qid |Diembpl.4597:51|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@21)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@21))))
 :qid |Diembpl.4620:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21))
)))
(assert (forall ((s@@22 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@22)))
 :qid |Diembpl.4646:49|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22))
)))
(assert (forall ((s@@23 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@23)))
 :qid |Diembpl.4696:65|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@24)))
 :qid |Diembpl.5313:45|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@25)))
 :qid |Diembpl.5326:45|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@26) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@26)))
 :qid |Diembpl.5339:37|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@27) true)
 :qid |Diembpl.5352:55|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@28) true)
 :qid |Diembpl.5366:55|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@29) true)
 :qid |Diembpl.5380:47|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@30))))
 :qid |Diembpl.5400:38|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@31))))
 :qid |Diembpl.5421:44|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@32)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))))
 :qid |Diembpl.5472:53|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))))
 :qid |Diembpl.5534:53|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@34))))
 :qid |Diembpl.5596:45|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |Diembpl.5622:55|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |Diembpl.5636:55|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@37) true)
 :qid |Diembpl.5650:47|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |Diembpl.5667:38|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |Diembpl.5681:48|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |Diembpl.5695:48|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@41) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@41)))
 :qid |Diembpl.5709:40|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |Diembpl.5729:41|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@43)))
 :qid |Diembpl.5744:53|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@44)))
 :qid |Diembpl.5758:53|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@45)))
 :qid |Diembpl.5772:45|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@46))))
 :qid |Diembpl.5789:60|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@47)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@47)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@47))))
 :qid |Diembpl.5806:60|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@48))))
 :qid |Diembpl.5823:52|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@48))
)))
(assert (forall ((s@@49 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@49)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@49)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@49))))
 :qid |Diembpl.5840:57|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@49))
)))
(assert (forall ((s@@50 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@50) true)
 :qid |Diembpl.56705:68|
 :skolemid |2284|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@51)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@51)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@51))))
 :qid |Diembpl.56727:66|
 :skolemid |2285|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@52)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@52)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@52))))
 :qid |Diembpl.56753:66|
 :skolemid |2286|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@53) true)
 :qid |Diembpl.56770:31|
 :skolemid |2287|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@54) true)
 :qid |Diembpl.56788:31|
 :skolemid |2288|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@55)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@55)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@55))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@55))))
 :qid |Diembpl.56807:35|
 :skolemid |2289|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@56)))
 :qid |Diembpl.56823:45|
 :skolemid |2290|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@57))))
 :qid |Diembpl.56842:50|
 :skolemid |2291|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@58)))
 :qid |Diembpl.56857:52|
 :skolemid |2292|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@59) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@59)))
 :qid |Diembpl.56871:46|
 :skolemid |2293|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@60) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@60)))
 :qid |Diembpl.56895:38|
 :skolemid |2294|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@61) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@61)))
 :qid |Diembpl.56909:39|
 :skolemid |2295|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@61))
)))
(assert (forall ((s@@62 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62))))
 :qid |Diembpl.56936:65|
 :skolemid |2296|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@63))))
 :qid |Diembpl.56969:60|
 :skolemid |2297|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64))))
 :qid |Diembpl.56986:66|
 :skolemid |2298|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@65)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@65))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@65))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@65))))
 :qid |Diembpl.57015:50|
 :skolemid |2299|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@66) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@66)))
 :qid |Diembpl.57034:45|
 :skolemid |2300|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@67)) true))
 :qid |Diembpl.57051:87|
 :skolemid |2301|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@68)))
 :qid |Diembpl.57065:47|
 :skolemid |2302|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@69)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@69))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@69))))
 :qid |Diembpl.57085:58|
 :skolemid |2303|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@70) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@70)))
 :qid |Diembpl.57100:39|
 :skolemid |2304|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@71))))
 :qid |Diembpl.57122:58|
 :skolemid |2305|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72))))
 :qid |Diembpl.57139:58|
 :skolemid |2306|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73) true)
 :qid |Diembpl.57154:51|
 :skolemid |2307|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74))))
 :qid |Diembpl.57171:60|
 :skolemid |2308|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@75)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@75))))
 :qid |Diembpl.57205:47|
 :skolemid |2309|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@76))))
 :qid |Diembpl.57227:63|
 :skolemid |2310|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@77)))
 :qid |Diembpl.57242:57|
 :skolemid |2311|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@78)))
 :qid |Diembpl.57255:55|
 :skolemid |2312|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78))
)))
(assert (forall ((s@@79 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@79)))
 :qid |Diembpl.57269:55|
 :skolemid |2313|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@80)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@80))))
 :qid |Diembpl.57286:54|
 :skolemid |2314|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@81) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@81)))
 :qid |Diembpl.57300:55|
 :skolemid |2315|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@82) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@82)))
 :qid |Diembpl.57314:57|
 :skolemid |2316|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@83))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@83))))
 :qid |Diembpl.57336:56|
 :skolemid |2317|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@84)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@84)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@84))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@84))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@84))))
 :qid |Diembpl.57361:52|
 :skolemid |2318|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@85) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@85)))
 :qid |Diembpl.57377:54|
 :skolemid |2319|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@86)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@86)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@86))))
 :qid |Diembpl.57398:47|
 :skolemid |2320|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@87)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@87))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@87))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@87))))
 :qid |Diembpl.57422:47|
 :skolemid |2321|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@88)))
 :qid |Diembpl.57438:49|
 :skolemid |2322|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@89)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@89))))
 :qid |Diembpl.57481:49|
 :skolemid |2323|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@90)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@90))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@90))))
 :qid |Diembpl.57510:48|
 :skolemid |2324|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@91)))
 :qid |Diembpl.57525:47|
 :skolemid |2325|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13296 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13296 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_195755 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_195755 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_194376 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_194376 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_194573 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_194573 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_194770 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_194770 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_195952 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_195952 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_195361 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_195361 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_195164 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_195164 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_194967 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_194967 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_195558 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |Diembpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |Diembpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_195558 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |Diembpl.250:54|
 :skolemid |2326|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_215979|) (|l#1| |T@[$1_Event_EventHandle]Multiset_215979|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_215979_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_215979| (|Select__T@[$1_Event_EventHandle]Multiset_215979_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_215979| (|Select__T@[$1_Event_EventHandle]Multiset_215979_| |l#1| handle@@0))))
(Multiset_215979 (|lambda#3| (|v#Multiset_215979| (|Select__T@[$1_Event_EventHandle]Multiset_215979_| |l#0@@0| handle@@0)) (|v#Multiset_215979| (|Select__T@[$1_Event_EventHandle]Multiset_215979_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Diembpl.2742:13|
 :skolemid |2327|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_215979_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |Diembpl.129:29|
 :skolemid |2328|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_247001)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_247001)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_247861)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_247408)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_247441)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_248198)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_247474)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_248313)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_248373)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_247001)
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
; Valid
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_246820)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $t1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_251342)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_252471)
(declare-fun $t2 () Int)
(declare-fun $t4@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t5@@0 () Bool)
(declare-fun $t4@@0 () Int)
(declare-fun $t3 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| () T@$Memory_251342)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| () T@$Memory_252471)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_251489)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t4@1 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t10@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t9@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t4@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t6@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t5@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t3@0 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_252471)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_251342)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t8@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_252471)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_252471)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_251342)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_251342)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1| () (Seq (Seq Int)))
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t1@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t2@0 () Int)
(declare-fun $t6 () Int)
(declare-fun $t7 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_251228)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_251261)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_252736)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_255502)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_263620)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_263691)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_255621)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_263795)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_263866)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_251623)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_264067)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_264138)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_264310)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_264381)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_264455)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_264555)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_264640)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_264774)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_265029)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_265129)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_265226)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_251687)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_251751)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
; Valid
(declare-fun _$t0@@1 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t1@0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_255740)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_256377)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_256870)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_262370)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_261945)
; Valid
(declare-fun $t1@0@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t0 () Bool)
(declare-fun $t1@@0 () Int)
(declare-fun $t4@0@@0 () (Seq Int))
(declare-fun $t3@1 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t3@@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t3@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $abort_code@0@@1 () Int)
; Valid
(declare-fun $t1@0@@1 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t0@@0 () Bool)
(declare-fun $t1@@1 () Int)
(declare-fun $t4@0@@1 () (Seq Int))
(declare-fun $t3@1@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_256249)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_256696)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_262172)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_261763)
(declare-fun $t3@@1 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t3@0@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $abort_code@0@@2 () Int)
; Valid
(declare-fun $t1@0@@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t0@@1 () Bool)
(declare-fun $t1@@2 () Int)
(declare-fun $t4@0@@2 () (Seq Int))
(declare-fun $t3@1@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_256313)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_256783)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_262271)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_261854)
(declare-fun $t3@@2 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t3@0@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $abort_code@0@@3 () Int)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t25@2 () T@$Mutation_270395)
(declare-fun $t25@1 () T@$Mutation_270395)
(declare-fun |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$m'@1| () T@$Mutation_224513)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_262370)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun $t33 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t10 () Int)
(declare-fun _$t1@@0 () |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun $t12 () Int)
(declare-fun $t11 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t26@0 () T@$Mutation_224513)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t32 () Int)
(declare-fun |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$l@1| () Int)
(declare-fun $t27@0 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0| () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t25 () T@$Mutation_270395)
(declare-fun $t13 () Int)
(declare-fun $t25@0 () T@$Mutation_270395)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t24 () Int)
(declare-fun |inline$$1_Diem_value'#0'$0$$t1@1| () Int)
(declare-fun $t19@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t14@0 () Bool)
(declare-fun $t18@0 () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t16 () Int)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t9@@0 () T@$Mutation_224513)
(declare-fun $t26 () T@$Mutation_224513)
; Valid
(declare-fun $t6@@0 () Bool)
(declare-fun $t5@@1 () Int)
(declare-fun |inline$$1_Diem_value'#0'$0$$t1@1@@0| () Int)
(declare-fun $t4@@1 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t0@@3 () |T@$1_Diem_Diem'#0'|)
; Valid
(declare-fun $t6@@1 () Bool)
(declare-fun $t5@@2 () Int)
(declare-fun |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| () Int)
(declare-fun $t4@@2 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t0@@4 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
; Valid
(declare-fun $t6@@2 () Bool)
(declare-fun $t5@@3 () Int)
(declare-fun |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1| () Int)
(declare-fun $t4@@3 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t0@@5 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
; Valid
(declare-fun $t2@@0 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t0@@6 () Int)
(declare-fun $t6@@3 () Int)
(declare-fun $t8 () Bool)
(declare-fun $t4@@4 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t5@@4 () Bool)
(declare-fun $t7@@0 () Int)
(declare-fun $t3@@3 () |T@$1_Diem_CurrencyInfo'#0'|)
(push 1)
(set-info :boogie-vc-id $1_Diem_approx_xdx_for_value$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 808629) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 543098) (- 0 809285)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 543098) (- 0 809301)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t6@@3)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t6@@3))))))))
(let ((anon7_Then_correct@@2  (=> $t8 (=> (and (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 543038) 543098))) L2_correct@@3))))
(let ((anon6_Then_correct@@2  (=> $t5@@4 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 543124) 543098))) L2_correct@@3))))
(let ((anon7_Else_correct@@2  (=> (and (and (not $t8) (|$IsValid'u64'| $t7@@0)) (and (= $t7@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 2) (div _$t0@@6 2) (+ 18446744073709551615 1))))) (= $t7@@0 $t7@@0))) (and (=> (= (ControlFlow 0 543008) (- 0 808993)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 543008) (- 0 809003)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t2@@0) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (and (=> (= (ControlFlow 0 543008) (- 0 809017)) (= $t7@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))))) (=> (= $t7@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t0@@6 2) (+ 18446744073709551615 1))))) (and (=> (= (ControlFlow 0 543008) (- 0 809029)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 543008) (- 0 809050)) (forall ((addr@@170 Int) ) (!  (=> (|$IsValid'address'| addr@@170) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@170)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@170))))
 :qid |Diembpl.8351:15|
 :skolemid |316|
))) (=> (forall ((addr@@171 Int) ) (!  (=> (|$IsValid'address'| addr@@171) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@171)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@171))))
 :qid |Diembpl.8351:15|
 :skolemid |316|
)) (and (=> (= (ControlFlow 0 543008) (- 0 809079)) (forall ((addr@@172 Int) ) (!  (=> (|$IsValid'address'| addr@@172) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@172) (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@172)))
 :qid |Diembpl.8356:15|
 :skolemid |317|
))) (=> (forall ((addr@@173 Int) ) (!  (=> (|$IsValid'address'| addr@@173) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@173) (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr@@173)))
 :qid |Diembpl.8356:15|
 :skolemid |317|
)) (and (=> (= (ControlFlow 0 543008) (- 0 809104)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 543008) (- 0 809125)) (forall ((addr@@174 Int) ) (!  (=> (|$IsValid'address'| addr@@174) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@174)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@174))))
 :qid |Diembpl.8366:15|
 :skolemid |318|
))) (=> (forall ((addr@@175 Int) ) (!  (=> (|$IsValid'address'| addr@@175) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@175)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@175))))
 :qid |Diembpl.8366:15|
 :skolemid |318|
)) (and (=> (= (ControlFlow 0 543008) (- 0 809154)) (forall ((addr@@176 Int) ) (!  (=> (|$IsValid'address'| addr@@176) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@176) (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@176)))
 :qid |Diembpl.8371:15|
 :skolemid |319|
))) (=> (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@177) (|Select__T@[Int]Bool_| (|domain#$Memory_256870| |$1_Diem_BurnCapability'#0'_$memory|) addr@@177)))
 :qid |Diembpl.8371:15|
 :skolemid |319|
)) (and (=> (= (ControlFlow 0 543008) (- 0 809179)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 543008) (- 0 809200)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 543008) (- 0 809221)) (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_262370| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@178) (|Select__T@[Int]Bool_| (|domain#$Memory_261945| |$1_Diem_Preburn'#0'_$memory|) addr@@178))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_262370| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@178))))
 :qid |Diembpl.8386:15|
 :skolemid |320|
))) (=> (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_262370| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@179) (|Select__T@[Int]Bool_| (|domain#$Memory_261945| |$1_Diem_Preburn'#0'_$memory|) addr@@179))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_262370| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@179))))
 :qid |Diembpl.8386:15|
 :skolemid |320|
)) (=> (= (ControlFlow 0 543008) (- 0 809257)) (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262370| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@180) (|Select__T@[Int]Bool_| (|domain#$Memory_262370| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@180)))
 :qid |Diembpl.8391:15|
 :skolemid |321|
))))))))))))))))))))))))))))))
(let ((anon6_Else_correct@@2  (=> (not $t5@@4) (=> (and (and (|$IsValid'$1_FixedPoint32_FixedPoint32'| $t4@@4) (= $t4@@4 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t3@@3))) (and (= $t4@@4 $t4@@4) (= $t8 (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 1) _$t0@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t4@@4) 2) (div _$t0@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 542684) 543038) anon7_Then_correct@@2) (=> (= (ControlFlow 0 542684) 543008) anon7_Else_correct@@2))))))
(let ((anon0$1_correct@@9  (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@5 Int) (mint_cap_owner2@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@5) (=> (|$IsValid'address'| mint_cap_owner2@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@5)) (= mint_cap_owner1@@5 mint_cap_owner2@@5))))
 :qid |Diembpl.8207:88|
 :skolemid |312|
))) (=> (and (and (and (forall ((addr3@@5 Int) ) (!  (=> (|$IsValid'address'| addr3@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_256377| |$1_Diem_MintCapability'#0'_$memory|) addr3@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |Diembpl.8211:20|
 :skolemid |313|
)) (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_261945| |$1_Diem_Preburn'#0'_$memory|) addr@@181) (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diembpl.8215:20|
 :skolemid |314|
))) (and (|$IsValid'u64'| _$t0@@6) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@11) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@11)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@11) 10000000000))))
 :qid |Diembpl.8222:20|
 :skolemid |315|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@11))
)))) (and (and (= $t2@@0 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= _$t0@@6 _$t0@@6)) (and (= $t3@@3 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t5@@4  (not (|Select__T@[Int]Bool_| (|domain#$Memory_255740| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 542644) 543124) anon6_Then_correct@@2) (=> (= (ControlFlow 0 542644) 542684) anon6_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_215979_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_215979| stream@@10) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_215979| stream@@10) v@@48) 0)
 :qid |Diembpl.134:13|
 :skolemid |2|
))))
 :qid |Diembpl.2732:13|
 :skolemid |74|
))) (= (ControlFlow 0 542445) 542644)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 808629) 542445) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))
))
(check-sat)
(pop 1)
; Valid
