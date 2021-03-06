(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_87939 0)) ((($Memory_87939 (|domain#$Memory_87939| |T@[Int]Bool|) (|contents#$Memory_87939| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentity 0)) ((($1_NetworkIdentity_NetworkIdentity (|$identities#$1_NetworkIdentity_NetworkIdentity| (Seq (Seq Int))) (|$identity_change_events#$1_NetworkIdentity_NetworkIdentity| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_NetworkIdentity_NetworkIdentity| 0)
(declare-datatypes ((T@$Memory_141367 0)) ((($Memory_141367 (|domain#$Memory_141367| |T@[Int]Bool|) (|contents#$Memory_141367| |T@[Int]$1_NetworkIdentity_NetworkIdentity|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_127592 0)) ((($Memory_127592 (|domain#$Memory_127592| |T@[Int]Bool|) (|contents#$Memory_127592| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_124481 0)) ((($Memory_124481 (|domain#$Memory_124481| |T@[Int]Bool|) (|contents#$Memory_124481| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_122275 0)) ((($Memory_122275 (|domain#$Memory_122275| |T@[Int]Bool|) (|contents#$Memory_122275| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_122555 0)) ((($Memory_122555 (|domain#$Memory_122555| |T@[Int]Bool|) (|contents#$Memory_122555| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_122242 0)) ((($Memory_122242 (|domain#$Memory_122242| |T@[Int]Bool|) (|contents#$Memory_122242| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_122027 0)) ((($Memory_122027 (|domain#$Memory_122027| |T@[Int]Bool|) (|contents#$Memory_122027| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_119488 0)) ((($Memory_119488 (|domain#$Memory_119488| |T@[Int]Bool|) (|contents#$Memory_119488| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_119424 0)) ((($Memory_119424 (|domain#$Memory_119424| |T@[Int]Bool|) (|contents#$Memory_119424| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_118134 0)) ((($Memory_118134 (|domain#$Memory_118134| |T@[Int]Bool|) (|contents#$Memory_118134| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_118070 0)) ((($Memory_118070 (|domain#$Memory_118070| |T@[Int]Bool|) (|contents#$Memory_118070| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_117758 0)) ((($Memory_117758 (|domain#$Memory_117758| |T@[Int]Bool|) (|contents#$Memory_117758| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114492 0)) ((($Memory_114492 (|domain#$Memory_114492| |T@[Int]Bool|) (|contents#$Memory_114492| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114205 0)) ((($Memory_114205 (|domain#$Memory_114205| |T@[Int]Bool|) (|contents#$Memory_114205| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113918 0)) ((($Memory_113918 (|domain#$Memory_113918| |T@[Int]Bool|) (|contents#$Memory_113918| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113699 0)) ((($Memory_113699 (|domain#$Memory_113699| |T@[Int]Bool|) (|contents#$Memory_113699| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_124088 0)) ((($Memory_124088 (|domain#$Memory_124088| |T@[Int]Bool|) (|contents#$Memory_124088| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106436 0)) ((($Memory_106436 (|domain#$Memory_106436| |T@[Int]Bool|) (|contents#$Memory_106436| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106349 0)) ((($Memory_106349 (|domain#$Memory_106349| |T@[Int]Bool|) (|contents#$Memory_106349| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_103146 0)) ((($Memory_103146 (|domain#$Memory_103146| |T@[Int]Bool|) (|contents#$Memory_103146| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_103059 0)) ((($Memory_103059 (|domain#$Memory_103059| |T@[Int]Bool|) (|contents#$Memory_103059| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124314 0)) ((($Memory_124314 (|domain#$Memory_124314| |T@[Int]Bool|) (|contents#$Memory_124314| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106700 0)) ((($Memory_106700 (|domain#$Memory_106700| |T@[Int]Bool|) (|contents#$Memory_106700| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_116425 0)) ((($Memory_116425 (|domain#$Memory_116425| |T@[Int]Bool|) (|contents#$Memory_116425| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107026 0)) ((($Memory_107026 (|domain#$Memory_107026| |T@[Int]Bool|) (|contents#$Memory_107026| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124223 0)) ((($Memory_124223 (|domain#$Memory_124223| |T@[Int]Bool|) (|contents#$Memory_124223| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106609 0)) ((($Memory_106609 (|domain#$Memory_106609| |T@[Int]Bool|) (|contents#$Memory_106609| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118314 0)) ((($Memory_118314 (|domain#$Memory_118314| |T@[Int]Bool|) (|contents#$Memory_118314| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106927 0)) ((($Memory_106927 (|domain#$Memory_106927| |T@[Int]Bool|) (|contents#$Memory_106927| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102761 0)) ((($Memory_102761 (|domain#$Memory_102761| |T@[Int]Bool|) (|contents#$Memory_102761| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_102697 0)) ((($Memory_102697 (|domain#$Memory_102697| |T@[Int]Bool|) (|contents#$Memory_102697| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_98700 0)) ((($Memory_98700 (|domain#$Memory_98700| |T@[Int]Bool|) (|contents#$Memory_98700| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_98613 0)) ((($Memory_98613 (|domain#$Memory_98613| |T@[Int]Bool|) (|contents#$Memory_98613| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_98526 0)) ((($Memory_98526 (|domain#$Memory_98526| |T@[Int]Bool|) (|contents#$Memory_98526| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_98439 0)) ((($Memory_98439 (|domain#$Memory_98439| |T@[Int]Bool|) (|contents#$Memory_98439| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_98352 0)) ((($Memory_98352 (|domain#$Memory_98352| |T@[Int]Bool|) (|contents#$Memory_98352| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_98965 0)) ((($Memory_98965 (|domain#$Memory_98965| |T@[Int]Bool|) (|contents#$Memory_98965| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_97478 0)) ((($Memory_97478 (|domain#$Memory_97478| |T@[Int]Bool|) (|contents#$Memory_97478| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_97544 0)) ((($Memory_97544 (|domain#$Memory_97544| |T@[Int]Bool|) (|contents#$Memory_97544| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_97397 0)) ((($Memory_97397 (|domain#$Memory_97397| |T@[Int]Bool|) (|contents#$Memory_97397| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_97316 0)) ((($Memory_97316 (|domain#$Memory_97316| |T@[Int]Bool|) (|contents#$Memory_97316| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_97235 0)) ((($Memory_97235 (|domain#$Memory_97235| |T@[Int]Bool|) (|contents#$Memory_97235| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_97154 0)) ((($Memory_97154 (|domain#$Memory_97154| |T@[Int]Bool|) (|contents#$Memory_97154| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_97040 0)) ((($Memory_97040 (|domain#$Memory_97040| |T@[Int]Bool|) (|contents#$Memory_97040| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_123225 0)) ((($Memory_123225 (|domain#$Memory_123225| |T@[Int]Bool|) (|contents#$Memory_123225| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_97073 0)) ((($Memory_97073 (|domain#$Memory_97073| |T@[Int]Bool|) (|contents#$Memory_97073| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_96529 0)) ((($Memory_96529 (|domain#$Memory_96529| |T@[Int]Bool|) (|contents#$Memory_96529| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_95971 0)) ((($Memory_95971 (|domain#$Memory_95971| |T@[Int]Bool|) (|contents#$Memory_95971| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_95644 0)) ((($Memory_95644 (|domain#$Memory_95644| |T@[Int]Bool|) (|contents#$Memory_95644| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_95150 0)) ((($Memory_95150 (|domain#$Memory_95150| |T@[Int]Bool|) (|contents#$Memory_95150| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentityChangeNotification 0)) ((($1_NetworkIdentity_NetworkIdentityChangeNotification (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| (Seq (Seq Int))) (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| Int) ) ) ))
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
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| (|e#$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_66089 0)) (((Multiset_66089 (|v#Multiset_66089| |T@[$EventRep]Int|) (|l#Multiset_66089| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_66089| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_66089|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_141856 0)) ((($Mutation_141856 (|l#$Mutation_141856| T@$Location) (|p#$Mutation_141856| (Seq Int)) (|v#$Mutation_141856| T@$1_NetworkIdentity_NetworkIdentity) ) ) ))
(declare-datatypes ((T@$Mutation_125309 0)) ((($Mutation_125309 (|l#$Mutation_125309| T@$Location) (|p#$Mutation_125309| (Seq Int)) (|v#$Mutation_125309| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_125265 0)) ((($Mutation_125265 (|l#$Mutation_125265| T@$Location) (|p#$Mutation_125265| (Seq Int)) (|v#$Mutation_125265| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_31784 0)) ((($Mutation_31784 (|l#$Mutation_31784| T@$Location) (|p#$Mutation_31784| (Seq Int)) (|v#$Mutation_31784| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_112419 0)) ((($Mutation_112419 (|l#$Mutation_112419| T@$Location) (|p#$Mutation_112419| (Seq Int)) (|v#$Mutation_112419| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_101438 0)) ((($Mutation_101438 (|l#$Mutation_101438| T@$Location) (|p#$Mutation_101438| (Seq Int)) (|v#$Mutation_101438| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_88570 0)) ((($Mutation_88570 (|l#$Mutation_88570| T@$Location) (|p#$Mutation_88570| (Seq Int)) (|v#$Mutation_88570| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12338 0)) ((($Mutation_12338 (|l#$Mutation_12338| T@$Location) (|p#$Mutation_12338| (Seq Int)) (|v#$Mutation_12338| Int) ) ) ))
(declare-datatypes ((T@$Mutation_83947 0)) ((($Mutation_83947 (|l#$Mutation_83947| T@$Location) (|p#$Mutation_83947| (Seq Int)) (|v#$Mutation_83947| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_83201 0)) ((($Mutation_83201 (|l#$Mutation_83201| T@$Location) (|p#$Mutation_83201| (Seq Int)) (|v#$Mutation_83201| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_81797 0)) ((($Mutation_81797 (|l#$Mutation_81797| T@$Location) (|p#$Mutation_81797| (Seq Int)) (|v#$Mutation_81797| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_81051 0)) ((($Mutation_81051 (|l#$Mutation_81051| T@$Location) (|p#$Mutation_81051| (Seq Int)) (|v#$Mutation_81051| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_79647 0)) ((($Mutation_79647 (|l#$Mutation_79647| T@$Location) (|p#$Mutation_79647| (Seq Int)) (|v#$Mutation_79647| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_78901 0)) ((($Mutation_78901 (|l#$Mutation_78901| T@$Location) (|p#$Mutation_78901| (Seq Int)) (|v#$Mutation_78901| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_77497 0)) ((($Mutation_77497 (|l#$Mutation_77497| T@$Location) (|p#$Mutation_77497| (Seq Int)) (|v#$Mutation_77497| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_76751 0)) ((($Mutation_76751 (|l#$Mutation_76751| T@$Location) (|p#$Mutation_76751| (Seq Int)) (|v#$Mutation_76751| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75347 0)) ((($Mutation_75347 (|l#$Mutation_75347| T@$Location) (|p#$Mutation_75347| (Seq Int)) (|v#$Mutation_75347| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_74601 0)) ((($Mutation_74601 (|l#$Mutation_74601| T@$Location) (|p#$Mutation_74601| (Seq Int)) (|v#$Mutation_74601| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_73197 0)) ((($Mutation_73197 (|l#$Mutation_73197| T@$Location) (|p#$Mutation_73197| (Seq Int)) (|v#$Mutation_73197| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_72451 0)) ((($Mutation_72451 (|l#$Mutation_72451| T@$Location) (|p#$Mutation_72451| (Seq Int)) (|v#$Mutation_72451| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_71047 0)) ((($Mutation_71047 (|l#$Mutation_71047| T@$Location) (|p#$Mutation_71047| (Seq Int)) (|v#$Mutation_71047| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70301 0)) ((($Mutation_70301 (|l#$Mutation_70301| T@$Location) (|p#$Mutation_70301| (Seq Int)) (|v#$Mutation_70301| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_68859 0)) ((($Mutation_68859 (|l#$Mutation_68859| T@$Location) (|p#$Mutation_68859| (Seq Int)) (|v#$Mutation_68859| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_68113 0)) ((($Mutation_68113 (|l#$Mutation_68113| T@$Location) (|p#$Mutation_68113| (Seq Int)) (|v#$Mutation_68113| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| ((Seq T@$1_DiemAccount_KeyRotationCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| ((Seq T@$1_DiemAccount_KeyRotationCapability) T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| ((Seq T@$1_DiemAccount_WithdrawCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| ((Seq T@$1_DiemAccount_WithdrawCapability) T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| ((Seq T@$1_DiemSystem_ValidatorInfo)) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| ((Seq T@$1_DiemSystem_ValidatorInfo) T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_66089_| (|T@[$1_Event_EventHandle]Multiset_66089| T@$1_Event_EventHandle) T@Multiset_66089)
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
(declare-fun |$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
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
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| (|T@$1_Diem_MintCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| (|T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| (|T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
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
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentity'| (T@$1_NetworkIdentity_NetworkIdentity) Bool)
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| (T@$1_NetworkIdentity_NetworkIdentityChangeNotification) Bool)
(declare-fun ReverseVec_12191 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_59681 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_58696 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_58893 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_59090 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_59878 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_59484 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_59287 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_58499 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_66089| |T@[$1_Event_EventHandle]Multiset_66089|) |T@[$1_Event_EventHandle]Multiset_66089|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |NetworkIdentityseqArraybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |NetworkIdentityseqArraybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |NetworkIdentityseqArraybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |NetworkIdentityseqArraybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |NetworkIdentityseqArraybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |NetworkIdentityseqArraybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |NetworkIdentityseqArraybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |NetworkIdentityseqArraybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |NetworkIdentityseqArraybpl.595:13|
 :skolemid |15|
))))
 :qid |NetworkIdentityseqArraybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |NetworkIdentityseqArraybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |NetworkIdentityseqArraybpl.608:17|
 :skolemid |18|
)))))
 :qid |NetworkIdentityseqArraybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |NetworkIdentityseqArraybpl.775:13|
 :skolemid |20|
))))
 :qid |NetworkIdentityseqArraybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |NetworkIdentityseqArraybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |NetworkIdentityseqArraybpl.788:17|
 :skolemid |23|
)))))
 :qid |NetworkIdentityseqArraybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |NetworkIdentityseqArraybpl.955:13|
 :skolemid |25|
))))
 :qid |NetworkIdentityseqArraybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |NetworkIdentityseqArraybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |NetworkIdentityseqArraybpl.968:17|
 :skolemid |28|
)))))
 :qid |NetworkIdentityseqArraybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |NetworkIdentityseqArraybpl.1135:13|
 :skolemid |30|
))))
 :qid |NetworkIdentityseqArraybpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |NetworkIdentityseqArraybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |NetworkIdentityseqArraybpl.1148:17|
 :skolemid |33|
)))))
 :qid |NetworkIdentityseqArraybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |NetworkIdentityseqArraybpl.1315:13|
 :skolemid |35|
))))
 :qid |NetworkIdentityseqArraybpl.1313:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |NetworkIdentityseqArraybpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |NetworkIdentityseqArraybpl.1328:17|
 :skolemid |38|
)))))
 :qid |NetworkIdentityseqArraybpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |NetworkIdentityseqArraybpl.1495:13|
 :skolemid |40|
))))
 :qid |NetworkIdentityseqArraybpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |NetworkIdentityseqArraybpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |NetworkIdentityseqArraybpl.1508:17|
 :skolemid |43|
)))))
 :qid |NetworkIdentityseqArraybpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |NetworkIdentityseqArraybpl.1675:13|
 :skolemid |45|
))))
 :qid |NetworkIdentityseqArraybpl.1673:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |NetworkIdentityseqArraybpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |NetworkIdentityseqArraybpl.1688:17|
 :skolemid |48|
)))))
 :qid |NetworkIdentityseqArraybpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |NetworkIdentityseqArraybpl.1855:13|
 :skolemid |50|
))))
 :qid |NetworkIdentityseqArraybpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |NetworkIdentityseqArraybpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |NetworkIdentityseqArraybpl.1868:17|
 :skolemid |53|
)))))
 :qid |NetworkIdentityseqArraybpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |NetworkIdentityseqArraybpl.2035:13|
 :skolemid |55|
))))
 :qid |NetworkIdentityseqArraybpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |NetworkIdentityseqArraybpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |NetworkIdentityseqArraybpl.2048:17|
 :skolemid |58|
)))))
 :qid |NetworkIdentityseqArraybpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |NetworkIdentityseqArraybpl.2215:13|
 :skolemid |60|
))))
 :qid |NetworkIdentityseqArraybpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |NetworkIdentityseqArraybpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |NetworkIdentityseqArraybpl.2228:17|
 :skolemid |63|
)))))
 :qid |NetworkIdentityseqArraybpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |NetworkIdentityseqArraybpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |NetworkIdentityseqArraybpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |NetworkIdentityseqArraybpl.2484:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |NetworkIdentityseqArraybpl.2487:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_66089| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream) v@@24) 0)
 :qid |NetworkIdentityseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |NetworkIdentityseqArraybpl.2548:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |NetworkIdentityseqArraybpl.2589:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |NetworkIdentityseqArraybpl.2595:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |NetworkIdentityseqArraybpl.2645:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |NetworkIdentityseqArraybpl.2651:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |NetworkIdentityseqArraybpl.2701:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |NetworkIdentityseqArraybpl.2707:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |NetworkIdentityseqArraybpl.2757:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |NetworkIdentityseqArraybpl.2763:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |NetworkIdentityseqArraybpl.2813:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |NetworkIdentityseqArraybpl.2819:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |NetworkIdentityseqArraybpl.2869:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |NetworkIdentityseqArraybpl.2875:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |NetworkIdentityseqArraybpl.2925:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |NetworkIdentityseqArraybpl.2931:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |NetworkIdentityseqArraybpl.2981:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |NetworkIdentityseqArraybpl.2987:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |NetworkIdentityseqArraybpl.3037:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |NetworkIdentityseqArraybpl.3043:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |NetworkIdentityseqArraybpl.3093:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |NetworkIdentityseqArraybpl.3099:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |NetworkIdentityseqArraybpl.3149:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |NetworkIdentityseqArraybpl.3155:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |NetworkIdentityseqArraybpl.3205:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |NetworkIdentityseqArraybpl.3211:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |NetworkIdentityseqArraybpl.3261:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |NetworkIdentityseqArraybpl.3267:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |NetworkIdentityseqArraybpl.3317:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |NetworkIdentityseqArraybpl.3323:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |NetworkIdentityseqArraybpl.3373:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |NetworkIdentityseqArraybpl.3379:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |NetworkIdentityseqArraybpl.3429:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |NetworkIdentityseqArraybpl.3435:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| h@@15) true)
 :qid |NetworkIdentityseqArraybpl.3485:95|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) (v2@@17 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v1@@17) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v2@@17)))
 :qid |NetworkIdentityseqArraybpl.3491:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v1@@17) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v2@@17))
)))
(assert (forall ((h@@16 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16) true)
 :qid |NetworkIdentityseqArraybpl.3541:72|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16))
)))
(assert (forall ((v1@@18 T@$1_VASPDomain_VASPDomainEvent) (v2@@18 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18)))
 :qid |NetworkIdentityseqArraybpl.3547:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |NetworkIdentityseqArraybpl.3601:15|
 :skolemid |107|
)))
(assert (forall ((addr Int) ) (! true
 :qid |NetworkIdentityseqArraybpl.3610:15|
 :skolemid |108|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |NetworkIdentityseqArraybpl.3635:61|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |NetworkIdentityseqArraybpl.3812:36|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |NetworkIdentityseqArraybpl.3831:71|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |NetworkIdentityseqArraybpl.3895:46|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |NetworkIdentityseqArraybpl.3908:64|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |NetworkIdentityseqArraybpl.3921:75|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |NetworkIdentityseqArraybpl.3934:72|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |NetworkIdentityseqArraybpl.3963:55|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |NetworkIdentityseqArraybpl.3985:46|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |NetworkIdentityseqArraybpl.4003:49|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |NetworkIdentityseqArraybpl.4078:71|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |NetworkIdentityseqArraybpl.4092:91|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |NetworkIdentityseqArraybpl.4106:113|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |NetworkIdentityseqArraybpl.4120:75|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |NetworkIdentityseqArraybpl.4134:73|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |NetworkIdentityseqArraybpl.4154:48|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |NetworkIdentityseqArraybpl.4170:57|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |NetworkIdentityseqArraybpl.4184:83|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |NetworkIdentityseqArraybpl.4198:103|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |NetworkIdentityseqArraybpl.4212:125|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |NetworkIdentityseqArraybpl.4226:87|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |NetworkIdentityseqArraybpl.4240:85|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |NetworkIdentityseqArraybpl.4254:48|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |NetworkIdentityseqArraybpl.4275:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |NetworkIdentityseqArraybpl.4289:51|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |NetworkIdentityseqArraybpl.4312:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |NetworkIdentityseqArraybpl.4618:49|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |NetworkIdentityseqArraybpl.4631:65|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |NetworkIdentityseqArraybpl.5135:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |NetworkIdentityseqArraybpl.5148:45|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |NetworkIdentityseqArraybpl.5161:55|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |NetworkIdentityseqArraybpl.5175:55|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |NetworkIdentityseqArraybpl.5195:38|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |NetworkIdentityseqArraybpl.5216:44|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |NetworkIdentityseqArraybpl.5267:53|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |NetworkIdentityseqArraybpl.5329:53|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |NetworkIdentityseqArraybpl.5355:55|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |NetworkIdentityseqArraybpl.5369:55|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |NetworkIdentityseqArraybpl.5386:38|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |NetworkIdentityseqArraybpl.5400:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |NetworkIdentityseqArraybpl.5414:48|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |NetworkIdentityseqArraybpl.5434:41|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |NetworkIdentityseqArraybpl.5449:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |NetworkIdentityseqArraybpl.5463:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |NetworkIdentityseqArraybpl.5480:60|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |NetworkIdentityseqArraybpl.5497:60|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |NetworkIdentityseqArraybpl.5514:57|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |NetworkIdentityseqArraybpl.7715:68|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |NetworkIdentityseqArraybpl.7737:66|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |NetworkIdentityseqArraybpl.7763:66|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |NetworkIdentityseqArraybpl.7792:56|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |NetworkIdentityseqArraybpl.7822:56|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |NetworkIdentityseqArraybpl.8156:31|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |NetworkIdentityseqArraybpl.8500:31|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |NetworkIdentityseqArraybpl.8519:35|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |NetworkIdentityseqArraybpl.8940:45|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |NetworkIdentityseqArraybpl.8959:50|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |NetworkIdentityseqArraybpl.8974:52|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |NetworkIdentityseqArraybpl.8998:38|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |NetworkIdentityseqArraybpl.9012:39|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |NetworkIdentityseqArraybpl.9039:65|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@61)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@61))))
 :qid |NetworkIdentityseqArraybpl.9424:60|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62))))
 :qid |NetworkIdentityseqArraybpl.9441:66|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@63)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@63)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@63))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@63))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@63))))
 :qid |NetworkIdentityseqArraybpl.9470:50|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@64) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@64)))
 :qid |NetworkIdentityseqArraybpl.9489:45|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@65)) true))
 :qid |NetworkIdentityseqArraybpl.9808:87|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@66)))
 :qid |NetworkIdentityseqArraybpl.10020:47|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@67)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@67))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@67))))
 :qid |NetworkIdentityseqArraybpl.10040:58|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@68) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@68)))
 :qid |NetworkIdentityseqArraybpl.10055:39|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@69))))
 :qid |NetworkIdentityseqArraybpl.10077:58|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70))))
 :qid |NetworkIdentityseqArraybpl.10094:58|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71) true)
 :qid |NetworkIdentityseqArraybpl.10109:51|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72))))
 :qid |NetworkIdentityseqArraybpl.10126:60|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@73)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@73))))
 :qid |NetworkIdentityseqArraybpl.10424:47|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@74)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@74))))
 :qid |NetworkIdentityseqArraybpl.10446:63|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@75)))
 :qid |NetworkIdentityseqArraybpl.10461:57|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@76)))
 :qid |NetworkIdentityseqArraybpl.10474:55|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@77)))
 :qid |NetworkIdentityseqArraybpl.10488:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@78)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@78))))
 :qid |NetworkIdentityseqArraybpl.10505:54|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@79)))
 :qid |NetworkIdentityseqArraybpl.10519:55|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@80)))
 :qid |NetworkIdentityseqArraybpl.10533:57|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@81))))
 :qid |NetworkIdentityseqArraybpl.10555:56|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@82))))
 :qid |NetworkIdentityseqArraybpl.10580:52|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@83)))
 :qid |NetworkIdentityseqArraybpl.10596:54|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |NetworkIdentityseqArraybpl.11468:47|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |NetworkIdentityseqArraybpl.11492:47|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |NetworkIdentityseqArraybpl.11733:49|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |NetworkIdentityseqArraybpl.11776:49|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |NetworkIdentityseqArraybpl.11805:48|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |NetworkIdentityseqArraybpl.12100:47|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((s@@90 T@$1_NetworkIdentity_NetworkIdentity) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentity'| s@@90)  (and (|$IsValid'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentity| s@@90)) (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| (|$identity_change_events#$1_NetworkIdentity_NetworkIdentity| s@@90))))
 :qid |NetworkIdentityseqArraybpl.13585:55|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentity'| s@@90))
)))
(assert (forall ((s@@91 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| s@@91)  (and (|$IsValid'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@91)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@91))))
 :qid |NetworkIdentityseqArraybpl.13603:73|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| s@@91))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12191 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12191 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_59681 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59681 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_58696 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58696 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_58893 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58893 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_59090 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59090 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_59878 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59878 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_59484 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59484 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_59287 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59287 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_58499 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |NetworkIdentityseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |NetworkIdentityseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58499 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |NetworkIdentityseqArraybpl.250:54|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_66089|) (|l#1| |T@[$1_Event_EventHandle]Multiset_66089|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_66089| (|Select__T@[$1_Event_EventHandle]Multiset_66089_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_66089| (|Select__T@[$1_Event_EventHandle]Multiset_66089_| |l#1| handle@@0))))
(Multiset_66089 (|lambda#3| (|v#Multiset_66089| (|Select__T@[$1_Event_EventHandle]Multiset_66089_| |l#0@@0| handle@@0)) (|v#Multiset_66089| (|Select__T@[$1_Event_EventHandle]Multiset_66089_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |NetworkIdentityseqArraybpl.2558:13|
 :skolemid |283|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |NetworkIdentityseqArraybpl.129:29|
 :skolemid |284|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 208627) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t7@0 () (Seq (Seq Int)))
(declare-fun $t6@1 () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory () T@$Memory_141367)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t6 () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun $t6@0 () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun |Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|T@[Int]$1_NetworkIdentity_NetworkIdentity| Int) T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun $abort_code@0 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_NetworkIdentity_get$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 235722) (let ((anon12_Else_correct  (=> (and (and (not $abort_flag@0) (= $t7@0 (|$identities#$1_NetworkIdentity_NetworkIdentity| $t6@1))) (and (= $t7@0 $t7@0) (= (ControlFlow 0 200809) (- 0 235963)))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) _$t0))))))
(let ((L3_correct  (=> (= (ControlFlow 0 200757) (- 0 235928)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) _$t0)))))
(let ((anon12_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 200823) 200757)) L3_correct))))
(let ((anon11_Then$1_correct  (=> (= $t6@1 $t6) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 200875) 200823) anon12_Then_correct) (=> (= (ControlFlow 0 200875) 200809) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) _$t0)) (= (ControlFlow 0 200873) 200875)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) _$t0) (=> (and (and (= $t6@0 (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) _$t0)) (= $t6@1 $t6@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 200775) 200823) anon12_Then_correct) (=> (= (ControlFlow 0 200775) 200809) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> $t3@0 (and (=> (= (ControlFlow 0 200761) 200873) anon11_Then_correct) (=> (= (ControlFlow 0 200761) 200775) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (and (not $t3@0) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 200741) 200757))) L3_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0)))
(|$IsValid'$1_NetworkIdentity_NetworkIdentity'| $rsc))
 :qid |NetworkIdentityseqArraybpl.13638:20|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0))
)) (= _$t0 _$t0)) (and (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) _$t0)) (= $t3@0 $t3@0))) (and (=> (= (ControlFlow 0 200719) 200761) anon10_Then_correct) (=> (= (ControlFlow 0 200719) 200741) anon10_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_66089| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@0) v@@35) 0)
 :qid |NetworkIdentityseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |NetworkIdentityseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 200657) 200719)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 235722) 200657) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun $t33@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $t6@1@@0 () Bool)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_NetworkIdentity_add_identity$0$$ret0@1 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $t34@0 () Bool)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$1_NetworkIdentity_add_identity$0$$ret0@0 () Bool)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_NetworkIdentity_add_identity$0$$t4@1 () Bool)
(declare-fun |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@3| () (Seq (Seq Int)))
(declare-fun inline$$1_NetworkIdentity_add_identity$0$$t0@1 () T@$Mutation_83201)
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1| () T@$Mutation_83201)
(declare-fun $t25@1 () T@$Mutation_83201)
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@2| () (Seq Int))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun inline$$1_NetworkIdentity_add_identity$0$$t5@1 () (Seq (Seq Int)))
(declare-fun inline$$1_NetworkIdentity_add_identity$0$$t2@0 () T@$Mutation_83201)
(declare-fun |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@1| () (Seq (Seq Int)))
(declare-fun |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@2| () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@0| () (Seq Int))
(declare-fun _$t1 () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@1| () (Seq Int))
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@7 () T@$Memory_141367)
(declare-fun $t12 () Int)
(declare-fun $t13 () Int)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@6 () T@$Memory_141367)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@4 () T@$Memory_141367)
(declare-fun $t24@2 () T@$Mutation_141856)
(declare-fun |Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|T@[Int]$1_NetworkIdentity_NetworkIdentity| Int T@$1_NetworkIdentity_NetworkIdentity) |T@[Int]$1_NetworkIdentity_NetworkIdentity|)
(assert (forall ( ( ?x0 |T@[Int]$1_NetworkIdentity_NetworkIdentity|) ( ?x1 Int) ( ?x2 T@$1_NetworkIdentity_NetworkIdentity)) (! (= (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_NetworkIdentity_NetworkIdentity|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_NetworkIdentity_NetworkIdentity)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t41@0 () T@$Mutation_88570)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t45@0 () T@$1_NetworkIdentity_NetworkIdentityChangeNotification)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_66089_| (|T@[$1_Event_EventHandle]Multiset_66089| T@$1_Event_EventHandle T@Multiset_66089) |T@[$1_Event_EventHandle]Multiset_66089|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_66089|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_66089)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|Store__T@[$1_Event_EventHandle]Multiset_66089_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_66089|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_66089)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|Store__T@[$1_Event_EventHandle]Multiset_66089_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_66089_| ?x0 ?y1))) :weight 0)))
(declare-fun $t44 () Bool)
(declare-fun $t43 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_95150)
(declare-fun $t42@0 () (Seq (Seq Int)))
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@5 () T@$Memory_141367)
(declare-fun $t24@1 () T@$Mutation_141856)
(declare-fun |inline$$1_Vector_length'vec'u8''$0$l@1| () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t37@0 () (Seq Int))
(declare-fun $t39@0 () Int)
(declare-fun $t40@0 () Int)
(declare-fun $t25@0 () T@$Mutation_83201)
(declare-fun |$temp_0'vec'vec'u8'''@1| () (Seq (Seq Int)))
(declare-fun $t32 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'vec'u8''$1$l@1| () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t26@0 () (Seq (Seq Int)))
(declare-fun |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0| () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun |$temp_0'vec'vec'u8'''@0| () (Seq (Seq Int)))
(declare-fun $t24 () T@$Mutation_141856)
(declare-fun $t23 () Int)
(declare-fun $t24@0 () T@$Mutation_141856)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$modifies () |T@[Int]Bool|)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@3 () T@$Memory_141367)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@2 () T@$Memory_141367)
(declare-fun inline$$1_NetworkIdentity_initialize_network_identity$0$$t5@1 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@1 () T@$Memory_141367)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@0 () T@$Memory_141367)
(declare-fun inline$$1_NetworkIdentity_initialize_network_identity$0$$t7@1 () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1| () (Seq (Seq Int)))
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_NetworkIdentity_initialize_network_identity$0$$t3@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t20@0 () Bool)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t9 () T@$Mutation_83201)
(declare-fun $t10 () T@$Mutation_141856)
(declare-fun $t25 () T@$Mutation_83201)
(declare-fun $t41 () T@$Mutation_88570)
(push 1)
(set-info :boogie-vc-id $1_NetworkIdentity_add_identities$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 235983) (let ((anon48_Then_correct true))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon11_Then_correct true))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon10_Then_correct true))
(let ((anon58_Else_correct true))
(let ((anon58_Then_correct true))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@8 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 203114) 203150) anon58_Then_correct) (=> (= (ControlFlow 0 203114) 203136) anon58_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t33@0 1) $MAX_U64) (= (ControlFlow 0 203112) 203114)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t33@0 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ $t33@0 1)) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@8 $abort_flag@7) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 203060) 203150) anon58_Then_correct) (=> (= (ControlFlow 0 203060) 203136) anon58_Else_correct))))))
(let ((L13_correct  (=> (and (= $t6@1@@0 $t6@1@@0) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 203120) 203112) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 203120) 203060) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not $abort_flag@6) (= inline$$1_NetworkIdentity_add_identity$0$$ret0@1 inline$$1_NetworkIdentity_add_identity$0$$ret0@1)) (=> (and (and (= $abort_flag@7 $abort_flag@6) (= $abort_code@7 $abort_code@6)) (and (= $t6@1@@0 inline$$1_NetworkIdentity_add_identity$0$$ret0@1) (= (ControlFlow 0 202951) 203120))) L13_correct))))
(let ((anon55_Then_correct  (=> (and $t34@0 (= true true)) (=> (and (and (= $abort_flag@7 $abort_flag@4) (= $abort_code@7 $abort_code@5)) (and (= $t6@1@@0 true) (= (ControlFlow 0 203196) 203120))) L13_correct))))
(let ((anon57_Then_correct true))
(let ((inline$$1_NetworkIdentity_add_identity$0$L5_correct  (=> (and (= $abort_flag@6 true) (= inline$$1_NetworkIdentity_add_identity$0$$ret0@1 inline$$1_NetworkIdentity_add_identity$0$$ret0@0)) (and (=> (= (ControlFlow 0 202913) 203164) anon57_Then_correct) (=> (= (ControlFlow 0 202913) 202951) anon57_Else_correct)))))
(let ((inline$$1_NetworkIdentity_add_identity$0$anon10_Then_correct  (=> $abort_flag@5 (=> (and (= $abort_code@6 $abort_code@6) (= (ControlFlow 0 202907) 202913)) inline$$1_NetworkIdentity_add_identity$0$L5_correct))))
(let ((inline$$1_NetworkIdentity_add_identity$0$anon8_Then_correct  (=> $abort_flag@5 (=> (and (= $abort_code@6 $abort_code@6) (= (ControlFlow 0 202927) 202913)) inline$$1_NetworkIdentity_add_identity$0$L5_correct))))
(let ((inline$$1_NetworkIdentity_add_identity$0$L3_correct  (=> (= inline$$1_NetworkIdentity_add_identity$0$$t4@1 inline$$1_NetworkIdentity_add_identity$0$$t4@1) (=> (and (and (= |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@3| (|v#$Mutation_83201| inline$$1_NetworkIdentity_add_identity$0$$t0@1)) (= |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@3| |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@3|)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_NetworkIdentity_add_identity$0$$ret0@1 inline$$1_NetworkIdentity_add_identity$0$$t4@1))) (and (=> (= (ControlFlow 0 202806) 203164) anon57_Then_correct) (=> (= (ControlFlow 0 202806) 202951) anon57_Else_correct))))))
(let ((inline$$1_NetworkIdentity_add_identity$0$anon10_Else_correct  (=> (not $abort_flag@5) (=> (and (and (= true true) (= inline$$1_NetworkIdentity_add_identity$0$$t4@1 true)) (and (= inline$$1_NetworkIdentity_add_identity$0$$t0@1 |inline$$1_Vector_push_back'vec'u8''$0$m'@1|) (= (ControlFlow 0 202893) 202806))) inline$$1_NetworkIdentity_add_identity$0$L3_correct))))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1| ($Mutation_83201 (|l#$Mutation_83201| $t25@1) (|p#$Mutation_83201| $t25@1) (seq.++ (|v#$Mutation_83201| $t25@1) (seq.unit |inline$$1_Vector_borrow'vec'u8''$0$dst@2|)))) (and (=> (= (ControlFlow 0 202861) 202907) inline$$1_NetworkIdentity_add_identity$0$anon10_Then_correct) (=> (= (ControlFlow 0 202861) 202893) inline$$1_NetworkIdentity_add_identity$0$anon10_Else_correct)))))
(let ((inline$$1_NetworkIdentity_add_identity$0$anon9_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 202867) 202861)) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_NetworkIdentity_add_identity$0$anon9_Else_correct  (=> (not inline$$Not$1$dst@1) (=> (and (and (= false false) (= inline$$1_NetworkIdentity_add_identity$0$$t4@1 false)) (and (= inline$$1_NetworkIdentity_add_identity$0$$t0@1 $t25@1) (= (ControlFlow 0 202782) 202806))) inline$$1_NetworkIdentity_add_identity$0$L3_correct))))
(let ((inline$$Not$1$anon0_correct  (=> (= inline$$Not$1$dst@1  (not |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (and (=> (= (ControlFlow 0 202750) 202867) inline$$1_NetworkIdentity_add_identity$0$anon9_Then_correct) (=> (= (ControlFlow 0 202750) 202782) inline$$1_NetworkIdentity_add_identity$0$anon9_Else_correct)))))
(let ((inline$$1_NetworkIdentity_add_identity$0$anon8_Else_correct  (=> (and (not $abort_flag@5) (= (ControlFlow 0 202756) 202750)) inline$$Not$1$anon0_correct)))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len inline$$1_NetworkIdentity_add_identity$0$$t5@1)))) (= (seq.nth inline$$1_NetworkIdentity_add_identity$0$$t5@1 i@@40) |inline$$1_Vector_borrow'vec'u8''$0$dst@2|))
 :qid |NetworkIdentityseqArraybpl.1860:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 202706) 202927) inline$$1_NetworkIdentity_add_identity$0$anon8_Then_correct) (=> (= (ControlFlow 0 202706) 202756) inline$$1_NetworkIdentity_add_identity$0$anon8_Else_correct)))))
(let ((inline$$1_NetworkIdentity_add_identity$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_83201| inline$$1_NetworkIdentity_add_identity$0$$t2@0)) 0) (=> (and (and (and (= |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@1| (|v#$Mutation_83201| $t25@1)) (= |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@1| |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@1|)) (and (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@2|) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@2|))) (and (and (= |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@2| (|v#$Mutation_83201| $t25@1)) (= |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@2| |inline$$1_NetworkIdentity_add_identity$0$$temp_0'vec'vec'u8'''@2|)) (and (= inline$$1_NetworkIdentity_add_identity$0$$t5@1 (|v#$Mutation_83201| $t25@1)) (= (ControlFlow 0 202712) 202706)))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((anon56_Else_correct  (=> (and (not $abort_flag@5) (= (ControlFlow 0 202935) 202712)) inline$$1_NetworkIdentity_add_identity$0$anon0_correct)))
(let ((anon56_Then_correct true))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct|  (=> (= $abort_flag@5 true) (=> (and (= $abort_code@6 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@0|)) (and (=> (= (ControlFlow 0 202272) 203178) anon56_Then_correct) (=> (= (ControlFlow 0 202272) 202935) anon56_Else_correct))))))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct|  (=> (and (not (and (>= $t33@0 0) (< $t33@0 (seq.len _$t1)))) (= (ControlFlow 0 202270) 202272)) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct|  (=> (and (>= $t33@0 0) (< $t33@0 (seq.len _$t1))) (=> (and (and (= |inline$$1_Vector_borrow'vec'u8''$0$dst@1| (seq.nth _$t1 $t33@0)) (= $abort_flag@5 $abort_flag@4)) (and (= $abort_code@6 $abort_code@5) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@1|))) (and (=> (= (ControlFlow 0 202220) 203178) anon56_Then_correct) (=> (= (ControlFlow 0 202220) 202935) anon56_Else_correct))))))
(let ((anon55_Else_correct  (=> (not $t34@0) (and (=> (= (ControlFlow 0 202278) 202270) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct|) (=> (= (ControlFlow 0 202278) 202220) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct|)))))
(let ((anon54_Then_correct  (=> inline$$Lt$0$dst@1 (and (=> (= (ControlFlow 0 202131) 203196) anon55_Then_correct) (=> (= (ControlFlow 0 202131) 202278) anon55_Else_correct)))))
(let ((anon61_Then_correct true))
(let ((anon60_Then_correct true))
(let ((L18_correct  (and (=> (= (ControlFlow 0 201924) (- 0 237674)) (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@7) $t12)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@7) $t12) (=> (= (ControlFlow 0 201924) (- 0 237682)) (<= $t13 100))))))
(let ((anon61_Else_correct  (=> (and (and (not $abort_flag@4) (= $1_NetworkIdentity_NetworkIdentity_$memory@6 ($Memory_141367 (|Store__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@4) (|a#$Global| (|l#$Mutation_141856| $t24@2)) true) (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@4) (|a#$Global| (|l#$Mutation_141856| $t24@2)) (|v#$Mutation_141856| $t24@2))))) (and (= $1_NetworkIdentity_NetworkIdentity_$memory@7 $1_NetworkIdentity_NetworkIdentity_$memory@6) (= (ControlFlow 0 202087) 201924))) L18_correct)))
(let ((|inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1| (|v#$Mutation_88570| $t41@0)) (= $es@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1|)))
(let ((stream_new (let ((len (|l#Multiset_66089| stream@@1)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@1) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| $t45@0))))
(Multiset_66089 (|Store__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@1) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| $t45@0) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1| stream_new)))))) (and (=> (= (ControlFlow 0 202059) 202101) anon61_Then_correct) (=> (= (ControlFlow 0 202059) 202087) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (not $t44) (=> (and (and (|$IsValid'u64'| $t43) (= $t43 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t45@0 ($1_NetworkIdentity_NetworkIdentityChangeNotification $t42@0 $t43)) (= (ControlFlow 0 202065) 202059))) |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct|))))
(let ((anon59_Then_correct  (=> (and (and $t34@0 (= $t41@0 ($Mutation_88570 (|l#$Mutation_141856| $t24@2) (seq.++ (|p#$Mutation_141856| $t24@2) (seq.unit 1)) (|$identity_change_events#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t24@2))))) (and (= $t42@0 (|$identities#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t24@2))) (= $t44  (not (|Select__T@[Int]Bool_| (|domain#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 201960) 202127) anon60_Then_correct) (=> (= (ControlFlow 0 201960) 202065) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (and (not $t34@0) (= $1_NetworkIdentity_NetworkIdentity_$memory@5 ($Memory_141367 (|Store__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@4) (|a#$Global| (|l#$Mutation_141856| $t24@2)) true) (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@4) (|a#$Global| (|l#$Mutation_141856| $t24@2)) (|v#$Mutation_141856| $t24@2))))) (and (= $1_NetworkIdentity_NetworkIdentity_$memory@7 $1_NetworkIdentity_NetworkIdentity_$memory@5) (= (ControlFlow 0 201906) 201924))) L18_correct)))
(let ((anon54_Else_correct  (=> (and (not inline$$Lt$0$dst@1) (= $t24@2 ($Mutation_141856 (|l#$Mutation_141856| $t24@1) (|p#$Mutation_141856| $t24@1) ($1_NetworkIdentity_NetworkIdentity (|v#$Mutation_83201| $t25@1) (|$identity_change_events#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t24@1)))))) (and (=> (= (ControlFlow 0 201888) 201960) anon59_Then_correct) (=> (= (ControlFlow 0 201888) 201906) anon59_Else_correct)))))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< $t33@0 |inline$$1_Vector_length'vec'u8''$0$l@1|)) (and (=> (= (ControlFlow 0 201860) 202131) anon54_Then_correct) (=> (= (ControlFlow 0 201860) 201888) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (and inline$$Le$0$dst@1 (|$IsValid'u64'| 0)) (and (= 0 0) (= false false))) (=> (and (and (and (|$IsValid'u64'| $t33@0) (|$IsValid'vec'u8''| $t37@0)) (and (|$IsValid'u64'| $t39@0) (|$IsValid'u64'| $t40@0))) (and (and (= $t25@1 ($Mutation_83201 (|l#$Mutation_83201| $t25@0) (|p#$Mutation_83201| $t25@0) |$temp_0'vec'vec'u8'''@1|)) (|$IsValid'vec'vec'u8'''| (|v#$Mutation_83201| $t25@1))) (and (not $abort_flag@4) (= (ControlFlow 0 201866) 201860)))) inline$$Lt$0$anon0_correct))))
(let ((anon53_Else_correct true))
(let ((anon52_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t32) (= $t32 8)) (and (= $t32 $t32) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 201720) 201866) anon53_Then_correct) (=> (= (ControlFlow 0 201720) 201736) anon53_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= inline$$AddU64$0$dst@2 100)) (= (ControlFlow 0 201684) 201720)) anon52_Else$1_correct)))
(let ((anon52_Else_correct  (=> (not $abort_flag@4) (=> (and (|$IsValid'u64'| 100) (= (ControlFlow 0 201690) 201684)) inline$$Le$0$anon0_correct))))
(let ((anon52_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@5 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 201624) 203210) anon52_Then_correct) (=> (= (ControlFlow 0 201624) 201690) anon52_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ |inline$$1_Vector_length'vec'u8''$1$l@1| |inline$$1_Vector_length'vec'u8''$0$l@1|) $MAX_U64) (= (ControlFlow 0 201622) 201624)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ |inline$$1_Vector_length'vec'u8''$1$l@1| |inline$$1_Vector_length'vec'u8''$0$l@1|)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ |inline$$1_Vector_length'vec'u8''$1$l@1| |inline$$1_Vector_length'vec'u8''$0$l@1|)) (= $abort_code@5 $abort_code@4)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 201570) 203210) anon52_Then_correct) (=> (= (ControlFlow 0 201570) 201690) anon52_Else_correct))))))
(let ((anon51_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 201630) 201622) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 201630) 201570) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon51_Then_correct true))
(let ((|inline$$1_Vector_length'vec'u8''$1$anon0_correct|  (=> (= |inline$$1_Vector_length'vec'u8''$1$l@1| (seq.len $t26@0)) (and (=> (= (ControlFlow 0 201463) 203224) anon51_Then_correct) (=> (= (ControlFlow 0 201463) 201630) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (and (and (not $abort_flag@3) (= |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0| (|v#$Mutation_141856| $t24@1))) (and (= |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0| |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0|) (= $t25@0 ($Mutation_83201 (|l#$Mutation_141856| $t24@1) (seq.++ (|p#$Mutation_141856| $t24@1) (seq.unit 0)) (|$identities#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t24@1)))))) (and (and (= |$temp_0'vec'vec'u8'''@0| (|v#$Mutation_83201| $t25@0)) (= |$temp_0'vec'vec'u8'''@0| |$temp_0'vec'vec'u8'''@0|)) (and (= $t26@0 (|v#$Mutation_83201| $t25@0)) (= (ControlFlow 0 201469) 201463)))) |inline$$1_Vector_length'vec'u8''$1$anon0_correct|)))
(let ((anon50_Then_correct true))
(let ((anon49_Then$1_correct  (=> (= $t24@1 $t24) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 203290) 203238) anon50_Then_correct) (=> (= (ControlFlow 0 203290) 201469) anon50_Else_correct))))))
(let ((anon49_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@4) $t23)) (= (ControlFlow 0 203288) 203290)) anon49_Then$1_correct)))
(let ((anon49_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@4) $t23) (=> (and (and (= $t24@0 ($Mutation_141856 ($Global $t23) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@4) $t23))) (= $t24@1 $t24@0)) (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 201385) 203238) anon50_Then_correct) (=> (= (ControlFlow 0 201385) 201469) anon50_Else_correct))))))
(let ((L4_correct  (=> (and (|$IsValid'address'| $t23) (= $t23 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 201363) (- 0 236989)) (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies $t23)) (=> (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies $t23) (and (=> (= (ControlFlow 0 201363) 203288) anon49_Then_correct) (=> (= (ControlFlow 0 201363) 201385) anon49_Else_correct)))))))
(let ((anon48_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $abort_code@3 $abort_code@2) (= $1_NetworkIdentity_NetworkIdentity_$memory@4 $1_NetworkIdentity_NetworkIdentity_$memory@3)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 203895) 201363))) L4_correct))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$L2_correct  (=> (= $1_NetworkIdentity_NetworkIdentity_$memory@3 $1_NetworkIdentity_NetworkIdentity_$memory@2) (=> (and (= $abort_flag@1 true) (= $abort_code@2 inline$$1_NetworkIdentity_initialize_network_identity$0$$t5@1)) (and (=> (= (ControlFlow 0 203801) 203909) anon48_Then_correct) (=> (= (ControlFlow 0 203801) 203895) anon48_Else_correct))))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon13_Then_correct  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= $1_NetworkIdentity_NetworkIdentity_$memory@2 $1_NetworkIdentity_NetworkIdentity_$memory@1)) (and (= inline$$1_NetworkIdentity_initialize_network_identity$0$$t5@1 $abort_code@1@@0) (= (ControlFlow 0 203795) 203801))) inline$$1_NetworkIdentity_initialize_network_identity$0$L2_correct))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon13_Else_correct  (=> (and (and (not $abort_flag@0@@0) (= $1_NetworkIdentity_NetworkIdentity_$memory@3 $1_NetworkIdentity_NetworkIdentity_$memory@1)) (and (= $abort_flag@1 $abort_flag@0@@0) (= $abort_code@2 $abort_code@1@@0))) (and (=> (= (ControlFlow 0 203781) 203909) anon48_Then_correct) (=> (= (ControlFlow 0 203781) 203895) anon48_Else_correct)))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon12_Then$1_correct  (=> (= $1_NetworkIdentity_NetworkIdentity_$memory@1 $1_NetworkIdentity_NetworkIdentity_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 203853) 203795) inline$$1_NetworkIdentity_initialize_network_identity$0$anon13_Then_correct) (=> (= (ControlFlow 0 203853) 203781) inline$$1_NetworkIdentity_initialize_network_identity$0$anon13_Else_correct))))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon12_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 203851) 203853)) inline$$1_NetworkIdentity_initialize_network_identity$0$anon12_Then$1_correct)))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon12_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_NetworkIdentity_NetworkIdentity_$memory@0 ($Memory_141367 (|Store__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@0) inline$$1_NetworkIdentity_initialize_network_identity$0$$t7@1))) (= $1_NetworkIdentity_NetworkIdentity_$memory@1 $1_NetworkIdentity_NetworkIdentity_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 203771) 203795) inline$$1_NetworkIdentity_initialize_network_identity$0$anon13_Then_correct) (=> (= (ControlFlow 0 203771) 203781) inline$$1_NetworkIdentity_initialize_network_identity$0$anon13_Else_correct))))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon11_Else_correct  (=> (not false) (=> (and (= |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0| |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0|) (= inline$$1_NetworkIdentity_initialize_network_identity$0$$t7@1 ($1_NetworkIdentity_NetworkIdentity |inline$$1_Vector_empty'vec'u8''$0$v@1| |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0|))) (and (=> (= (ControlFlow 0 203749) 203851) inline$$1_NetworkIdentity_initialize_network_identity$0$anon12_Then_correct) (=> (= (ControlFlow 0 203749) 203771) inline$$1_NetworkIdentity_initialize_network_identity$0$anon12_Else_correct))))))
(let ((|inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0| true))) (and (=> (= (ControlFlow 0 203721) 203867) inline$$1_NetworkIdentity_initialize_network_identity$0$anon11_Then_correct) (=> (= (ControlFlow 0 203721) 203749) inline$$1_NetworkIdentity_initialize_network_identity$0$anon11_Else_correct)))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'vec'u8''$0$v@1| |inline$$1_Vector_empty'vec'u8''$0$v@1|) (= (ControlFlow 0 203727) 203721)) |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct|))))
(let ((|inline$$1_Vector_empty'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'vec'u8''$0$v@1| (as seq.empty (Seq (Seq Int)))) (and (=> (= (ControlFlow 0 203633) 203881) inline$$1_NetworkIdentity_initialize_network_identity$0$anon10_Then_correct) (=> (= (ControlFlow 0 203633) 203727) inline$$1_NetworkIdentity_initialize_network_identity$0$anon10_Else_correct)))))
(let ((inline$$1_NetworkIdentity_initialize_network_identity$0$anon0_correct  (=> (= inline$$1_NetworkIdentity_initialize_network_identity$0$$t3@0 (|$addr#$signer| _$t0@@0)) (=> (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 203639) 203633)) |inline$$1_Vector_empty'vec'u8''$0$anon0_correct|))))
(let ((anon47_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t22 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 203885) (- 0 236630)) (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies $t22)) (=> (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies $t22) (=> (= (ControlFlow 0 203885) 203639) inline$$1_NetworkIdentity_initialize_network_identity$0$anon0_correct))))))
(let ((anon47_Else_correct  (=> (not inline$$Not$0$dst@1) (=> (and (and (= $abort_code@3 $abort_code@0@@0) (= $1_NetworkIdentity_NetworkIdentity_$memory@4 $1_NetworkIdentity_NetworkIdentity_$memory)) (and (= $abort_flag@2 false) (= (ControlFlow 0 201343) 201363))) L4_correct))))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not $t20@0)) (and (=> (= (ControlFlow 0 201329) 203885) anon47_Then_correct) (=> (= (ControlFlow 0 201329) 201343) anon47_Else_correct)))))
(let ((anon46_Then_correct  (=> inline$$Gt$0$dst@1 (=> (and (and (|$IsValid'address'| $t19) (= $t19 (|$addr#$signer| _$t0@@0))) (and (= $t20@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t19)) (= (ControlFlow 0 201335) 201329))) inline$$Not$0$anon0_correct))))
(let ((anon46_Else_correct true))
(let ((anon45_Else$1_correct  (=> (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1) (and (=> (= (ControlFlow 0 201249) 201335) anon46_Then_correct) (=> (= (ControlFlow 0 201249) 201271) anon46_Else_correct)))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> |inline$$1_Vector_length'vec'u8''$0$l@1| 0)) (= (ControlFlow 0 201235) 201249)) anon45_Else$1_correct)))
(let ((anon45_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'vec'u8''$0$l@1| |inline$$1_Vector_length'vec'u8''$0$l@1|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 201241) 201235))) inline$$Gt$0$anon0_correct)))
(let ((anon45_Then_correct true))
(let ((|inline$$1_Vector_length'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_length'vec'u8''$0$l@1| (seq.len _$t1)) (and (=> (= (ControlFlow 0 201167) 203923) anon45_Then_correct) (=> (= (ControlFlow 0 201167) 201241) anon45_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (|$IsValid'vec'vec'u8'''| _$t1)) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |NetworkIdentityseqArraybpl.13806:20|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0@@1)))
(|$IsValid'$1_NetworkIdentity_NetworkIdentity'| $rsc@@1))
 :qid |NetworkIdentityseqArraybpl.13810:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0@@1))
)))) (=> (and (and (and (= $t12 (|$addr#$signer| _$t0@@0)) (= $t13 (seq.len (|$identities#$1_NetworkIdentity_NetworkIdentity| (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t12))))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t12) (<= $t13 100))) (and (and (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies $t12) (= _$t0@@0 _$t0@@0)) (and (= _$t1 _$t1) (= (ControlFlow 0 201173) 201167)))) |inline$$1_Vector_length'vec'u8''$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_66089| stream@@2) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@2) v@@36) 0)
 :qid |NetworkIdentityseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |NetworkIdentityseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 200993) 201173)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_83201| $t9)) 0) (= (seq.len (|p#$Mutation_141856| $t10)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_141856| $t24)) 0) (= (seq.len (|p#$Mutation_83201| $t25)) 0)) (and (= (seq.len (|p#$Mutation_88570| $t41)) 0) (= (ControlFlow 0 201003) 200993))) inline$$InitEventStore$0$anon0_correct@@0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 235983) 201003) anon0_correct@@0)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@0 () Bool)
(declare-fun |$temp_0'vec'vec'u8'''@2| () (Seq (Seq Int)))
(declare-fun $t0@0 () T@$Mutation_83201)
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1@@0| () T@$Mutation_83201)
(declare-fun _$t0@@1 () T@$Mutation_83201)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1@@0| () Bool)
(declare-fun $t5@0 () (Seq (Seq Int)))
(declare-fun |$temp_0'vec'vec'u8'''@0@@0| () (Seq (Seq Int)))
(declare-fun |$temp_0'vec'vec'u8'''@1@@0| () (Seq (Seq Int)))
(declare-fun $t2 () T@$Mutation_83201)
(push 1)
(set-info :boogie-vc-id $1_NetworkIdentity_add_identity$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 238279) (let ((anon11_Then_correct@@0 true))
(let ((L3_correct@@0  (=> (and (and (= $t4@0 $t4@0) (= |$temp_0'vec'vec'u8'''@2| (|v#$Mutation_83201| $t0@0))) (and (= |$temp_0'vec'vec'u8'''@2| |$temp_0'vec'vec'u8'''@2|) (= (ControlFlow 0 204558) (- 0 238610)))) (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len (|v#$Mutation_83201| $t0@0))))) (= (seq.nth (|v#$Mutation_83201| $t0@0) i@@41) _$t1@@0))
 :qid |NetworkIdentityseqArraybpl.1860:13|
 :skolemid |52|
)))))
(let ((anon11_Else_correct@@0  (=> (not false) (=> (and (and (= true true) (= $t0@0 |inline$$1_Vector_push_back'vec'u8''$0$m'@1@@0|)) (and (= $t4@0 true) (= (ControlFlow 0 204645) 204558))) L3_correct@@0))))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1@@0| ($Mutation_83201 (|l#$Mutation_83201| _$t0@@1) (|p#$Mutation_83201| _$t0@@1) (seq.++ (|v#$Mutation_83201| _$t0@@1) (seq.unit _$t1@@0)))) (and (=> (= (ControlFlow 0 204613) 204659) anon11_Then_correct@@0) (=> (= (ControlFlow 0 204613) 204645) anon11_Else_correct@@0)))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 204619) 204613)) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct@@0|)))
(let ((anon10_Else_correct@@0  (=> (not inline$$Not$0$dst@1@@0) (=> (and (and (= false false) (= $t0@0 _$t0@@1)) (and (= $t4@0 false) (= (ControlFlow 0 204524) 204558))) L3_correct@@0))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (= inline$$Not$0$dst@1@@0  (not |inline$$1_Vector_contains'vec'u8''$0$res@1@@0|)) (and (=> (= (ControlFlow 0 204492) 204619) anon10_Then_correct@@0) (=> (= (ControlFlow 0 204492) 204524) anon10_Else_correct@@0)))))
(let ((anon9_Else_correct  (=> (and (not false) (= (ControlFlow 0 204498) 204492)) inline$$Not$0$anon0_correct@@0)))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1@@0| (exists ((i@@42 Int) ) (!  (and (and (|$IsValid'u64'| i@@42) (and (>= i@@42 0) (< i@@42 (seq.len $t5@0)))) (= (seq.nth $t5@0 i@@42) _$t1@@0))
 :qid |NetworkIdentityseqArraybpl.1860:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 204448) 204679) anon9_Then_correct) (=> (= (ControlFlow 0 204448) 204498) anon9_Else_correct)))))
(let ((anon0$1_correct@@1  (=> (= (|l#$Mutation_83201| _$t0@@1) ($Param 0)) (=> (and (|$IsValid'vec'vec'u8'''| (|v#$Mutation_83201| _$t0@@1)) (|$IsValid'vec'u8''| _$t1@@0)) (=> (and (and (and (= |$temp_0'vec'vec'u8'''@0@@0| (|v#$Mutation_83201| _$t0@@1)) (= |$temp_0'vec'vec'u8'''@0@@0| |$temp_0'vec'vec'u8'''@0@@0|)) (and (= _$t1@@0 _$t1@@0) (= _$t1@@0 _$t1@@0))) (and (and (= |$temp_0'vec'vec'u8'''@1@@0| (|v#$Mutation_83201| _$t0@@1)) (= |$temp_0'vec'vec'u8'''@1@@0| |$temp_0'vec'vec'u8'''@1@@0|)) (and (= $t5@0 (|v#$Mutation_83201| _$t0@@1)) (= (ControlFlow 0 204454) 204448)))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct@@0|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_66089| stream@@3) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@3) v@@37) 0)
 :qid |NetworkIdentityseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |NetworkIdentityseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 204336) 204454)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (and (= (seq.len (|p#$Mutation_83201| $t2)) 0) (= (ControlFlow 0 204346) 204336)) inline$$InitEventStore$0$anon0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 238279) 204346) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@0)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@1@@0 () T@$Memory_141367)
(declare-fun $t3 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@0@@0 () T@$Memory_141367)
(declare-fun $t7@0@@0 () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0@@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1@@0| () (Seq (Seq Int)))
(declare-fun $1_NetworkIdentity_NetworkIdentity_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandles@0@@0 () |T@[$1_Event_EventHandle]Bool|)
(push 1)
(set-info :boogie-vc-id $1_NetworkIdentity_initialize_network_identity$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 238635) (let ((anon14_Else_correct  (=> (and (not $abort_flag@0@@1) (= (ControlFlow 0 205069) (- 0 238949))) (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@1@@0) $t3))))
(let ((anon14_Then_correct true))
(let ((anon13_Then$1_correct  (=> (= $1_NetworkIdentity_NetworkIdentity_$memory@1@@0 $1_NetworkIdentity_NetworkIdentity_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 205141) 205083) anon14_Then_correct) (=> (= (ControlFlow 0 205141) 205069) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@2)) (= (ControlFlow 0 205139) 205141)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@2))) (=> (and (and (= $1_NetworkIdentity_NetworkIdentity_$memory@0@@0 ($Memory_141367 (|Store__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0@@2) $t7@0@@0))) (= $1_NetworkIdentity_NetworkIdentity_$memory@1@@0 $1_NetworkIdentity_NetworkIdentity_$memory@0@@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 205051) 205083) anon14_Then_correct) (=> (= (ControlFlow 0 205051) 205069) anon14_Else_correct))))))
(let ((anon12_Else_correct@@0  (=> (not false) (=> (and (= |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0@@0| |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0@@0|) (= $t7@0@@0 ($1_NetworkIdentity_NetworkIdentity |inline$$1_Vector_empty'vec'u8''$0$v@1@@0| |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0@@0|))) (and (=> (= (ControlFlow 0 205029) (- 0 238854)) (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies@@0 (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies@@0 (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 205029) 205139) anon13_Then_correct) (=> (= (ControlFlow 0 205029) 205051) anon13_Else_correct))))))))
(let ((anon12_Then_correct@@0 true))
(let ((|inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct@@0|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0@@0|) false) (= $1_Event_EventHandles@0@@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$res@0@@0| true))) (and (=> (= (ControlFlow 0 204993) 205155) anon12_Then_correct@@0) (=> (= (ControlFlow 0 204993) 205029) anon12_Else_correct@@0)))))
(let ((anon11_Else_correct@@1  (=> (not false) (=> (and (= |inline$$1_Vector_empty'vec'u8''$0$v@1@@0| |inline$$1_Vector_empty'vec'u8''$0$v@1@@0|) (= (ControlFlow 0 204999) 204993)) |inline$$1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct@@0|))))
(let ((anon11_Then_correct@@1 true))
(let ((|inline$$1_Vector_empty'vec'u8''$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_empty'vec'u8''$0$v@1@@0| (as seq.empty (Seq (Seq Int)))) (and (=> (= (ControlFlow 0 204905) 205169) anon11_Then_correct@@1) (=> (= (ControlFlow 0 204905) 204999) anon11_Else_correct@@1)))))
(let ((anon0$1_correct@@2  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0@@2)))
(|$IsValid'$1_NetworkIdentity_NetworkIdentity'| $rsc@@2))
 :qid |NetworkIdentityseqArraybpl.14787:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0@@2))
))) (=> (and (and (= $t3 (|$addr#$signer| _$t0@@2)) (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies@@0 $t3)) (and (= _$t0@@2 _$t0@@2) (= (ControlFlow 0 204911) 204905))) |inline$$1_Vector_empty'vec'u8''$0$anon0_correct@@0|))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_66089| stream@@4) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@4) v@@38) 0)
 :qid |NetworkIdentityseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |NetworkIdentityseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 204817) 204911)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 238635) 204817) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_code@7@@0 () Int)
(declare-fun $abort_flag@6@@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun $t30@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@6@@0 () Int)
(declare-fun $abort_flag@5@@0 () Bool)
(declare-fun $t8@1 () Bool)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun inline$$1_NetworkIdentity_remove_identity$0$$ret0@1 () Bool)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun $t31@0 () Bool)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$1_NetworkIdentity_remove_identity$0$$t9@1 () Int)
(declare-fun inline$$1_NetworkIdentity_remove_identity$0$$ret0@0 () Bool)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |inline$$1_Vector_index_of'vec'u8''$0$res1@1| () Bool)
(declare-fun |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@3| () (Seq (Seq Int)))
(declare-fun inline$$1_NetworkIdentity_remove_identity$0$$t0@1 () T@$Mutation_83201)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun |inline$$1_Vector_swap_remove'vec'u8''$0$m'@2| () T@$Mutation_83201)
(declare-fun |inline$$1_Vector_swap_remove'vec'u8''$0$m'@0| () T@$Mutation_83201)
(declare-fun |inline$$1_Vector_index_of'vec'u8''$0$res2@2| () Int)
(declare-fun |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_swap_remove'vec'u8''$0$e@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap_remove'vec'u8''$0$m'@1| () T@$Mutation_83201)
(declare-fun $t29@1 () T@$Mutation_83201)
(declare-fun |inline$$1_Vector_swap_remove'vec'u8''$0$len@1| () Int)
(declare-fun |inline$$1_Vector_index_of'vec'u8''$0$res2@1| () Int)
(declare-fun inline$$1_NetworkIdentity_remove_identity$0$$t6@1 () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0| () (Seq Int))
(declare-fun inline$$1_NetworkIdentity_remove_identity$0$$t2@0 () T@$Mutation_83201)
(declare-fun |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@1| () (Seq (Seq Int)))
(declare-fun |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@2| () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@0@@0| () (Seq Int))
(declare-fun _$t1@@1 () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@1@@0| () (Seq Int))
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@2@@0 () T@$Memory_141367)
(declare-fun $t15 () Int)
(declare-fun $t16 () Int)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@1@@1 () T@$Memory_141367)
(declare-fun $t28@2 () T@$Mutation_141856)
(declare-fun |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t38@0 () T@$Mutation_88570)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t42@0@@0 () T@$1_NetworkIdentity_NetworkIdentityChangeNotification)
(declare-fun $t41@@0 () Bool)
(declare-fun $t40 () Int)
(declare-fun $t39@0@@0 () (Seq (Seq Int)))
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@0@@1 () T@$Memory_141367)
(declare-fun $t28@1 () T@$Mutation_141856)
(declare-fun |inline$$1_Vector_length'vec'u8''$0$l@1@@0| () Int)
(declare-fun |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0@@0| () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun $t29@0 () T@$Mutation_83201)
(declare-fun |$temp_0'vec'vec'u8'''@0@@1| () (Seq (Seq Int)))
(declare-fun $t34@0@@0 () (Seq Int))
(declare-fun $t36@0 () Int)
(declare-fun $t37@0@@0 () Int)
(declare-fun |$temp_0'vec'vec'u8'''@1@@1| () (Seq (Seq Int)))
(declare-fun $t28 () T@$Mutation_141856)
(declare-fun $t25@@0 () Int)
(declare-fun $t28@0 () T@$Mutation_141856)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t26@0@@0 () Bool)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$modifies@@1 () |T@[Int]Bool|)
(declare-fun inline$$Le$0$dst@1@@0 () Bool)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun inline$$Gt$0$dst@1@@0 () Bool)
(declare-fun $t12@@0 () T@$Mutation_83201)
(declare-fun $t13@@0 () T@$Mutation_141856)
(declare-fun $t29 () T@$Mutation_83201)
(declare-fun $t38 () T@$Mutation_88570)
(push 1)
(set-info :boogie-vc-id $1_NetworkIdentity_remove_identities$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 238972) (let ((anon50_Else_correct@@0 true))
(let ((anon50_Then_correct@@0 true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_code@7@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@6@@0 true) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 207321) 207357) anon50_Then_correct@@0) (=> (= (ControlFlow 0 207321) 207343) anon50_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ $t30@0 1) $MAX_U64) (= (ControlFlow 0 207319) 207321)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ $t30@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ $t30@0 1)) (= $abort_code@7@@0 $abort_code@6@@0)) (and (= $abort_flag@6@@0 $abort_flag@5@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 207267) 207357) anon50_Then_correct@@0) (=> (= (ControlFlow 0 207267) 207343) anon50_Else_correct@@0))))))
(let ((L12_correct  (=> (and (= $t8@1 $t8@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 207327) 207319) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 207327) 207267) inline$$AddU64$0$anon3_Else_correct@@0)))))
(let ((anon49_Else_correct@@0  (=> (and (not $abort_flag@4@@0) (= inline$$1_NetworkIdentity_remove_identity$0$$ret0@1 inline$$1_NetworkIdentity_remove_identity$0$$ret0@1)) (=> (and (and (= $abort_flag@5@@0 $abort_flag@4@@0) (= $abort_code@6@@0 $abort_code@5@@0)) (and (= $t8@1 inline$$1_NetworkIdentity_remove_identity$0$$ret0@1) (= (ControlFlow 0 207158) 207327))) L12_correct))))
(let ((anon47_Then_correct@@0  (=> (and $t31@0 (= true true)) (=> (and (and (= $abort_flag@5@@0 $abort_flag@0@@2) (= $abort_code@6@@0 $abort_code@1@@2)) (and (= $t8@1 true) (= (ControlFlow 0 207403) 207327))) L12_correct))))
(let ((anon49_Then_correct@@0 true))
(let ((inline$$1_NetworkIdentity_remove_identity$0$L5_correct  (=> (= $abort_flag@4@@0 true) (=> (and (= $abort_code@5@@0 inline$$1_NetworkIdentity_remove_identity$0$$t9@1) (= inline$$1_NetworkIdentity_remove_identity$0$$ret0@1 inline$$1_NetworkIdentity_remove_identity$0$$ret0@0)) (and (=> (= (ControlFlow 0 207120) 207371) anon49_Then_correct@@0) (=> (= (ControlFlow 0 207120) 207158) anon49_Else_correct@@0))))))
(let ((inline$$1_NetworkIdentity_remove_identity$0$anon11_Then_correct  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_NetworkIdentity_remove_identity$0$$t9@1 $abort_code@3@@0) (= (ControlFlow 0 207114) 207120))) inline$$1_NetworkIdentity_remove_identity$0$L5_correct)))
(let ((inline$$1_NetworkIdentity_remove_identity$0$anon9_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_NetworkIdentity_remove_identity$0$$t9@1 $abort_code@2@@0) (= (ControlFlow 0 207134) 207120))) inline$$1_NetworkIdentity_remove_identity$0$L5_correct)))
(let ((inline$$1_NetworkIdentity_remove_identity$0$L3_correct  (=> (and (= |inline$$1_Vector_index_of'vec'u8''$0$res1@1| |inline$$1_Vector_index_of'vec'u8''$0$res1@1|) (= |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@3| (|v#$Mutation_83201| inline$$1_NetworkIdentity_remove_identity$0$$t0@1))) (=> (and (and (= |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@3| |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@3|) (= $abort_flag@4@@0 $abort_flag@3@@0)) (and (= $abort_code@5@@0 $abort_code@4@@0) (= inline$$1_NetworkIdentity_remove_identity$0$$ret0@1 |inline$$1_Vector_index_of'vec'u8''$0$res1@1|))) (and (=> (= (ControlFlow 0 206882) 207371) anon49_Then_correct@@0) (=> (= (ControlFlow 0 206882) 207158) anon49_Else_correct@@0))))))
(let ((inline$$1_NetworkIdentity_remove_identity$0$anon11_Else_correct  (=> (not $abort_flag@2@@0) (=> (and (and (= inline$$1_NetworkIdentity_remove_identity$0$$t0@1 |inline$$1_Vector_swap_remove'vec'u8''$0$m'@2|) (= $abort_flag@3@@0 $abort_flag@2@@0)) (and (= $abort_code@4@@0 $abort_code@3@@0) (= (ControlFlow 0 207100) 206882))) inline$$1_NetworkIdentity_remove_identity$0$L3_correct))))
(let ((|inline$$1_Vector_swap_remove'vec'u8''$0$anon3_Then$1_correct|  (=> (= $abort_code@3@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2@@0 true) (= |inline$$1_Vector_swap_remove'vec'u8''$0$m'@2| |inline$$1_Vector_swap_remove'vec'u8''$0$m'@0|)) (and (=> (= (ControlFlow 0 207084) 207114) inline$$1_NetworkIdentity_remove_identity$0$anon11_Then_correct) (=> (= (ControlFlow 0 207084) 207100) inline$$1_NetworkIdentity_remove_identity$0$anon11_Else_correct))))))
(let ((|inline$$1_Vector_swap_remove'vec'u8''$0$anon3_Then_correct|  (=> (and (not (and (>= |inline$$1_Vector_index_of'vec'u8''$0$res2@2| 0) (< |inline$$1_Vector_index_of'vec'u8''$0$res2@2| (seq.len |inline$$1_Vector_swap_remove'vec'u8''$0$v@1|)))) (= (ControlFlow 0 207082) 207084)) |inline$$1_Vector_swap_remove'vec'u8''$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'vec'u8''$0$anon3_Else_correct|  (=> (and (and (and (>= |inline$$1_Vector_index_of'vec'u8''$0$res2@2| 0) (< |inline$$1_Vector_index_of'vec'u8''$0$res2@2| (seq.len |inline$$1_Vector_swap_remove'vec'u8''$0$v@1|))) (= |inline$$1_Vector_swap_remove'vec'u8''$0$e@1| (seq.nth |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| |inline$$1_Vector_index_of'vec'u8''$0$res2@2|))) (and (and (= |inline$$1_Vector_swap_remove'vec'u8''$0$m'@1| ($Mutation_83201 (|l#$Mutation_83201| $t29@1) (|p#$Mutation_83201| $t29@1) (seq.extract (seq.update (seq.update |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| (- |inline$$1_Vector_swap_remove'vec'u8''$0$len@1| 1) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| |inline$$1_Vector_index_of'vec'u8''$0$res2@2|))) |inline$$1_Vector_index_of'vec'u8''$0$res2@2| (seq.unit (seq.nth |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| (- |inline$$1_Vector_swap_remove'vec'u8''$0$len@1| 1)))) 0 (- (- (seq.len (seq.update (seq.update |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| (- |inline$$1_Vector_swap_remove'vec'u8''$0$len@1| 1) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| |inline$$1_Vector_index_of'vec'u8''$0$res2@2|))) |inline$$1_Vector_index_of'vec'u8''$0$res2@2| (seq.unit (seq.nth |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| (- |inline$$1_Vector_swap_remove'vec'u8''$0$len@1| 1))))) 1) 0)))) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= |inline$$1_Vector_swap_remove'vec'u8''$0$m'@2| |inline$$1_Vector_swap_remove'vec'u8''$0$m'@1|)))) (and (=> (= (ControlFlow 0 207032) 207114) inline$$1_NetworkIdentity_remove_identity$0$anon11_Then_correct) (=> (= (ControlFlow 0 207032) 207100) inline$$1_NetworkIdentity_remove_identity$0$anon11_Else_correct)))))
(let ((|inline$$1_Vector_swap_remove'vec'u8''$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'vec'u8''$0$v@1| (|v#$Mutation_83201| $t29@1)) (= |inline$$1_Vector_swap_remove'vec'u8''$0$len@1| (seq.len |inline$$1_Vector_swap_remove'vec'u8''$0$v@1|))) (and (=> (= (ControlFlow 0 207000) 207082) |inline$$1_Vector_swap_remove'vec'u8''$0$anon3_Then_correct|) (=> (= (ControlFlow 0 207000) 207032) |inline$$1_Vector_swap_remove'vec'u8''$0$anon3_Else_correct|)))))
(let ((inline$$1_NetworkIdentity_remove_identity$0$anon10_Then_correct  (=> (and |inline$$1_Vector_index_of'vec'u8''$0$res1@1| (= (ControlFlow 0 207092) 207000)) |inline$$1_Vector_swap_remove'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_NetworkIdentity_remove_identity$0$anon10_Else_correct  (=> (not |inline$$1_Vector_index_of'vec'u8''$0$res1@1|) (=> (and (and (= inline$$1_NetworkIdentity_remove_identity$0$$t0@1 $t29@1) (= $abort_flag@3@@0 $abort_flag@1@@0)) (and (= $abort_code@4@@0 $abort_code@2@@0) (= (ControlFlow 0 206858) 206882))) inline$$1_NetworkIdentity_remove_identity$0$L3_correct))))
(let ((inline$$1_NetworkIdentity_remove_identity$0$anon9_Else_correct  (=> (not $abort_flag@1@@0) (=> (and (= |inline$$1_Vector_index_of'vec'u8''$0$res2@2| |inline$$1_Vector_index_of'vec'u8''$0$res2@2|) (= |inline$$1_Vector_index_of'vec'u8''$0$res1@1| |inline$$1_Vector_index_of'vec'u8''$0$res1@1|)) (and (=> (= (ControlFlow 0 206850) 207092) inline$$1_NetworkIdentity_remove_identity$0$anon10_Then_correct) (=> (= (ControlFlow 0 206850) 206858) inline$$1_NetworkIdentity_remove_identity$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_index_of'vec'u8''$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'vec'u8''$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'vec'u8''$0$res1@1| false) (= |inline$$1_Vector_index_of'vec'u8''$0$res2@2| 0)) (and (=> (= (ControlFlow 0 206810) 207134) inline$$1_NetworkIdentity_remove_identity$0$anon9_Then_correct) (=> (= (ControlFlow 0 206810) 206850) inline$$1_NetworkIdentity_remove_identity$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_index_of'vec'u8''$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'vec'u8''$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'vec'u8''$0$res1@1| true) (= |inline$$1_Vector_index_of'vec'u8''$0$res2@2| |inline$$1_Vector_index_of'vec'u8''$0$res2@1|)) (and (=> (= (ControlFlow 0 206820) 207134) inline$$1_NetworkIdentity_remove_identity$0$anon9_Then_correct) (=> (= (ControlFlow 0 206820) 206850) inline$$1_NetworkIdentity_remove_identity$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_index_of'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'vec'u8''$0$res2@1| (|$IndexOfVec'vec'u8''| inline$$1_NetworkIdentity_remove_identity$0$$t6@1 |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0|)) (and (=> (= (ControlFlow 0 206798) 206820) |inline$$1_Vector_index_of'vec'u8''$0$anon3_Then_correct|) (=> (= (ControlFlow 0 206798) 206810) |inline$$1_Vector_index_of'vec'u8''$0$anon3_Else_correct|)))))
(let ((inline$$1_NetworkIdentity_remove_identity$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_83201| inline$$1_NetworkIdentity_remove_identity$0$$t2@0)) 0) (=> (and (and (and (= |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@1| (|v#$Mutation_83201| $t29@1)) (= |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@1| |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@1|)) (and (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0| |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0|) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0| |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0|))) (and (and (= |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@2| (|v#$Mutation_83201| $t29@1)) (= |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@2| |inline$$1_NetworkIdentity_remove_identity$0$$temp_0'vec'vec'u8'''@2|)) (and (= inline$$1_NetworkIdentity_remove_identity$0$$t6@1 (|v#$Mutation_83201| $t29@1)) (= (ControlFlow 0 206828) 206798)))) |inline$$1_Vector_index_of'vec'u8''$0$anon0_correct|))))
(let ((anon48_Else_correct@@0  (=> (and (not $abort_flag@1@@0) (= (ControlFlow 0 207142) 206828)) inline$$1_NetworkIdentity_remove_identity$0$anon0_correct)))
(let ((anon48_Then_correct@@0 true))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct@@0|  (=> (= $abort_flag@1@@0 true) (=> (and (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0| |inline$$1_Vector_borrow'vec'u8''$0$dst@0@@0|)) (and (=> (= (ControlFlow 0 206367) 207385) anon48_Then_correct@@0) (=> (= (ControlFlow 0 206367) 207142) anon48_Else_correct@@0))))))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct@@0|  (=> (and (not (and (>= $t30@0 0) (< $t30@0 (seq.len _$t1@@1)))) (= (ControlFlow 0 206365) 206367)) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct@@0|)))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct@@0|  (=> (and (>= $t30@0 0) (< $t30@0 (seq.len _$t1@@1))) (=> (and (and (= |inline$$1_Vector_borrow'vec'u8''$0$dst@1@@0| (seq.nth _$t1@@1 $t30@0)) (= $abort_flag@1@@0 $abort_flag@0@@2)) (and (= $abort_code@2@@0 $abort_code@1@@2) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2@@0| |inline$$1_Vector_borrow'vec'u8''$0$dst@1@@0|))) (and (=> (= (ControlFlow 0 206315) 207385) anon48_Then_correct@@0) (=> (= (ControlFlow 0 206315) 207142) anon48_Else_correct@@0))))))
(let ((anon47_Else_correct@@0  (=> (not $t31@0) (and (=> (= (ControlFlow 0 206373) 206365) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct@@0|) (=> (= (ControlFlow 0 206373) 206315) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct@@0|)))))
(let ((anon46_Then_correct@@0  (=> inline$$Lt$0$dst@1@@0 (and (=> (= (ControlFlow 0 206226) 207403) anon47_Then_correct@@0) (=> (= (ControlFlow 0 206226) 206373) anon47_Else_correct@@0)))))
(let ((anon53_Then_correct@@0 true))
(let ((anon52_Then_correct@@0 true))
(let ((L17_correct  (and (=> (= (ControlFlow 0 206019) (- 0 240100)) (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@2@@0) $t15)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory@2@@0) $t15) (=> (= (ControlFlow 0 206019) (- 0 240108)) (<= $t16 100))))))
(let ((anon53_Else_correct@@0  (=> (and (and (not $abort_flag@0@@2) (= $1_NetworkIdentity_NetworkIdentity_$memory@1@@1 ($Memory_141367 (|Store__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|a#$Global| (|l#$Mutation_141856| $t28@2)) true) (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|a#$Global| (|l#$Mutation_141856| $t28@2)) (|v#$Mutation_141856| $t28@2))))) (and (= $1_NetworkIdentity_NetworkIdentity_$memory@2@@0 $1_NetworkIdentity_NetworkIdentity_$memory@1@@1) (= (ControlFlow 0 206182) 206019))) L17_correct)))
(let ((|inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1@@0| (|v#$Mutation_88570| $t38@0)) (= $es@0@@0 (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1@@0|)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_66089| stream@@5)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@5) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| $t42@0@@0))))
(Multiset_66089 (|Store__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@5) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| $t42@0@@0) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$handle@1@@0| stream_new@@0)))))) (and (=> (= (ControlFlow 0 206154) 206196) anon53_Then_correct@@0) (=> (= (ControlFlow 0 206154) 206182) anon53_Else_correct@@0)))))
(let ((anon52_Else_correct@@0  (=> (not $t41@@0) (=> (and (and (|$IsValid'u64'| $t40) (= $t40 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t42@0@@0 ($1_NetworkIdentity_NetworkIdentityChangeNotification $t39@0@@0 $t40)) (= (ControlFlow 0 206160) 206154))) |inline$$1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'$0$anon0_correct@@0|))))
(let ((anon51_Then_correct@@0  (=> (and (and $t31@0 (= $t38@0 ($Mutation_88570 (|l#$Mutation_141856| $t28@2) (seq.++ (|p#$Mutation_141856| $t28@2) (seq.unit 1)) (|$identity_change_events#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t28@2))))) (and (= $t39@0@@0 (|$identities#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t28@2))) (= $t41@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 206055) 206222) anon52_Then_correct@@0) (=> (= (ControlFlow 0 206055) 206160) anon52_Else_correct@@0)))))
(let ((anon51_Else_correct@@0  (=> (and (and (not $t31@0) (= $1_NetworkIdentity_NetworkIdentity_$memory@0@@1 ($Memory_141367 (|Store__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|a#$Global| (|l#$Mutation_141856| $t28@2)) true) (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) (|a#$Global| (|l#$Mutation_141856| $t28@2)) (|v#$Mutation_141856| $t28@2))))) (and (= $1_NetworkIdentity_NetworkIdentity_$memory@2@@0 $1_NetworkIdentity_NetworkIdentity_$memory@0@@1) (= (ControlFlow 0 206001) 206019))) L17_correct)))
(let ((anon46_Else_correct@@0  (=> (and (not inline$$Lt$0$dst@1@@0) (= $t28@2 ($Mutation_141856 (|l#$Mutation_141856| $t28@1) (|p#$Mutation_141856| $t28@1) ($1_NetworkIdentity_NetworkIdentity (|v#$Mutation_83201| $t29@1) (|$identity_change_events#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t28@1)))))) (and (=> (= (ControlFlow 0 205981) 206055) anon51_Then_correct@@0) (=> (= (ControlFlow 0 205981) 206001) anon51_Else_correct@@0)))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (= inline$$Lt$0$dst@1@@0 (< $t30@0 |inline$$1_Vector_length'vec'u8''$0$l@1@@0|)) (and (=> (= (ControlFlow 0 205953) 206226) anon46_Then_correct@@0) (=> (= (ControlFlow 0 205953) 205981) anon46_Else_correct@@0)))))
(let ((anon45_Else_correct@@0  (=> (not $abort_flag@0@@2) (=> (and (and (and (and (= |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0@@0| (|v#$Mutation_141856| $t28@1)) (= |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0@@0| |$temp_0'$1_NetworkIdentity_NetworkIdentity'@0@@0|)) (and (= $t29@0 ($Mutation_83201 (|l#$Mutation_141856| $t28@1) (seq.++ (|p#$Mutation_141856| $t28@1) (seq.unit 0)) (|$identities#$1_NetworkIdentity_NetworkIdentity| (|v#$Mutation_141856| $t28@1)))) (= |$temp_0'vec'vec'u8'''@0@@1| (|v#$Mutation_83201| $t29@0)))) (and (and (= |$temp_0'vec'vec'u8'''@0@@1| |$temp_0'vec'vec'u8'''@0@@1|) (|$IsValid'u64'| 0)) (and (= 0 0) (= false false)))) (and (and (and (|$IsValid'u64'| $t30@0) (|$IsValid'vec'u8''| $t34@0@@0)) (and (|$IsValid'u64'| $t36@0) (|$IsValid'u64'| $t37@0@@0))) (and (and (= $t29@1 ($Mutation_83201 (|l#$Mutation_83201| $t29@0) (|p#$Mutation_83201| $t29@0) |$temp_0'vec'vec'u8'''@1@@1|)) (|$IsValid'vec'vec'u8'''| (|v#$Mutation_83201| $t29@1))) (and (not $abort_flag@0@@2) (= (ControlFlow 0 205959) 205953))))) inline$$Lt$0$anon0_correct@@0))))
(let ((anon45_Then_correct@@0 true))
(let ((anon44_Then$1_correct  (=> (= $t28@1 $t28) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 207469) 207417) anon45_Then_correct@@0) (=> (= (ControlFlow 0 207469) 205959) anon45_Else_correct@@0))))))
(let ((anon44_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t25@@0)) (= (ControlFlow 0 207467) 207469)) anon44_Then$1_correct)))
(let ((anon44_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t25@@0) (=> (and (and (= $t28@0 ($Mutation_141856 ($Global $t25@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t25@@0))) (= $t28@1 $t28@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 205789) 207417) anon45_Then_correct@@0) (=> (= (ControlFlow 0 205789) 205959) anon45_Else_correct@@0))))))
(let ((anon43_Then_correct  (=> $t26@0@@0 (and (=> (= (ControlFlow 0 205767) (- 0 239587)) (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies@@1 $t25@@0)) (=> (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies@@1 $t25@@0) (and (=> (= (ControlFlow 0 205767) 207467) anon44_Then_correct) (=> (= (ControlFlow 0 205767) 205789) anon44_Else_correct)))))))
(let ((anon43_Else_correct true))
(let ((anon42_Then_correct  (=> (and inline$$Le$0$dst@1@@0 (|$IsValid'address'| $t25@@0)) (=> (and (and (= $t25@@0 (|$addr#$signer| _$t0@@3)) (= $t25@@0 $t25@@0)) (and (= $t26@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t25@@0)) (= $t26@0@@0 $t26@0@@0))) (and (=> (= (ControlFlow 0 205735) 205767) anon43_Then_correct) (=> (= (ControlFlow 0 205735) 205757) anon43_Else_correct))))))
(let ((anon42_Else_correct true))
(let ((anon41_Then$1_correct  (=> (= inline$$Le$0$dst@1@@0 inline$$Le$0$dst@1@@0) (and (=> (= (ControlFlow 0 205677) 205735) anon42_Then_correct) (=> (= (ControlFlow 0 205677) 205699) anon42_Else_correct)))))
(let ((inline$$Le$0$anon0_correct@@0  (=> (and (= inline$$Le$0$dst@1@@0 (<= |inline$$1_Vector_length'vec'u8''$0$l@1@@0| 100)) (= (ControlFlow 0 205663) 205677)) anon41_Then$1_correct)))
(let ((anon41_Then_correct  (=> inline$$Gt$0$dst@1@@0 (=> (and (|$IsValid'u64'| 100) (= (ControlFlow 0 205669) 205663)) inline$$Le$0$anon0_correct@@0))))
(let ((anon41_Else_correct true))
(let ((anon40_Else$1_correct  (=> (= inline$$Gt$0$dst@1@@0 inline$$Gt$0$dst@1@@0) (and (=> (= (ControlFlow 0 205585) 205669) anon41_Then_correct) (=> (= (ControlFlow 0 205585) 205607) anon41_Else_correct)))))
(let ((inline$$Gt$0$anon0_correct@@0  (=> (and (= inline$$Gt$0$dst@1@@0 (> |inline$$1_Vector_length'vec'u8''$0$l@1@@0| 0)) (= (ControlFlow 0 205571) 205585)) anon40_Else$1_correct)))
(let ((anon40_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'vec'u8''$0$l@1@@0| |inline$$1_Vector_length'vec'u8''$0$l@1@@0|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 205577) 205571))) inline$$Gt$0$anon0_correct@@0)))
(let ((anon40_Then_correct true))
(let ((|inline$$1_Vector_length'vec'u8''$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'vec'u8''$0$l@1@@0| (seq.len _$t1@@1)) (and (=> (= (ControlFlow 0 205503) 207483) anon40_Then_correct) (=> (= (ControlFlow 0 205503) 205577) anon40_Else_correct)))))
(let ((anon0$1_correct@@3  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'vec'vec'u8'''| _$t1@@1)) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |NetworkIdentityseqArraybpl.14950:20|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95150| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0@@4)))
(|$IsValid'$1_NetworkIdentity_NetworkIdentity'| $rsc@@4))
 :qid |NetworkIdentityseqArraybpl.14954:20|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0@@4))
)))) (=> (and (and (and (= $t15 (|$addr#$signer| _$t0@@3)) (= $t16 (seq.len (|$identities#$1_NetworkIdentity_NetworkIdentity| (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t15))))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141367| $1_NetworkIdentity_NetworkIdentity_$memory) $t15) (<= $t16 100))) (and (and (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies@@1 $t15) (= _$t0@@3 _$t0@@3)) (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 205509) 205503)))) |inline$$1_Vector_length'vec'u8''$0$anon0_correct@@0|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_66089_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_66089| stream@@6) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66089| stream@@6) v@@39) 0)
 :qid |NetworkIdentityseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |NetworkIdentityseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 205329) 205509)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (and (= (seq.len (|p#$Mutation_83201| $t12@@0)) 0) (= (seq.len (|p#$Mutation_141856| $t13@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_141856| $t28)) 0) (= (seq.len (|p#$Mutation_83201| $t29)) 0)) (and (= (seq.len (|p#$Mutation_88570| $t38)) 0) (= (ControlFlow 0 205339) 205329))) inline$$InitEventStore$0$anon0_correct@@3))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 238972) 205339) anon0_correct@@3)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_NetworkIdentity_remove_identity$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 240824) true)
))
(check-sat)
(pop 1)
; Valid
