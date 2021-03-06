(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_112564 0)) ((($Memory_112564 (|domain#$Memory_112564| |T@[Int]Bool|) (|contents#$Memory_112564| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_188836 0)) ((($Memory_188836 (|domain#$Memory_188836| |T@[Int]Bool|) (|contents#$Memory_188836| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_185725 0)) ((($Memory_185725 (|domain#$Memory_185725| |T@[Int]Bool|) (|contents#$Memory_185725| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_183519 0)) ((($Memory_183519 (|domain#$Memory_183519| |T@[Int]Bool|) (|contents#$Memory_183519| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_183799 0)) ((($Memory_183799 (|domain#$Memory_183799| |T@[Int]Bool|) (|contents#$Memory_183799| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_183486 0)) ((($Memory_183486 (|domain#$Memory_183486| |T@[Int]Bool|) (|contents#$Memory_183486| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_151526 0)) ((($Memory_151526 (|domain#$Memory_151526| |T@[Int]Bool|) (|contents#$Memory_151526| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_151355 0)) ((($Memory_151355 (|domain#$Memory_151355| |T@[Int]Bool|) (|contents#$Memory_151355| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_151184 0)) ((($Memory_151184 (|domain#$Memory_151184| |T@[Int]Bool|) (|contents#$Memory_151184| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_150885 0)) ((($Memory_150885 (|domain#$Memory_150885| |T@[Int]Bool|) (|contents#$Memory_150885| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_148346 0)) ((($Memory_148346 (|domain#$Memory_148346| |T@[Int]Bool|) (|contents#$Memory_148346| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_148282 0)) ((($Memory_148282 (|domain#$Memory_148282| |T@[Int]Bool|) (|contents#$Memory_148282| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_146992 0)) ((($Memory_146992 (|domain#$Memory_146992| |T@[Int]Bool|) (|contents#$Memory_146992| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_146928 0)) ((($Memory_146928 (|domain#$Memory_146928| |T@[Int]Bool|) (|contents#$Memory_146928| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_146616 0)) ((($Memory_146616 (|domain#$Memory_146616| |T@[Int]Bool|) (|contents#$Memory_146616| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_143350 0)) ((($Memory_143350 (|domain#$Memory_143350| |T@[Int]Bool|) (|contents#$Memory_143350| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_143063 0)) ((($Memory_143063 (|domain#$Memory_143063| |T@[Int]Bool|) (|contents#$Memory_143063| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142776 0)) ((($Memory_142776 (|domain#$Memory_142776| |T@[Int]Bool|) (|contents#$Memory_142776| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142557 0)) ((($Memory_142557 (|domain#$Memory_142557| |T@[Int]Bool|) (|contents#$Memory_142557| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_185332 0)) ((($Memory_185332 (|domain#$Memory_185332| |T@[Int]Bool|) (|contents#$Memory_185332| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_132610 0)) ((($Memory_132610 (|domain#$Memory_132610| |T@[Int]Bool|) (|contents#$Memory_132610| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_132523 0)) ((($Memory_132523 (|domain#$Memory_132523| |T@[Int]Bool|) (|contents#$Memory_132523| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_132436 0)) ((($Memory_132436 (|domain#$Memory_132436| |T@[Int]Bool|) (|contents#$Memory_132436| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_127803 0)) ((($Memory_127803 (|domain#$Memory_127803| |T@[Int]Bool|) (|contents#$Memory_127803| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_127716 0)) ((($Memory_127716 (|domain#$Memory_127716| |T@[Int]Bool|) (|contents#$Memory_127716| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_132965 0)) ((($Memory_132965 (|domain#$Memory_132965| |T@[Int]Bool|) (|contents#$Memory_132965| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_133390 0)) ((($Memory_133390 (|domain#$Memory_133390| |T@[Int]Bool|) (|contents#$Memory_133390| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_185558 0)) ((($Memory_185558 (|domain#$Memory_185558| |T@[Int]Bool|) (|contents#$Memory_185558| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_132874 0)) ((($Memory_132874 (|domain#$Memory_132874| |T@[Int]Bool|) (|contents#$Memory_132874| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_145283 0)) ((($Memory_145283 (|domain#$Memory_145283| |T@[Int]Bool|) (|contents#$Memory_145283| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_133291 0)) ((($Memory_133291 (|domain#$Memory_133291| |T@[Int]Bool|) (|contents#$Memory_133291| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_185467 0)) ((($Memory_185467 (|domain#$Memory_185467| |T@[Int]Bool|) (|contents#$Memory_185467| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_132783 0)) ((($Memory_132783 (|domain#$Memory_132783| |T@[Int]Bool|) (|contents#$Memory_132783| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_147172 0)) ((($Memory_147172 (|domain#$Memory_147172| |T@[Int]Bool|) (|contents#$Memory_147172| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_133192 0)) ((($Memory_133192 (|domain#$Memory_133192| |T@[Int]Bool|) (|contents#$Memory_133192| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_127208 0)) ((($Memory_127208 (|domain#$Memory_127208| |T@[Int]Bool|) (|contents#$Memory_127208| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_127022 0)) ((($Memory_127022 (|domain#$Memory_127022| |T@[Int]Bool|) (|contents#$Memory_127022| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126958 0)) ((($Memory_126958 (|domain#$Memory_126958| |T@[Int]Bool|) (|contents#$Memory_126958| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_122961 0)) ((($Memory_122961 (|domain#$Memory_122961| |T@[Int]Bool|) (|contents#$Memory_122961| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_122874 0)) ((($Memory_122874 (|domain#$Memory_122874| |T@[Int]Bool|) (|contents#$Memory_122874| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_122787 0)) ((($Memory_122787 (|domain#$Memory_122787| |T@[Int]Bool|) (|contents#$Memory_122787| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_122700 0)) ((($Memory_122700 (|domain#$Memory_122700| |T@[Int]Bool|) (|contents#$Memory_122700| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_122613 0)) ((($Memory_122613 (|domain#$Memory_122613| |T@[Int]Bool|) (|contents#$Memory_122613| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_123226 0)) ((($Memory_123226 (|domain#$Memory_123226| |T@[Int]Bool|) (|contents#$Memory_123226| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_121739 0)) ((($Memory_121739 (|domain#$Memory_121739| |T@[Int]Bool|) (|contents#$Memory_121739| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_121805 0)) ((($Memory_121805 (|domain#$Memory_121805| |T@[Int]Bool|) (|contents#$Memory_121805| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_121658 0)) ((($Memory_121658 (|domain#$Memory_121658| |T@[Int]Bool|) (|contents#$Memory_121658| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_121577 0)) ((($Memory_121577 (|domain#$Memory_121577| |T@[Int]Bool|) (|contents#$Memory_121577| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_121496 0)) ((($Memory_121496 (|domain#$Memory_121496| |T@[Int]Bool|) (|contents#$Memory_121496| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_121415 0)) ((($Memory_121415 (|domain#$Memory_121415| |T@[Int]Bool|) (|contents#$Memory_121415| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_121301 0)) ((($Memory_121301 (|domain#$Memory_121301| |T@[Int]Bool|) (|contents#$Memory_121301| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_184469 0)) ((($Memory_184469 (|domain#$Memory_184469| |T@[Int]Bool|) (|contents#$Memory_184469| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_121334 0)) ((($Memory_121334 (|domain#$Memory_121334| |T@[Int]Bool|) (|contents#$Memory_121334| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_120790 0)) ((($Memory_120790 (|domain#$Memory_120790| |T@[Int]Bool|) (|contents#$Memory_120790| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_120232 0)) ((($Memory_120232 (|domain#$Memory_120232| |T@[Int]Bool|) (|contents#$Memory_120232| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_119905 0)) ((($Memory_119905 (|domain#$Memory_119905| |T@[Int]Bool|) (|contents#$Memory_119905| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_119411 0)) ((($Memory_119411 (|domain#$Memory_119411| |T@[Int]Bool|) (|contents#$Memory_119411| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_87373 0)) (((Multiset_87373 (|v#Multiset_87373| |T@[$EventRep]Int|) (|l#Multiset_87373| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_87373| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_87373|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_186553 0)) ((($Mutation_186553 (|l#$Mutation_186553| T@$Location) (|p#$Mutation_186553| (Seq Int)) (|v#$Mutation_186553| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_186509 0)) ((($Mutation_186509 (|l#$Mutation_186509| T@$Location) (|p#$Mutation_186509| (Seq Int)) (|v#$Mutation_186509| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_174559 0)) ((($Mutation_174559 (|l#$Mutation_174559| T@$Location) (|p#$Mutation_174559| (Seq Int)) (|v#$Mutation_174559| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_36781 0)) ((($Mutation_36781 (|l#$Mutation_36781| T@$Location) (|p#$Mutation_36781| (Seq Int)) (|v#$Mutation_36781| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_141277 0)) ((($Mutation_141277 (|l#$Mutation_141277| T@$Location) (|p#$Mutation_141277| (Seq Int)) (|v#$Mutation_141277| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_125699 0)) ((($Mutation_125699 (|l#$Mutation_125699| T@$Location) (|p#$Mutation_125699| (Seq Int)) (|v#$Mutation_125699| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_113195 0)) ((($Mutation_113195 (|l#$Mutation_113195| T@$Location) (|p#$Mutation_113195| (Seq Int)) (|v#$Mutation_113195| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13443 0)) ((($Mutation_13443 (|l#$Mutation_13443| T@$Location) (|p#$Mutation_13443| (Seq Int)) (|v#$Mutation_13443| Int) ) ) ))
(declare-datatypes ((T@$Mutation_107437 0)) ((($Mutation_107437 (|l#$Mutation_107437| T@$Location) (|p#$Mutation_107437| (Seq Int)) (|v#$Mutation_107437| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_106691 0)) ((($Mutation_106691 (|l#$Mutation_106691| T@$Location) (|p#$Mutation_106691| (Seq Int)) (|v#$Mutation_106691| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_105287 0)) ((($Mutation_105287 (|l#$Mutation_105287| T@$Location) (|p#$Mutation_105287| (Seq Int)) (|v#$Mutation_105287| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_104541 0)) ((($Mutation_104541 (|l#$Mutation_104541| T@$Location) (|p#$Mutation_104541| (Seq Int)) (|v#$Mutation_104541| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_103137 0)) ((($Mutation_103137 (|l#$Mutation_103137| T@$Location) (|p#$Mutation_103137| (Seq Int)) (|v#$Mutation_103137| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_102391 0)) ((($Mutation_102391 (|l#$Mutation_102391| T@$Location) (|p#$Mutation_102391| (Seq Int)) (|v#$Mutation_102391| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_100987 0)) ((($Mutation_100987 (|l#$Mutation_100987| T@$Location) (|p#$Mutation_100987| (Seq Int)) (|v#$Mutation_100987| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_100241 0)) ((($Mutation_100241 (|l#$Mutation_100241| T@$Location) (|p#$Mutation_100241| (Seq Int)) (|v#$Mutation_100241| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_98837 0)) ((($Mutation_98837 (|l#$Mutation_98837| T@$Location) (|p#$Mutation_98837| (Seq Int)) (|v#$Mutation_98837| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_98091 0)) ((($Mutation_98091 (|l#$Mutation_98091| T@$Location) (|p#$Mutation_98091| (Seq Int)) (|v#$Mutation_98091| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_96687 0)) ((($Mutation_96687 (|l#$Mutation_96687| T@$Location) (|p#$Mutation_96687| (Seq Int)) (|v#$Mutation_96687| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_95941 0)) ((($Mutation_95941 (|l#$Mutation_95941| T@$Location) (|p#$Mutation_95941| (Seq Int)) (|v#$Mutation_95941| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_94537 0)) ((($Mutation_94537 (|l#$Mutation_94537| T@$Location) (|p#$Mutation_94537| (Seq Int)) (|v#$Mutation_94537| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_93791 0)) ((($Mutation_93791 (|l#$Mutation_93791| T@$Location) (|p#$Mutation_93791| (Seq Int)) (|v#$Mutation_93791| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_92387 0)) ((($Mutation_92387 (|l#$Mutation_92387| T@$Location) (|p#$Mutation_92387| (Seq Int)) (|v#$Mutation_92387| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_91641 0)) ((($Mutation_91641 (|l#$Mutation_91641| T@$Location) (|p#$Mutation_91641| (Seq Int)) (|v#$Mutation_91641| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_90199 0)) ((($Mutation_90199 (|l#$Mutation_90199| T@$Location) (|p#$Mutation_90199| (Seq Int)) (|v#$Mutation_90199| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_89453 0)) ((($Mutation_89453 (|l#$Mutation_89453| T@$Location) (|p#$Mutation_89453| (Seq Int)) (|v#$Mutation_89453| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|) |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_87373_| (|T@[$1_Event_EventHandle]Multiset_87373| T@$1_Event_EventHandle) T@Multiset_87373)
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
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
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
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| (|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| (|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
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
(declare-fun ReverseVec_78786 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_77604 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_77801 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_77998 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_78983 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_78589 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_78392 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_78195 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_77407 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_87373| |T@[$1_Event_EventHandle]Multiset_87373|) |T@[$1_Event_EventHandle]Multiset_87373|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DesignatedDealerseqArraybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DesignatedDealerseqArraybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DesignatedDealerseqArraybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DesignatedDealerseqArraybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DesignatedDealerseqArraybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DesignatedDealerseqArraybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerseqArraybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerseqArraybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DesignatedDealerseqArraybpl.595:13|
 :skolemid |15|
))))
 :qid |DesignatedDealerseqArraybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DesignatedDealerseqArraybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DesignatedDealerseqArraybpl.608:17|
 :skolemid |18|
)))))
 :qid |DesignatedDealerseqArraybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DesignatedDealerseqArraybpl.775:13|
 :skolemid |20|
))))
 :qid |DesignatedDealerseqArraybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DesignatedDealerseqArraybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DesignatedDealerseqArraybpl.788:17|
 :skolemid |23|
)))))
 :qid |DesignatedDealerseqArraybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DesignatedDealerseqArraybpl.955:13|
 :skolemid |25|
))))
 :qid |DesignatedDealerseqArraybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DesignatedDealerseqArraybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DesignatedDealerseqArraybpl.968:17|
 :skolemid |28|
)))))
 :qid |DesignatedDealerseqArraybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DesignatedDealerseqArraybpl.1135:13|
 :skolemid |30|
))))
 :qid |DesignatedDealerseqArraybpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DesignatedDealerseqArraybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DesignatedDealerseqArraybpl.1148:17|
 :skolemid |33|
)))))
 :qid |DesignatedDealerseqArraybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |DesignatedDealerseqArraybpl.1315:13|
 :skolemid |35|
))))
 :qid |DesignatedDealerseqArraybpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DesignatedDealerseqArraybpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DesignatedDealerseqArraybpl.1328:17|
 :skolemid |38|
)))))
 :qid |DesignatedDealerseqArraybpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DesignatedDealerseqArraybpl.1495:13|
 :skolemid |40|
))))
 :qid |DesignatedDealerseqArraybpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DesignatedDealerseqArraybpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DesignatedDealerseqArraybpl.1508:17|
 :skolemid |43|
)))))
 :qid |DesignatedDealerseqArraybpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DesignatedDealerseqArraybpl.1675:13|
 :skolemid |45|
))))
 :qid |DesignatedDealerseqArraybpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DesignatedDealerseqArraybpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DesignatedDealerseqArraybpl.1688:17|
 :skolemid |48|
)))))
 :qid |DesignatedDealerseqArraybpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |DesignatedDealerseqArraybpl.1855:13|
 :skolemid |50|
))))
 :qid |DesignatedDealerseqArraybpl.1853:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DesignatedDealerseqArraybpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DesignatedDealerseqArraybpl.1868:17|
 :skolemid |53|
)))))
 :qid |DesignatedDealerseqArraybpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |DesignatedDealerseqArraybpl.2035:13|
 :skolemid |55|
))))
 :qid |DesignatedDealerseqArraybpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DesignatedDealerseqArraybpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DesignatedDealerseqArraybpl.2048:17|
 :skolemid |58|
)))))
 :qid |DesignatedDealerseqArraybpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |DesignatedDealerseqArraybpl.2215:13|
 :skolemid |60|
))))
 :qid |DesignatedDealerseqArraybpl.2213:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DesignatedDealerseqArraybpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DesignatedDealerseqArraybpl.2228:17|
 :skolemid |63|
)))))
 :qid |DesignatedDealerseqArraybpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u64'| (seq.nth v@@24 i@@30)))
 :qid |DesignatedDealerseqArraybpl.2395:13|
 :skolemid |65|
))))
 :qid |DesignatedDealerseqArraybpl.2393:29|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u64''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u64'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DesignatedDealerseqArraybpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DesignatedDealerseqArraybpl.2408:17|
 :skolemid |68|
)))))
 :qid |DesignatedDealerseqArraybpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u64'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u8'| (seq.nth v@@26 i@@33)))
 :qid |DesignatedDealerseqArraybpl.2575:13|
 :skolemid |70|
))))
 :qid |DesignatedDealerseqArraybpl.2573:28|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |DesignatedDealerseqArraybpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |DesignatedDealerseqArraybpl.2588:17|
 :skolemid |73|
)))))
 :qid |DesignatedDealerseqArraybpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DesignatedDealerseqArraybpl.2761:15|
 :skolemid |75|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DesignatedDealerseqArraybpl.2777:15|
 :skolemid |76|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DesignatedDealerseqArraybpl.2844:15|
 :skolemid |77|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DesignatedDealerseqArraybpl.2847:15|
 :skolemid |78|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_87373| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream) v@@28) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DesignatedDealerseqArraybpl.2949:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DesignatedDealerseqArraybpl.2955:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DesignatedDealerseqArraybpl.3005:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DesignatedDealerseqArraybpl.3011:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DesignatedDealerseqArraybpl.3061:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DesignatedDealerseqArraybpl.3067:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DesignatedDealerseqArraybpl.3117:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DesignatedDealerseqArraybpl.3123:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DesignatedDealerseqArraybpl.3173:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DesignatedDealerseqArraybpl.3179:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DesignatedDealerseqArraybpl.3229:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DesignatedDealerseqArraybpl.3235:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DesignatedDealerseqArraybpl.3285:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DesignatedDealerseqArraybpl.3291:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DesignatedDealerseqArraybpl.3341:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DesignatedDealerseqArraybpl.3347:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DesignatedDealerseqArraybpl.3397:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DesignatedDealerseqArraybpl.3403:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DesignatedDealerseqArraybpl.3453:60|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DesignatedDealerseqArraybpl.3459:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DesignatedDealerseqArraybpl.3509:66|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DesignatedDealerseqArraybpl.3515:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DesignatedDealerseqArraybpl.3565:60|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DesignatedDealerseqArraybpl.3571:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DesignatedDealerseqArraybpl.3621:63|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DesignatedDealerseqArraybpl.3627:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DesignatedDealerseqArraybpl.3677:79|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DesignatedDealerseqArraybpl.3683:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DesignatedDealerseqArraybpl.3733:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DesignatedDealerseqArraybpl.3739:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DesignatedDealerseqArraybpl.3789:88|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DesignatedDealerseqArraybpl.3795:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DesignatedDealerseqArraybpl.3845:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DesignatedDealerseqArraybpl.3851:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DesignatedDealerseqArraybpl.3905:15|
 :skolemid |115|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DesignatedDealerseqArraybpl.3914:15|
 :skolemid |116|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DesignatedDealerseqArraybpl.3939:61|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DesignatedDealerseqArraybpl.4116:36|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DesignatedDealerseqArraybpl.4135:71|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DesignatedDealerseqArraybpl.4199:46|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DesignatedDealerseqArraybpl.4212:64|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DesignatedDealerseqArraybpl.4225:75|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DesignatedDealerseqArraybpl.4238:72|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DesignatedDealerseqArraybpl.4267:55|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DesignatedDealerseqArraybpl.4289:46|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DesignatedDealerseqArraybpl.4307:49|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DesignatedDealerseqArraybpl.4382:71|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DesignatedDealerseqArraybpl.4396:91|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DesignatedDealerseqArraybpl.4410:113|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DesignatedDealerseqArraybpl.4424:75|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DesignatedDealerseqArraybpl.4438:73|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DesignatedDealerseqArraybpl.4458:48|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DesignatedDealerseqArraybpl.4474:57|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DesignatedDealerseqArraybpl.4488:83|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DesignatedDealerseqArraybpl.4502:103|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DesignatedDealerseqArraybpl.4516:125|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DesignatedDealerseqArraybpl.4530:87|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DesignatedDealerseqArraybpl.4544:85|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |DesignatedDealerseqArraybpl.4558:48|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |DesignatedDealerseqArraybpl.4579:45|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |DesignatedDealerseqArraybpl.4593:51|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |DesignatedDealerseqArraybpl.4616:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |DesignatedDealerseqArraybpl.4922:49|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |DesignatedDealerseqArraybpl.4935:65|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |DesignatedDealerseqArraybpl.5489:45|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |DesignatedDealerseqArraybpl.5502:45|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |DesignatedDealerseqArraybpl.5515:37|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DesignatedDealerseqArraybpl.5528:55|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DesignatedDealerseqArraybpl.5542:55|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DesignatedDealerseqArraybpl.5562:38|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DesignatedDealerseqArraybpl.5583:44|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DesignatedDealerseqArraybpl.5634:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DesignatedDealerseqArraybpl.5696:53|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |DesignatedDealerseqArraybpl.5758:45|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |DesignatedDealerseqArraybpl.5784:55|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |DesignatedDealerseqArraybpl.5798:55|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@40) true)
 :qid |DesignatedDealerseqArraybpl.5812:47|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@41)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@41))))
 :qid |DesignatedDealerseqArraybpl.5829:38|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@42)))
 :qid |DesignatedDealerseqArraybpl.5843:48|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@43)))
 :qid |DesignatedDealerseqArraybpl.5857:48|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@44) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@44)))
 :qid |DesignatedDealerseqArraybpl.5871:40|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DesignatedDealerseqArraybpl.5891:41|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@46)))
 :qid |DesignatedDealerseqArraybpl.5906:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@47)))
 :qid |DesignatedDealerseqArraybpl.5920:53|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@48)))
 :qid |DesignatedDealerseqArraybpl.5934:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49))))
 :qid |DesignatedDealerseqArraybpl.5951:60|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50))))
 :qid |DesignatedDealerseqArraybpl.5968:60|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@51))))
 :qid |DesignatedDealerseqArraybpl.5985:52|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52))))
 :qid |DesignatedDealerseqArraybpl.6002:57|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53) true)
 :qid |DesignatedDealerseqArraybpl.8914:68|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))))
 :qid |DesignatedDealerseqArraybpl.8936:66|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))))
 :qid |DesignatedDealerseqArraybpl.8962:66|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))))
 :qid |DesignatedDealerseqArraybpl.8991:56|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))))
 :qid |DesignatedDealerseqArraybpl.9021:56|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@58) true)
 :qid |DesignatedDealerseqArraybpl.9355:31|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@59) true)
 :qid |DesignatedDealerseqArraybpl.9699:31|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@60)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@60)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@60))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@60))))
 :qid |DesignatedDealerseqArraybpl.9718:35|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@61)))
 :qid |DesignatedDealerseqArraybpl.10139:45|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@62))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@62))))
 :qid |DesignatedDealerseqArraybpl.10158:50|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@63)))
 :qid |DesignatedDealerseqArraybpl.10173:52|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@64) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@64)))
 :qid |DesignatedDealerseqArraybpl.10197:38|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@65) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@65)))
 :qid |DesignatedDealerseqArraybpl.10211:39|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@65))
)))
(assert (forall ((s@@66 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66))))
 :qid |DesignatedDealerseqArraybpl.10238:65|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@67))))
 :qid |DesignatedDealerseqArraybpl.10623:60|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68))))
 :qid |DesignatedDealerseqArraybpl.10640:66|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@69)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@69))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@69))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@69))))
 :qid |DesignatedDealerseqArraybpl.10669:50|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@70) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@70)))
 :qid |DesignatedDealerseqArraybpl.10688:45|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@71)) true))
 :qid |DesignatedDealerseqArraybpl.11007:87|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |DesignatedDealerseqArraybpl.11219:47|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |DesignatedDealerseqArraybpl.11239:58|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))))
 :qid |DesignatedDealerseqArraybpl.11260:61|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))))
 :qid |DesignatedDealerseqArraybpl.11282:61|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@76)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@76))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@76))))
 :qid |DesignatedDealerseqArraybpl.11304:53|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76))
)))
(assert (forall ((s@@77 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@77) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@77)))
 :qid |DesignatedDealerseqArraybpl.16293:39|
 :skolemid |423|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@78))))
 :qid |DesignatedDealerseqArraybpl.16315:58|
 :skolemid |424|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79))))
 :qid |DesignatedDealerseqArraybpl.16332:58|
 :skolemid |425|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80) true)
 :qid |DesignatedDealerseqArraybpl.16347:51|
 :skolemid |426|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81))))
 :qid |DesignatedDealerseqArraybpl.16364:60|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@82)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@82))))
 :qid |DesignatedDealerseqArraybpl.16662:47|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@83)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@83))))
 :qid |DesignatedDealerseqArraybpl.16684:63|
 :skolemid |429|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@84)))
 :qid |DesignatedDealerseqArraybpl.16699:57|
 :skolemid |430|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@85)))
 :qid |DesignatedDealerseqArraybpl.16712:55|
 :skolemid |431|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@86)))
 :qid |DesignatedDealerseqArraybpl.16726:55|
 :skolemid |432|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@87)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@87))))
 :qid |DesignatedDealerseqArraybpl.16743:54|
 :skolemid |433|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@88)))
 :qid |DesignatedDealerseqArraybpl.16757:55|
 :skolemid |434|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@89)))
 :qid |DesignatedDealerseqArraybpl.16771:57|
 :skolemid |435|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@90))))
 :qid |DesignatedDealerseqArraybpl.16793:56|
 :skolemid |436|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@91))))
 :qid |DesignatedDealerseqArraybpl.16818:52|
 :skolemid |437|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@92)))
 :qid |DesignatedDealerseqArraybpl.16834:54|
 :skolemid |438|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@93)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@93))))
 :qid |DesignatedDealerseqArraybpl.17706:47|
 :skolemid |439|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@94)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@94))))
 :qid |DesignatedDealerseqArraybpl.17730:47|
 :skolemid |440|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@95)))
 :qid |DesignatedDealerseqArraybpl.17971:49|
 :skolemid |441|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@96)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@96))))
 :qid |DesignatedDealerseqArraybpl.18014:49|
 :skolemid |442|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@97)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@97))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@97))))
 :qid |DesignatedDealerseqArraybpl.18043:48|
 :skolemid |443|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@98)))
 :qid |DesignatedDealerseqArraybpl.18338:47|
 :skolemid |444|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98))
)))
(assert (forall ((v@@29 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13296 v@@29)))
 (and (= (seq.len r@@0) (seq.len v@@29)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@0))) (= (seq.nth r@@0 i@@36) (seq.nth v@@29 (- (- (seq.len v@@29) i@@36) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@36))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13296 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_78786 v@@30)))
 (and (= (seq.len r@@1) (seq.len v@@30)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@1))) (= (seq.nth r@@1 i@@37) (seq.nth v@@30 (- (- (seq.len v@@30) i@@37) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@37))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_78786 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_77604 v@@31)))
 (and (= (seq.len r@@2) (seq.len v@@31)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@2))) (= (seq.nth r@@2 i@@38) (seq.nth v@@31 (- (- (seq.len v@@31) i@@38) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@38))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77604 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_77801 v@@32)))
 (and (= (seq.len r@@3) (seq.len v@@32)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@3))) (= (seq.nth r@@3 i@@39) (seq.nth v@@32 (- (- (seq.len v@@32) i@@39) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@39))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77801 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_77998 v@@33)))
 (and (= (seq.len r@@4) (seq.len v@@33)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@4))) (= (seq.nth r@@4 i@@40) (seq.nth v@@33 (- (- (seq.len v@@33) i@@40) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@40))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77998 v@@33))
)))
(assert (forall ((v@@34 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_78983 v@@34)))
 (and (= (seq.len r@@5) (seq.len v@@34)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@5))) (= (seq.nth r@@5 i@@41) (seq.nth v@@34 (- (- (seq.len v@@34) i@@41) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@41))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_78983 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_78589 v@@35)))
 (and (= (seq.len r@@6) (seq.len v@@35)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@6))) (= (seq.nth r@@6 i@@42) (seq.nth v@@35 (- (- (seq.len v@@35) i@@42) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@42))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_78589 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_78392 v@@36)))
 (and (= (seq.len r@@7) (seq.len v@@36)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@7))) (= (seq.nth r@@7 i@@43) (seq.nth v@@36 (- (- (seq.len v@@36) i@@43) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@43))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_78392 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_78195 v@@37)))
 (and (= (seq.len r@@8) (seq.len v@@37)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@8))) (= (seq.nth r@@8 i@@44) (seq.nth v@@37 (- (- (seq.len v@@37) i@@44) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@44))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_78195 v@@37))
)))
(assert (forall ((v@@38 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_77407 v@@38)))
 (and (= (seq.len r@@9) (seq.len v@@38)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@9))) (= (seq.nth r@@9 i@@45) (seq.nth v@@38 (- (- (seq.len v@@38) i@@45) 1))))
 :qid |DesignatedDealerseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@45))
))))
 :qid |DesignatedDealerseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77407 v@@38))
)))
(assert (forall ((|l#0| Bool) (i@@46 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46) |l#0|)
 :qid |DesignatedDealerseqArraybpl.250:54|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_87373|) (|l#1| |T@[$1_Event_EventHandle]Multiset_87373|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| |l#1| handle@@0))))
(Multiset_87373 (|lambda#3| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| |l#0@@0| handle@@0)) (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DesignatedDealerseqArraybpl.2918:13|
 :skolemid |525|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@39) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@39) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@39)))
 :qid |DesignatedDealerseqArraybpl.129:29|
 :skolemid |526|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@39))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@2| () T@$Memory_133390)
(declare-fun $t18 () Int)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_132965)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t15 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_119905)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t1 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_150885)
(declare-fun $t5 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_127208)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_133390)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_133390)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_133390)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t21 () Bool)
(declare-fun $t10@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t10 () Int)
(declare-fun $t17 () Int)
(declare-fun $t19 () Int)
(declare-fun $t12 () Bool)
(declare-fun _$t0 () T@$signer)
(declare-fun $t20 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14 () Int)
(declare-fun $t9 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t8 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_132436)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_132523)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_132610)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_127716)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_127803)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_133192)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_132783)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_133291)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_132874)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| Int) |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_126958)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_127022)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 283298) (let ((anon10_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t18))) (and (= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t15))) (and (=> (= (ControlFlow 0 205985) (- 0 285186)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 205985) (- 0 285198)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 205985) (- 0 285216)) (not (not (= (|$addr#$signer| _$t1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1) 186537453))) (and (=> (= (ControlFlow 0 205985) (- 0 285230)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 205985) (- 0 285242)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7)) 2))) (and (=> (= (ControlFlow 0 205985) (- 0 285260)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5))) (and (=> (= (ControlFlow 0 205985) (- 0 285272)) (not (let ((addr@@0 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0)))))) (=> (not (let ((addr@@1 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1))))) (and (=> (= (ControlFlow 0 205985) (- 0 285280)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (and (=> (= (ControlFlow 0 205985) (- 0 285290)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5)) (=> (= (ControlFlow 0 205985) (- 0 285300)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= |$1_Diem_PreburnQueue'#0'_$memory@1| ($Memory_133390 (|Store__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 false) (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@1|) (= (ControlFlow 0 205823) 205985))) anon10_correct)))
(let ((anon15_Then_correct  (=> (and (and |$temp_0'bool'@0| (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_133390 (|Store__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 |$temp_0'$1_Diem_PreburnQueue'#0''@0|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@0|) (= (ControlFlow 0 205997) 205985))) anon10_correct)))
(let ((anon14_Else_correct  (=> (not $t21) (and (=> (= (ControlFlow 0 205811) 205997) anon15_Then_correct) (=> (= (ControlFlow 0 205811) 205823) anon15_Else_correct)))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 205605) (- 0 284842)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@2 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@3 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 205605) (- 0 284934)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) (= 5 $t10@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t10@0))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7)) 2)) (= 3 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5)) (= 5 $t10@0))) (and (let ((addr@@4 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4)))) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5) (= 6 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5) (= 1 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@0))))))))
(let ((anon14_Then_correct  (=> $t21 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t16)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t16)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t17)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t17)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t19)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t19)) 1)) (= 3 $t10))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (let ((addr@@5 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5)))) (= 7 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t15) (= 6 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t15) (= 1 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 206231) 205605))) L3_correct))))
(let ((anon13_Then_correct  (=> $t12 (=> (and (= $t15 (|$addr#$signer| _$t0)) (= $t16 (|$addr#$signer| _$t0))) (=> (and (and (= $t17 (|$addr#$signer| _$t0)) (= $t18 (|$addr#$signer| _$t0))) (and (= $t19 (|$addr#$signer| _$t1)) (= $t20 (|$addr#$signer| _$t0)))) (and (=> (= (ControlFlow 0 205805) (- 0 284440)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15) (=> (= $t21  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t16)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t16)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t17))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t17)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t19)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (let ((addr@@6 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@6))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t15)) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t15))) (and (=> (= (ControlFlow 0 205805) 206231) anon14_Then_correct) (=> (= (ControlFlow 0 205805) 205811) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (and (not $t12) (= $t14 $t14)) (and (= $t10@0 $t14) (= (ControlFlow 0 205313) 205605))) L3_correct)))
(let ((anon12_Else_correct  (=> (and (not $t9) (|$IsValid'address'| $t11)) (=> (and (and (and (= $t11 (|$addr#$signer| _$t0)) (= $t11 $t11)) (and (= $t12 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t11)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14) (= $t14 5)) (and (= $t14 $t14) (= $t12 $t12)))) (and (=> (= (ControlFlow 0 205297) 205805) anon13_Then_correct) (=> (= (ControlFlow 0 205297) 205313) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> $t9 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8)) 1)) (= 3 $t10))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 206303) 205605))) L3_correct))))
(let ((anon0$1_correct  (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DesignatedDealerseqArraybpl.11361:22|
 :skolemid |194|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DesignatedDealerseqArraybpl.11361:269|
 :skolemid |195|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DesignatedDealerseqArraybpl.11361:517|
 :skolemid |196|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |DesignatedDealerseqArraybpl.11369:21|
 :skolemid |197|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |DesignatedDealerseqArraybpl.11369:231|
 :skolemid |198|
)))) (=> (and (and (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |DesignatedDealerseqArraybpl.11373:22|
 :skolemid |199|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |DesignatedDealerseqArraybpl.11373:293|
 :skolemid |200|
))) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@3)) 2))))
 :qid |DesignatedDealerseqArraybpl.11373:565|
 :skolemid |201|
))) (and (and (forall ((dd_addr Int) ) (!  (=> (|$IsValid'address'| dd_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr)))))
 :qid |DesignatedDealerseqArraybpl.11377:22|
 :skolemid |202|
)) (forall ((dd_addr@@0 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@0) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@0))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@0)))))
 :qid |DesignatedDealerseqArraybpl.11377:375|
 :skolemid |203|
))) (forall ((dd_addr@@1 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@1) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@1))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@1)))))
 :qid |DesignatedDealerseqArraybpl.11377:729|
 :skolemid |204|
)))) (and (and (and (forall ((dd_addr@@2 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@2))))
 :qid |DesignatedDealerseqArraybpl.11381:22|
 :skolemid |205|
)) (forall ((dd_addr@@3 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@3) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@3))))
 :qid |DesignatedDealerseqArraybpl.11381:220|
 :skolemid |206|
))) (forall ((dd_addr@@4 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@4) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@4))))
 :qid |DesignatedDealerseqArraybpl.11381:419|
 :skolemid |207|
))) (and (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11385:22|
 :skolemid |208|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11385:222|
 :skolemid |209|
))) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11385:423|
 :skolemid |210|
))))) (=> (and (and (and (and (and (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11389:22|
 :skolemid |211|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11389:227|
 :skolemid |212|
))) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11389:433|
 :skolemid |213|
))) (|$IsValid'address'| (|$addr#$signer| _$t0))) (and (|$IsValid'address'| (|$addr#$signer| _$t1)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DesignatedDealerseqArraybpl.11402:20|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@0) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.11406:20|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@1))
 :qid |DesignatedDealerseqArraybpl.11410:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@2) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@47 $i_2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2) i@@47)))) 0)))
 :qid |DesignatedDealerseqArraybpl.11415:199|
 :skolemid |217|
))))))
 :qid |DesignatedDealerseqArraybpl.11414:20|
 :skolemid |218|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@3)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@3))
 :qid |DesignatedDealerseqArraybpl.11419:20|
 :skolemid |219|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@3))
))))) (and (and (and (= $t5 (|$addr#$signer| _$t0)) (= $t6 (|$addr#$signer| _$t1))) (and (= $t7 (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t5))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t8 (|$addr#$signer| _$t1)) (= $t9  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= (|$addr#$signer| _$t1) 186537453)))))))) (and (=> (= (ControlFlow 0 205227) 206303) anon12_Then_correct) (=> (= (ControlFlow 0 205227) 205297) anon12_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_87373| stream@@0) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@0) v@@40) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 204338) 205227)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 283298) 204338) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| () T@$Memory_133192)
(declare-fun $t18@@0 () Int)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t15@@0 () Int)
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t7@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_133192)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_133192)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t21@@0 () Bool)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t19@@0 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $t20@@0 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@0 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun $t11@@0 () Int)
(declare-fun $t8@@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_119411)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 285512) (let ((anon10_correct@@0  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2|) $t18@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t18@@0))) (and (= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2|) $t18@@0))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2|) $t15@@0))) (and (=> (= (ControlFlow 0 208206) (- 0 287410)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 208206) (- 0 287422)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 208206) (- 0 287440)) (not (not (= (|$addr#$signer| _$t1@@0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 186537453))) (and (=> (= (ControlFlow 0 208206) (- 0 287454)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 208206) (- 0 287466)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (and (=> (= (ControlFlow 0 208206) (- 0 287484)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 208206) (- 0 287496)) (not (let ((addr@@13 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@13) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@13)))))) (=> (not (let ((addr@@14 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@14) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@14))))) (and (=> (= (ControlFlow 0 208206) (- 0 287504)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (and (=> (= (ControlFlow 0 208206) (- 0 287514)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (=> (= (ControlFlow 0 208206) (- 0 287524)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@0@@0|) (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0 false) (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|)))) (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 208044) 208206))) anon10_correct@@0)))
(let ((anon15_Then_correct@@0  (=> (and (and |$temp_0'bool'@0@@0| (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0|)))) (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0|) (= (ControlFlow 0 208218) 208206))) anon10_correct@@0)))
(let ((anon14_Else_correct@@0  (=> (not $t21@@0) (and (=> (= (ControlFlow 0 208032) 208218) anon15_Then_correct@@0) (=> (= (ControlFlow 0 208032) 208044) anon15_Else_correct@@0)))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 207826) (- 0 287066)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (let ((addr@@15 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@15))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (let ((addr@@16 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@16) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@16))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 207826) (- 0 287158)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t10@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t10@0@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@0)) 2)) (= 3 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (= 5 $t10@0@@0))) (and (let ((addr@@17 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@17) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@17)))) (= 7 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0) (= 6 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0) (= 1 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@0@@0))))))))
(let ((anon14_Then_correct@@0  (=> $t21@@0 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@0)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@0)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@0)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@0)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@0)) 1)) (= 3 $t10@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@0))) (and (let ((addr@@18 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@18) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@18)))) (= 7 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0) (= 6 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t15@@0) (= 1 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 208452) 207826))) L3_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t12@@0 (=> (and (= $t15@@0 (|$addr#$signer| _$t0@@0)) (= $t16@@0 (|$addr#$signer| _$t0@@0))) (=> (and (and (= $t17@@0 (|$addr#$signer| _$t0@@0)) (= $t18@@0 (|$addr#$signer| _$t0@@0))) (and (= $t19@@0 (|$addr#$signer| _$t1@@0)) (= $t20@@0 (|$addr#$signer| _$t0@@0)))) (and (=> (= (ControlFlow 0 208026) (- 0 286664)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t15@@0)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t15@@0) (=> (= $t21@@0  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (let ((addr@@19 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@19) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@19))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t15@@0))) (and (=> (= (ControlFlow 0 208026) 208452) anon14_Then_correct@@0) (=> (= (ControlFlow 0 208026) 208032) anon14_Else_correct@@0))))))))))
(let ((anon13_Else_correct@@0  (=> (and (and (not $t12@@0) (= $t14@@0 $t14@@0)) (and (= $t10@0@@0 $t14@@0) (= (ControlFlow 0 207534) 207826))) L3_correct@@0)))
(let ((anon12_Else_correct@@0  (=> (and (not $t9@@0) (|$IsValid'address'| $t11@@0)) (=> (and (and (and (= $t11@@0 (|$addr#$signer| _$t0@@0)) (= $t11@@0 $t11@@0)) (and (= $t12@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t11@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 5)) (and (= $t14@@0 $t14@@0) (= $t12@@0 $t12@@0)))) (and (=> (= (ControlFlow 0 207518) 208026) anon13_Then_correct@@0) (=> (= (ControlFlow 0 207518) 207534) anon13_Else_correct@@0))))))
(let ((anon12_Then_correct@@0  (=> $t9@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@0)) 1)) (= 3 $t10@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 208524) 207826))) L3_correct@@0))))
(let ((anon0$1_correct@@0  (=> (and (and (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DesignatedDealerseqArraybpl.11778:22|
 :skolemid |220|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |DesignatedDealerseqArraybpl.11778:269|
 :skolemid |221|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |DesignatedDealerseqArraybpl.11778:517|
 :skolemid |222|
))) (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |DesignatedDealerseqArraybpl.11786:21|
 :skolemid |223|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |DesignatedDealerseqArraybpl.11786:231|
 :skolemid |224|
)))) (and (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@6)) 2))))
 :qid |DesignatedDealerseqArraybpl.11790:22|
 :skolemid |225|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |DesignatedDealerseqArraybpl.11790:293|
 :skolemid |226|
))) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@8)) 2))))
 :qid |DesignatedDealerseqArraybpl.11790:565|
 :skolemid |227|
)))) (=> (and (and (and (and (and (forall ((dd_addr@@5 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@5) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@5))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@5)))))
 :qid |DesignatedDealerseqArraybpl.11794:22|
 :skolemid |228|
)) (forall ((dd_addr@@6 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@6) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@6))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@6)))))
 :qid |DesignatedDealerseqArraybpl.11794:375|
 :skolemid |229|
))) (forall ((dd_addr@@7 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@7) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@7))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@7)))))
 :qid |DesignatedDealerseqArraybpl.11794:729|
 :skolemid |230|
))) (and (and (forall ((dd_addr@@8 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@8) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@8))))
 :qid |DesignatedDealerseqArraybpl.11798:22|
 :skolemid |231|
)) (forall ((dd_addr@@9 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@9) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@9))))
 :qid |DesignatedDealerseqArraybpl.11798:220|
 :skolemid |232|
))) (forall ((dd_addr@@10 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@10) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@10))))
 :qid |DesignatedDealerseqArraybpl.11798:419|
 :skolemid |233|
)))) (and (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11802:22|
 :skolemid |234|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11802:222|
 :skolemid |235|
))) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11802:423|
 :skolemid |236|
))) (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11806:22|
 :skolemid |237|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11806:227|
 :skolemid |238|
))) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.11806:433|
 :skolemid |239|
))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119411| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@0))) (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |DesignatedDealerseqArraybpl.11823:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.11827:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@6)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@6))
 :qid |DesignatedDealerseqArraybpl.11831:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@7)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@7) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@7)) 256) (let (($range_1@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@7)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@48 $i_2@@0))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@7) i@@48)))) 0)))
 :qid |DesignatedDealerseqArraybpl.11836:223|
 :skolemid |243|
))))))
 :qid |DesignatedDealerseqArraybpl.11835:20|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@8)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@8))
 :qid |DesignatedDealerseqArraybpl.11840:20|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@8))
))))) (and (and (and (= $t5@@0 (|$addr#$signer| _$t0@@0)) (= $t6@@0 (|$addr#$signer| _$t1@@0))) (and (= $t7@@0 (|$addr#$signer| _$t0@@0)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t5@@0))) (and (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0)) (and (= $t8@@0 (|$addr#$signer| _$t1@@0)) (= $t9@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))))))))) (and (=> (= (ControlFlow 0 207448) 208524) anon12_Then_correct@@0) (=> (= (ControlFlow 0 207448) 207518) anon12_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_87373| stream@@1) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@1) v@@41) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 206549) 207448)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 285512) 206549) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| () T@$Memory_133291)
(declare-fun $t18@@1 () Int)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t15@@1 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t7@@1 () Int)
(declare-fun $t5@@1 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1| () T@$Memory_133291)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0| () T@$Memory_133291)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0| () |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t21@@1 () Bool)
(declare-fun $t10@0@@1 () Int)
(declare-fun $t16@@1 () Int)
(declare-fun $t10@@1 () Int)
(declare-fun $t17@@1 () Int)
(declare-fun $t19@@1 () Int)
(declare-fun $t12@@1 () Bool)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t20@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@1 () Int)
(declare-fun $t9@@1 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun $t8@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 287540) (let ((anon10_correct@@1  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t18@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t18@@1))) (and (= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t18@@1))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t15@@1))) (and (=> (= (ControlFlow 0 210419) (- 0 289428)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1))) (and (=> (= (ControlFlow 0 210419) (- 0 289440)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (and (=> (= (ControlFlow 0 210419) (- 0 289458)) (not (not (= (|$addr#$signer| _$t1@@1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 186537453))) (and (=> (= (ControlFlow 0 210419) (- 0 289472)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1))) (and (=> (= (ControlFlow 0 210419) (- 0 289484)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (and (=> (= (ControlFlow 0 210419) (- 0 289502)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (and (=> (= (ControlFlow 0 210419) (- 0 289514)) (not (let ((addr@@26 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@26) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@26)))))) (=> (not (let ((addr@@27 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@27) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@27))))) (and (=> (= (ControlFlow 0 210419) (- 0 289522)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1)) (and (=> (= (ControlFlow 0 210419) (- 0 289532)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1)) (=> (= (ControlFlow 0 210419) (- 0 289542)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1| ($Memory_133291 (|Store__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1 false) (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|)))) (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 210257) 210419))) anon10_correct@@1)))
(let ((anon15_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0| ($Memory_133291 (|Store__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1 |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0|)))) (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0|) (= (ControlFlow 0 210431) 210419))) anon10_correct@@1)))
(let ((anon14_Else_correct@@1  (=> (not $t21@@1) (and (=> (= (ControlFlow 0 210245) 210431) anon15_Then_correct@@1) (=> (= (ControlFlow 0 210245) 210257) anon15_Else_correct@@1)))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 210039) (- 0 289084)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (let ((addr@@28 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@28) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@28))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (let ((addr@@29 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@29) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@29))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 210039) (- 0 289176)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) (= 5 $t10@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@1)) 1)) (= 3 $t10@0@@1))) (and (not (= (|$addr#$signer| _$t1@@1) 186537453)) (= 2 $t10@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1)) (= 5 $t10@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@1)) 2)) (= 3 $t10@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (= 5 $t10@0@@1))) (and (let ((addr@@30 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@30) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@30)))) (= 7 $t10@0@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1) (= 6 $t10@0@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1) (= 1 $t10@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@0@@1))))))))
(let ((anon14_Then_correct@@1  (=> $t21@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@1)) (= 5 $t10@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@1)) 2)) (= 3 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@1)) (= 5 $t10@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@1)) 2)) (= 3 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@1)) (= 5 $t10@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@1)) 1)) (= 3 $t10@@1))) (and (not (= (|$addr#$signer| _$t1@@1) 186537453)) (= 2 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@@1))) (and (let ((addr@@31 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@31) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@31)))) (= 7 $t10@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1) (= 6 $t10@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t15@@1) (= 1 $t10@@1))) (= $t10@@1 $t10@@1)) (and (= $t10@0@@1 $t10@@1) (= (ControlFlow 0 210665) 210039))) L3_correct@@1))))
(let ((anon13_Then_correct@@1  (=> $t12@@1 (=> (and (= $t15@@1 (|$addr#$signer| _$t0@@1)) (= $t16@@1 (|$addr#$signer| _$t0@@1))) (=> (and (and (= $t17@@1 (|$addr#$signer| _$t0@@1)) (= $t18@@1 (|$addr#$signer| _$t0@@1))) (and (= $t19@@1 (|$addr#$signer| _$t1@@1)) (= $t20@@1 (|$addr#$signer| _$t0@@1)))) (and (=> (= (ControlFlow 0 210239) (- 0 288682)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t15@@1)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t15@@1) (=> (= $t21@@1  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t16@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t17@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t19@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (let ((addr@@32 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@32))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t15@@1))) (and (=> (= (ControlFlow 0 210239) 210665) anon14_Then_correct@@1) (=> (= (ControlFlow 0 210239) 210245) anon14_Else_correct@@1))))))))))
(let ((anon13_Else_correct@@1  (=> (and (and (not $t12@@1) (= $t14@@1 $t14@@1)) (and (= $t10@0@@1 $t14@@1) (= (ControlFlow 0 209747) 210039))) L3_correct@@1)))
(let ((anon12_Else_correct@@1  (=> (and (not $t9@@1) (|$IsValid'address'| $t11@@1)) (=> (and (and (and (= $t11@@1 (|$addr#$signer| _$t0@@1)) (= $t11@@1 $t11@@1)) (and (= $t12@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t11@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 5)) (and (= $t14@@1 $t14@@1) (= $t12@@1 $t12@@1)))) (and (=> (= (ControlFlow 0 209731) 210239) anon13_Then_correct@@1) (=> (= (ControlFlow 0 209731) 209747) anon13_Else_correct@@1))))))
(let ((anon12_Then_correct@@1  (=> $t9@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@1)) (= 5 $t10@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@1)) 1)) (= 3 $t10@@1))) (and (not (= (|$addr#$signer| _$t1@@1) 186537453)) (= 2 $t10@@1))) (= $t10@@1 $t10@@1)) (and (= $t10@0@@1 $t10@@1) (= (ControlFlow 0 210737) 210039))) L3_correct@@1))))
(let ((anon0$1_correct@@1  (=> (and (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |DesignatedDealerseqArraybpl.12199:22|
 :skolemid |246|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |DesignatedDealerseqArraybpl.12199:269|
 :skolemid |247|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |DesignatedDealerseqArraybpl.12199:517|
 :skolemid |248|
))) (and (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@9)) 1))))
 :qid |DesignatedDealerseqArraybpl.12207:21|
 :skolemid |249|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@10)) 1))))
 :qid |DesignatedDealerseqArraybpl.12207:231|
 :skolemid |250|
)))) (=> (and (and (and (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@11)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@11)) 2))))
 :qid |DesignatedDealerseqArraybpl.12211:22|
 :skolemid |251|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@12)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@12)) 2))))
 :qid |DesignatedDealerseqArraybpl.12211:293|
 :skolemid |252|
))) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@13)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@13)) 2))))
 :qid |DesignatedDealerseqArraybpl.12211:565|
 :skolemid |253|
))) (and (and (forall ((dd_addr@@11 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@11) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@11))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@11)))))
 :qid |DesignatedDealerseqArraybpl.12215:22|
 :skolemid |254|
)) (forall ((dd_addr@@12 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@12) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@12))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@12)))))
 :qid |DesignatedDealerseqArraybpl.12215:375|
 :skolemid |255|
))) (forall ((dd_addr@@13 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@13) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@13))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@13)))))
 :qid |DesignatedDealerseqArraybpl.12215:729|
 :skolemid |256|
)))) (and (and (and (forall ((dd_addr@@14 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@14) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@14))))
 :qid |DesignatedDealerseqArraybpl.12219:22|
 :skolemid |257|
)) (forall ((dd_addr@@15 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@15) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@15))))
 :qid |DesignatedDealerseqArraybpl.12219:220|
 :skolemid |258|
))) (forall ((dd_addr@@16 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@16) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@16))))
 :qid |DesignatedDealerseqArraybpl.12219:419|
 :skolemid |259|
))) (and (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12223:22|
 :skolemid |260|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12223:222|
 :skolemid |261|
))) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12223:423|
 :skolemid |262|
))))) (=> (and (and (and (and (and (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12227:22|
 :skolemid |263|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12227:227|
 :skolemid |264|
))) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@38) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12227:433|
 :skolemid |265|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@1))) (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DesignatedDealerseqArraybpl.12240:20|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@9))
)))) (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@10)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@10) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@10)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@10) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.12244:20|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@11)))
(|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| $rsc@@11))
 :qid |DesignatedDealerseqArraybpl.12248:20|
 :skolemid |268|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@11))
))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@12)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| $rsc@@12) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@12)) 256) (let (($range_1@@1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@12)))))
(forall (($i_2@@1 Int) ) (!  (=> ($InRange $range_1@@1 $i_2@@1) (let ((i@@49 $i_2@@1))
(> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@12) i@@49)))) 0)))
 :qid |DesignatedDealerseqArraybpl.12253:223|
 :skolemid |269|
))))))
 :qid |DesignatedDealerseqArraybpl.12252:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@13)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@13))
 :qid |DesignatedDealerseqArraybpl.12257:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@13))
))))) (and (and (and (= $t5@@1 (|$addr#$signer| _$t0@@1)) (= $t6@@1 (|$addr#$signer| _$t1@@1))) (and (= $t7@@1 (|$addr#$signer| _$t0@@1)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t5@@1))) (and (and (= _$t0@@1 _$t0@@1) (= _$t1@@1 _$t1@@1)) (and (= $t8@@1 (|$addr#$signer| _$t1@@1)) (= $t9@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453)))))))) (and (=> (= (ControlFlow 0 209661) 210737) anon12_Then_correct@@1) (=> (= (ControlFlow 0 209661) 209731) anon12_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_87373| stream@@2) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@2) v@@42) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 208772) 209661)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 287540) 208772) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@2 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_exists_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 289554) (let ((anon0$1_correct@@2  (=> (|$IsValid'address'| _$t0@@2) (=> (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@14)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@14))
 :qid |DesignatedDealerseqArraybpl.12585:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@14))
)) (= _$t0@@2 _$t0@@2)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t0@@2)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 211065) (- 0 289647)) (not false)) (=> (not false) (=> (= (ControlFlow 0 211065) (- 0 289654)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t0@@2)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_87373| stream@@3) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@3) v@@43) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 210981) 211065)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 289554) 210981) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@2 () Int)
(declare-fun _$t1@@2 () T@$signer)
(declare-fun $t7@@2 () Int)
(declare-fun $t5@@2 () Int)
(declare-fun _$t2 () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_150885)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@0| () T@$Memory_133192)
(declare-fun $t20@@2 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@0| () T@$Memory_133192)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23 () Bool)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1@@0| () T@$Memory_133390)
(declare-fun $t24 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0@@0| () T@$Memory_133390)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t27 () Bool)
(declare-fun $t10@0@@2 () Int)
(declare-fun $t21@@2 () Int)
(declare-fun $t10@@2 () Int)
(declare-fun $t22 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t25 () Int)
(declare-fun $t26 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_150885)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun $t19@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t17@@2 () Int)
(declare-fun $t14@0 () Bool)
(declare-fun $t12@@2 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t11@@2 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 289674) (let ((L5_correct  (and (=> (= (ControlFlow 0 213372) (- 0 292492)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2))) (and (=> (= (ControlFlow 0 213372) (- 0 292504)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) 1))) (and (=> (= (ControlFlow 0 213372) (- 0 292522)) (not (not (= (|$addr#$signer| _$t1@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@2) 186537453))) (and (=> (= (ControlFlow 0 213372) (- 0 292536)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2))) (and (=> (= (ControlFlow 0 213372) (- 0 292548)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2)) 2))) (and (=> (= (ControlFlow 0 213372) (- 0 292566)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@2)) (and (=> (= (ControlFlow 0 213372) (- 0 292576)) (not (and _$t2 (let ((addr@@39 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@39) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@39))))))) (=> (not (and _$t2 (let ((addr@@40 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@40)))))) (and (=> (= (ControlFlow 0 213372) (- 0 292587)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 213372) (- 0 292600)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 213372) (- 0 292613)) (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 213372) (- 0 292626)) (not (and (not _$t2) (let ((addr@@41 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@41) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@41))))))) (=> (not (and (not _$t2) (let ((addr@@42 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@42) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@42)))))) (and (=> (= (ControlFlow 0 213372) (- 0 292639)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 213372) (- 0 292654)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5@@2)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 213372) (- 0 292669)) (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 213372) (- 0 292684)) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1) $t5@@2))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@0| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2 false) (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 213744) 213372)) L5_correct))))
(let ((anon38_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@0| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@0|))) (= (ControlFlow 0 213758) 213372)) L5_correct))))
(let ((anon37_Else_correct  (=> (not $t23) (and (=> (= (ControlFlow 0 213732) 213758) anon38_Then_correct) (=> (= (ControlFlow 0 213732) 213744) anon38_Else_correct)))))
(let ((anon28_correct  (=> (= (ControlFlow 0 213160) 213372) L5_correct)))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0@@2|) (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@1@@0| ($Memory_133390 (|Store__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 false) (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|))) (= (ControlFlow 0 213156) 213160)) anon28_correct))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0@@2| (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@0@@0| ($Memory_133390 (|Store__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0|))) (= (ControlFlow 0 213384) 213160)) anon28_correct))))
(let ((anon39_Else_correct  (=> (not $t27) (and (=> (= (ControlFlow 0 213144) 213384) anon40_Then_correct) (=> (= (ControlFlow 0 213144) 213156) anon40_Else_correct)))))
(let ((anon33_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 212829) (- 0 292048)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@2)) (and _$t2 (let ((addr@@43 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@43) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@43)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@44 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@44) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@44)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5@@2))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@2)) (and _$t2 (let ((addr@@45 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@45) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@45)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@46 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@46) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@46)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5@@2))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 212829) (- 0 292196)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) (= 5 $t10@0@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@2)) 1)) (= 3 $t10@0@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2)) (= 5 $t10@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@2)) 2)) (= 3 $t10@0@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@2) (= 6 $t10@0@@2))) (and (and _$t2 (let ((addr@@47 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@47) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@47))))) (= 7 $t10@0@@2))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2)) (= 6 $t10@0@@2))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2)) (= 1 $t10@0@@2))) (and (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@2))) (and (and (not _$t2) (let ((addr@@48 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@48) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@48))))) (= 7 $t10@0@@2))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2)) (= 6 $t10@0@@2))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t5@@2)) (= 1 $t10@0@@2))) (and (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t10@0@@2))))))))
(let ((anon37_Then_correct  (=> $t23 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@2)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@2)) 1)) (= 3 $t10@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t22)) (= 5 $t10@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t22)) 2)) (= 3 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1) $t20@@2)) (= 5 $t10@@2))) (and (let ((addr@@49 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@49) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@49)))) (= 7 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2) (= 6 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@2) (= 1 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 213952) 212829))) L7_correct))))
(let ((anon36_Then_correct  (=> (and (and _$t2 (= $t20@@2 (|$addr#$signer| _$t0@@3))) (and (= $t21@@2 (|$addr#$signer| _$t1@@2)) (= $t22 (|$addr#$signer| _$t0@@3)))) (and (=> (= (ControlFlow 0 213726) (- 0 291335)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| $t20@@2)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| $t20@@2) (=> (= $t23  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t22))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t22)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1) $t20@@2))) (let ((addr@@50 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@50) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@50))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2)) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 213726) 213952) anon37_Then_correct) (=> (= (ControlFlow 0 213726) 213732) anon37_Else_correct))))))))
(let ((anon39_Then_correct  (=> $t27 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t25)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t25)) 1)) (= 3 $t10@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t26)) (= 5 $t10@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t26)) 2)) (= 3 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1) $t24)) (= 5 $t10@@2))) (and (let ((addr@@51 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@51) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@51)))) (= 7 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t24) (= 6 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t24) (= 1 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 213578) 212829))) L7_correct))))
(let ((anon36_Else_correct  (=> (and (and (not _$t2) (= $t24 (|$addr#$signer| _$t0@@3))) (and (= $t25 (|$addr#$signer| _$t1@@2)) (= $t26 (|$addr#$signer| _$t0@@3)))) (and (=> (= (ControlFlow 0 213138) (- 0 291481)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24) (=> (= $t27  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t25)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t25)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t26)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1) $t24))) (let ((addr@@52 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@52) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@52))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $t24)) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $t24)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 213138) 213578) anon39_Then_correct) (=> (= (ControlFlow 0 213138) 213144) anon39_Else_correct))))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 212988) (- 0 291277)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) addr@@53) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1) addr@@53)))
 :qid |DesignatedDealerseqArraybpl.12999:15|
 :skolemid |303|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) addr@@54) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1) addr@@54)))
 :qid |DesignatedDealerseqArraybpl.12999:15|
 :skolemid |303|
)) (and (=> (= (ControlFlow 0 212988) 213726) anon36_Then_correct) (=> (= (ControlFlow 0 212988) 213138) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0@@2 $abort_code@1) (= (ControlFlow 0 213966) 212829))) L7_correct)))
(let ((anon34_Then$1_correct  (=> (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 214018) 213966) anon35_Then_correct) (=> (= (ControlFlow 0 214018) 212988) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3)) (= (ControlFlow 0 214016) 214018)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3))) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_150885 (|Store__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3) true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3) $t19@0))) (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 212953) 213966) anon35_Then_correct) (=> (= (ControlFlow 0 212953) 212988) anon35_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not false) (= $t19@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 212931) (- 0 291176)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies (|$addr#$signer| _$t0@@3))) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies (|$addr#$signer| _$t0@@3)) (and (=> (= (ControlFlow 0 212931) 214016) anon34_Then_correct) (=> (= (ControlFlow 0 212931) 212953) anon34_Else_correct)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 212899) 214032) anon33_Then_correct) (=> (= (ControlFlow 0 212899) 212931) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 212905) 212899)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|)))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t17@@2 $t17@@2)) (and (= $t10@0@@2 $t17@@2) (= (ControlFlow 0 212369) 212829))) L7_correct)))
(let ((anon31_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@2) (= $t17@@2 6)) (and (= $t17@@2 $t17@@2) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 212353) 212905) anon32_Then_correct) (=> (= (ControlFlow 0 212353) 212369) anon32_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t14@0)) (= (ControlFlow 0 212317) 212353)) anon31_Else$1_correct)))
(let ((anon31_Else_correct  (=> (not $t12@@2) (=> (and (and (|$IsValid'address'| $t13) (= $t13 (|$addr#$signer| _$t0@@3))) (and (= $t14@0 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t13)) (= (ControlFlow 0 212323) 212317))) inline$$Not$0$anon0_correct))))
(let ((anon31_Then_correct  (=> $t12@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@2)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@2)) 2)) (= 3 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 214084) 212829))) L7_correct))))
(let ((anon30_Else_correct  (=> (not $t9@@2) (=> (and (= $t11@@2 (|$addr#$signer| _$t0@@3)) (= $t12@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@2)) 2))))) (and (=> (= (ControlFlow 0 212261) 214084) anon31_Then_correct) (=> (= (ControlFlow 0 212261) 212323) anon31_Else_correct))))))
(let ((anon30_Then_correct  (=> $t9@@2 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@2)) 1)) (= 3 $t10@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 214156) 212829))) L7_correct))))
(let ((anon0$1_correct@@3  (=> (and (and (and (forall ((mint_cap_owner@@8 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@8)) 1))))
 :qid |DesignatedDealerseqArraybpl.12680:22|
 :skolemid |273|
)) (forall ((mint_cap_owner@@9 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@9)) 1))))
 :qid |DesignatedDealerseqArraybpl.12680:269|
 :skolemid |274|
))) (forall ((mint_cap_owner@@10 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@10)) 1))))
 :qid |DesignatedDealerseqArraybpl.12680:517|
 :skolemid |275|
))) (and (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@14)) 1))))
 :qid |DesignatedDealerseqArraybpl.12688:21|
 :skolemid |276|
)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@15)) 1))))
 :qid |DesignatedDealerseqArraybpl.12688:231|
 :skolemid |277|
)))) (=> (and (and (and (and (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@16)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@16)) 2))))
 :qid |DesignatedDealerseqArraybpl.12692:22|
 :skolemid |278|
)) (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@17)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@17)) 2))))
 :qid |DesignatedDealerseqArraybpl.12692:293|
 :skolemid |279|
))) (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@18)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@18)) 2))))
 :qid |DesignatedDealerseqArraybpl.12692:565|
 :skolemid |280|
))) (and (and (forall ((dd_addr@@17 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@17) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@17))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@17)))))
 :qid |DesignatedDealerseqArraybpl.12696:22|
 :skolemid |281|
)) (forall ((dd_addr@@18 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@18) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@18))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@18)))))
 :qid |DesignatedDealerseqArraybpl.12696:375|
 :skolemid |282|
))) (forall ((dd_addr@@19 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@19) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@19))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@19)))))
 :qid |DesignatedDealerseqArraybpl.12696:729|
 :skolemid |283|
)))) (and (and (and (forall ((dd_addr@@20 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@20) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@20))))
 :qid |DesignatedDealerseqArraybpl.12700:22|
 :skolemid |284|
)) (forall ((dd_addr@@21 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@21) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@21))))
 :qid |DesignatedDealerseqArraybpl.12700:220|
 :skolemid |285|
))) (forall ((dd_addr@@22 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@22) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@22))))
 :qid |DesignatedDealerseqArraybpl.12700:419|
 :skolemid |286|
))) (and (and (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@55) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12704:22|
 :skolemid |287|
)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@56) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12704:222|
 :skolemid |288|
))) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12704:423|
 :skolemid |289|
))))) (=> (and (and (and (and (and (and (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12708:22|
 :skolemid |290|
)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@59) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12708:227|
 :skolemid |291|
))) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@60) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.12708:433|
 :skolemid |292|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119411| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2)))) (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |DesignatedDealerseqArraybpl.12728:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@16)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@16) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@16)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@16) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.12732:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@16))
))) (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@17)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@17))
 :qid |DesignatedDealerseqArraybpl.12736:20|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@18)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@18) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@18)) 256) (let (($range_1@@2 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@18)))))
(forall (($i_2@@2 Int) ) (!  (=> ($InRange $range_1@@2 $i_2@@2) (let ((i@@50 $i_2@@2))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@18) i@@50)))) 0)))
 :qid |DesignatedDealerseqArraybpl.12741:223|
 :skolemid |296|
))))))
 :qid |DesignatedDealerseqArraybpl.12740:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@18))
))))) (and (and (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@19)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@19) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@19)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@19) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.12745:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $a_0@@20)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@20))
 :qid |DesignatedDealerseqArraybpl.12749:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) $a_0@@20))
))) (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@21)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@21) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@21)) 256) (let (($range_1@@3 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@21)))))
(forall (($i_2@@3 Int) ) (!  (=> ($InRange $range_1@@3 $i_2@@3) (let ((i@@51 $i_2@@3))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@21) i@@51)))) 0)))
 :qid |DesignatedDealerseqArraybpl.12754:199|
 :skolemid |300|
))))))
 :qid |DesignatedDealerseqArraybpl.12753:20|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@22)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@22))
 :qid |DesignatedDealerseqArraybpl.12758:20|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@22))
)))) (and (and (= $t5@@2 (|$addr#$signer| _$t0@@3)) (= $t6@@2 (|$addr#$signer| _$t1@@2))) (and (= $t7@@2 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies $t5@@2)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t5@@2) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t5@@2)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| $t5@@2) (= _$t0@@3 _$t0@@3))) (and (and (= _$t1@@2 _$t1@@2) (= _$t2 _$t2)) (and (= $t8@@2 (|$addr#$signer| _$t1@@2)) (= $t9@@2  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))))))))) (and (=> (= (ControlFlow 0 212213) 214156) anon30_Then_correct) (=> (= (ControlFlow 0 212213) 212261) anon30_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_87373| stream@@4) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@4) v@@44) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 211129) 212213)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 289674) 211129) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@3 () Int)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t7@@3 () Int)
(declare-fun $t5@@3 () Int)
(declare-fun _$t2@@0 () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1@@0 () T@$Memory_150885)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@3| () T@$Memory_133192)
(declare-fun $t20@@3 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2@@0| () T@$Memory_133192)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23@@0 () Bool)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@1| () T@$Memory_133192)
(declare-fun $t24@@0 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@1| () T@$Memory_133192)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@1| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t27@@0 () Bool)
(declare-fun $t10@0@@3 () Int)
(declare-fun $t21@@3 () Int)
(declare-fun $t10@@3 () Int)
(declare-fun $t22@@0 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t25@@0 () Int)
(declare-fun $t26@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0@@0 () T@$Memory_150885)
(declare-fun $t19@0@@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandles@0@@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t17@@3 () Int)
(declare-fun $t14@0@@0 () Bool)
(declare-fun $t12@@3 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t11@@3 () Int)
(declare-fun $t9@@3 () Bool)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Event_EventHandleGenerator_$modifies@@0 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 292700) (let ((L5_correct@@0  (and (=> (= (ControlFlow 0 216761) (- 0 295518)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 216761) (- 0 295530)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) 1))) (and (=> (= (ControlFlow 0 216761) (- 0 295548)) (not (not (= (|$addr#$signer| _$t1@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@3) 186537453))) (and (=> (= (ControlFlow 0 216761) (- 0 295562)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3))) (and (=> (= (ControlFlow 0 216761) (- 0 295574)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3)) 2))) (and (=> (= (ControlFlow 0 216761) (- 0 295592)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@3))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@3)) (and (=> (= (ControlFlow 0 216761) (- 0 295602)) (not (and _$t2@@0 (let ((addr@@61 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@61) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@61))))))) (=> (not (and _$t2@@0 (let ((addr@@62 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@62) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@62)))))) (and (=> (= (ControlFlow 0 216761) (- 0 295613)) (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 216761) (- 0 295626)) (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 216761) (- 0 295639)) (not (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 216761) (- 0 295652)) (not (and (not _$t2@@0) (let ((addr@@63 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@63) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@63))))))) (=> (not (and (not _$t2@@0) (let ((addr@@64 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@64) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@64)))))) (and (=> (= (ControlFlow 0 216761) (- 0 295665)) (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 216761) (- 0 295680)) (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 216761) (- 0 295695)) (not (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (= (ControlFlow 0 216761) (- 0 295710)) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@0) $t5@@3))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct@@0  (=> (not |$temp_0'bool'@1@@0|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@3| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 false) (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 217133) 216761)) L5_correct@@0))))
(let ((anon38_Then_correct@@0  (=> |$temp_0'bool'@1@@0| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2@@0| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1|))) (= (ControlFlow 0 217147) 216761)) L5_correct@@0))))
(let ((anon37_Else_correct@@0  (=> (not $t23@@0) (and (=> (= (ControlFlow 0 217121) 217147) anon38_Then_correct@@0) (=> (= (ControlFlow 0 217121) 217133) anon38_Else_correct@@0)))))
(let ((anon28_correct@@0  (=> (= (ControlFlow 0 216549) 216761) L5_correct@@0)))
(let ((anon40_Else_correct@@0  (=> (not |$temp_0'bool'@0@@3|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@1| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0 false) (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 216545) 216549)) anon28_correct@@0))))
(let ((anon40_Then_correct@@0  (=> |$temp_0'bool'@0@@3| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@1| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@1|))) (= (ControlFlow 0 216773) 216549)) anon28_correct@@0))))
(let ((anon39_Else_correct@@0  (=> (not $t27@@0) (and (=> (= (ControlFlow 0 216533) 216773) anon40_Then_correct@@0) (=> (= (ControlFlow 0 216533) 216545) anon40_Else_correct@@0)))))
(let ((anon33_Then_correct@@0 true))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 216218) (- 0 295074)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@3)) (and _$t2@@0 (let ((addr@@65 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@65) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@65)))))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@0) (let ((addr@@66 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@66) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@66)))))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@3)) (and _$t2@@0 (let ((addr@@67 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@67) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@67)))))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@0) (let ((addr@@68 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@68) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@68)))))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (= (ControlFlow 0 216218) (- 0 295222)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) (= 5 $t10@0@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@3)) 1)) (= 3 $t10@0@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@0@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3)) (= 5 $t10@0@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@3)) 2)) (= 3 $t10@0@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@3) (= 6 $t10@0@@3))) (and (and _$t2@@0 (let ((addr@@69 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@69) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@69))))) (= 7 $t10@0@@3))) (and (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)) (= 6 $t10@0@@3))) (and (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)) (= 1 $t10@0@@3))) (and (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@3))) (and (and (not _$t2@@0) (let ((addr@@70 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@70) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@70))))) (= 7 $t10@0@@3))) (and (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)) (= 6 $t10@0@@3))) (and (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)) (= 1 $t10@0@@3))) (and (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@3))))))))
(let ((anon37_Then_correct@@0  (=> $t23@@0 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@3)) 1)) (= 3 $t10@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@0)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@0)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@0) $t20@@3)) (= 5 $t10@@3))) (and (let ((addr@@71 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@71) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@71)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 217341) 216218))) L7_correct@@0))))
(let ((anon36_Then_correct@@0  (=> (and (and _$t2@@0 (= $t20@@3 (|$addr#$signer| _$t0@@4))) (and (= $t21@@3 (|$addr#$signer| _$t1@@3)) (= $t22@@0 (|$addr#$signer| _$t0@@4)))) (and (=> (= (ControlFlow 0 217115) (- 0 294361)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t20@@3)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t20@@3) (=> (= $t23@@0  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@0) $t20@@3))) (let ((addr@@72 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@72) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@72))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3)) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 217115) 217341) anon37_Then_correct@@0) (=> (= (ControlFlow 0 217115) 217121) anon37_Else_correct@@0))))))))
(let ((anon39_Then_correct@@0  (=> $t27@@0 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@0)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@0)) 1)) (= 3 $t10@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@0)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@0)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@0) $t24@@0)) (= 5 $t10@@3))) (and (let ((addr@@73 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@73) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@73)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t24@@0) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 216967) 216218))) L7_correct@@0))))
(let ((anon36_Else_correct@@0  (=> (and (and (not _$t2@@0) (= $t24@@0 (|$addr#$signer| _$t0@@4))) (and (= $t25@@0 (|$addr#$signer| _$t1@@3)) (= $t26@@0 (|$addr#$signer| _$t0@@4)))) (and (=> (= (ControlFlow 0 216527) (- 0 294507)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t24@@0)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t24@@0) (=> (= $t27@@0  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@0)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@0) $t24@@0))) (let ((addr@@74 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@74) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@74))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t24@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 216527) 216967) anon39_Then_correct@@0) (=> (= (ControlFlow 0 216527) 216533) anon39_Else_correct@@0))))))))
(let ((anon35_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 216377) (- 0 294303)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) addr@@75) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@0) addr@@75)))
 :qid |DesignatedDealerseqArraybpl.13619:15|
 :skolemid |334|
))) (=> (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) addr@@76) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@0) addr@@76)))
 :qid |DesignatedDealerseqArraybpl.13619:15|
 :skolemid |334|
)) (and (=> (= (ControlFlow 0 216377) 217115) anon36_Then_correct@@0) (=> (= (ControlFlow 0 216377) 216527) anon36_Else_correct@@0)))))))
(let ((anon35_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0@@3 $abort_code@1@@0) (= (ControlFlow 0 217355) 216218))) L7_correct@@0)))
(let ((anon34_Then$1_correct@@0  (=> (= $1_DesignatedDealer_Dealer_$memory@1@@0 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 217407) 217355) anon35_Then_correct@@0) (=> (= (ControlFlow 0 217407) 216377) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 217405) 217407)) anon34_Then$1_correct@@0)))
(let ((anon34_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4))) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0@@0 ($Memory_150885 (|Store__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4) true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4) $t19@0@@0))) (= $1_DesignatedDealer_Dealer_$memory@1@@0 $1_DesignatedDealer_Dealer_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 216342) 217355) anon35_Then_correct@@0) (=> (= (ControlFlow 0 216342) 216377) anon35_Else_correct@@0))))))
(let ((anon33_Else_correct@@0  (=> (and (not false) (= $t19@0@@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0|))) (and (=> (= (ControlFlow 0 216320) (- 0 294202)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 (|$addr#$signer| _$t0@@4))) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 (|$addr#$signer| _$t0@@4)) (and (=> (= (ControlFlow 0 216320) 217405) anon34_Then_correct@@0) (=> (= (ControlFlow 0 216320) 216342) anon34_Else_correct@@0)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0|) false) (= $1_Event_EventHandles@0@@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0| true))) (and (=> (= (ControlFlow 0 216288) 217421) anon33_Then_correct@@0) (=> (= (ControlFlow 0 216288) 216320) anon33_Else_correct@@0)))))
(let ((anon32_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 216294) 216288)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|)))
(let ((anon32_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t17@@3 $t17@@3)) (and (= $t10@0@@3 $t17@@3) (= (ControlFlow 0 215758) 216218))) L7_correct@@0)))
(let ((anon31_Else$1_correct@@0  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@3) (= $t17@@3 6)) (and (= $t17@@3 $t17@@3) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 215742) 216294) anon32_Then_correct@@0) (=> (= (ControlFlow 0 215742) 215758) anon32_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t14@0@@0)) (= (ControlFlow 0 215706) 215742)) anon31_Else$1_correct@@0)))
(let ((anon31_Else_correct@@0  (=> (not $t12@@3) (=> (and (and (|$IsValid'address'| $t13@@0) (= $t13@@0 (|$addr#$signer| _$t0@@4))) (and (= $t14@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t13@@0)) (= (ControlFlow 0 215712) 215706))) inline$$Not$0$anon0_correct@@0))))
(let ((anon31_Then_correct@@0  (=> $t12@@3 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@3)) 2)) (= 3 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 217473) 216218))) L7_correct@@0))))
(let ((anon30_Else_correct@@0  (=> (not $t9@@3) (=> (and (= $t11@@3 (|$addr#$signer| _$t0@@4)) (= $t12@@3  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@3)) 2))))) (and (=> (= (ControlFlow 0 215650) 217473) anon31_Then_correct@@0) (=> (= (ControlFlow 0 215650) 215712) anon31_Else_correct@@0))))))
(let ((anon30_Then_correct@@0  (=> $t9@@3 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@3)) 1)) (= 3 $t10@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 217545) 216218))) L7_correct@@0))))
(let ((anon0$1_correct@@4  (=> (and (and (and (forall ((mint_cap_owner@@11 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@11)) 1))))
 :qid |DesignatedDealerseqArraybpl.13300:22|
 :skolemid |304|
)) (forall ((mint_cap_owner@@12 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@12)) 1))))
 :qid |DesignatedDealerseqArraybpl.13300:269|
 :skolemid |305|
))) (forall ((mint_cap_owner@@13 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@13)) 1))))
 :qid |DesignatedDealerseqArraybpl.13300:517|
 :skolemid |306|
))) (and (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@19)) 1))))
 :qid |DesignatedDealerseqArraybpl.13308:21|
 :skolemid |307|
)) (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@20)) 1))))
 :qid |DesignatedDealerseqArraybpl.13308:231|
 :skolemid |308|
)))) (=> (and (and (and (and (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@21)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@21)) 2))))
 :qid |DesignatedDealerseqArraybpl.13312:22|
 :skolemid |309|
)) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@22)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@22)) 2))))
 :qid |DesignatedDealerseqArraybpl.13312:293|
 :skolemid |310|
))) (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@23)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@23)) 2))))
 :qid |DesignatedDealerseqArraybpl.13312:565|
 :skolemid |311|
))) (and (and (forall ((dd_addr@@23 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@23) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@23))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@23)))))
 :qid |DesignatedDealerseqArraybpl.13316:22|
 :skolemid |312|
)) (forall ((dd_addr@@24 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@24) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@24))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@24)))))
 :qid |DesignatedDealerseqArraybpl.13316:375|
 :skolemid |313|
))) (forall ((dd_addr@@25 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@25) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@25))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@25)))))
 :qid |DesignatedDealerseqArraybpl.13316:729|
 :skolemid |314|
)))) (and (and (and (forall ((dd_addr@@26 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@26) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@26))))
 :qid |DesignatedDealerseqArraybpl.13320:22|
 :skolemid |315|
)) (forall ((dd_addr@@27 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@27) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@27))))
 :qid |DesignatedDealerseqArraybpl.13320:220|
 :skolemid |316|
))) (forall ((dd_addr@@28 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@28) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@28))))
 :qid |DesignatedDealerseqArraybpl.13320:419|
 :skolemid |317|
))) (and (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@77) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13324:22|
 :skolemid |318|
)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@78) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13324:222|
 :skolemid |319|
))) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@79) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13324:423|
 :skolemid |320|
))))) (=> (and (and (and (and (and (and (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@80) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13328:22|
 :skolemid |321|
)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@81) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13328:227|
 :skolemid |322|
))) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@82) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13328:433|
 :skolemid |323|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119411| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3)))) (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@23)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@23))
 :qid |DesignatedDealerseqArraybpl.13348:20|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@23))
)) (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@24)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@24) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@24)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@24) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.13352:20|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@24))
))) (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@25)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@25))
 :qid |DesignatedDealerseqArraybpl.13356:20|
 :skolemid |326|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@25))
)) (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@26)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@26) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@26)) 256) (let (($range_1@@4 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@26)))))
(forall (($i_2@@4 Int) ) (!  (=> ($InRange $range_1@@4 $i_2@@4) (let ((i@@52 $i_2@@4))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@26) i@@52)))) 0)))
 :qid |DesignatedDealerseqArraybpl.13361:223|
 :skolemid |327|
))))))
 :qid |DesignatedDealerseqArraybpl.13360:20|
 :skolemid |328|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@26))
))))) (and (and (and (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@27)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@27) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@27)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@27) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.13365:20|
 :skolemid |329|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@27))
)) (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@28)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@28))
 :qid |DesignatedDealerseqArraybpl.13369:20|
 :skolemid |330|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@28))
))) (and (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@29)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@29) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@29)) 256) (let (($range_1@@5 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@29)))))
(forall (($i_2@@5 Int) ) (!  (=> ($InRange $range_1@@5 $i_2@@5) (let ((i@@53 $i_2@@5))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@29) i@@53)))) 0)))
 :qid |DesignatedDealerseqArraybpl.13374:223|
 :skolemid |331|
))))))
 :qid |DesignatedDealerseqArraybpl.13373:20|
 :skolemid |332|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@29))
)) (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@30)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@30))
 :qid |DesignatedDealerseqArraybpl.13378:20|
 :skolemid |333|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@30))
)))) (and (and (= $t5@@3 (|$addr#$signer| _$t0@@4)) (= $t6@@3 (|$addr#$signer| _$t1@@3))) (and (= $t7@@3 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 $t5@@3)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 $t5@@3) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t5@@3)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t5@@3) (= _$t0@@4 _$t0@@4))) (and (and (= _$t1@@3 _$t1@@3) (= _$t2@@0 _$t2@@0)) (and (= $t8@@3 (|$addr#$signer| _$t1@@3)) (= $t9@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))))))))) (and (=> (= (ControlFlow 0 215602) 217545) anon30_Then_correct@@0) (=> (= (ControlFlow 0 215602) 215650) anon30_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_87373| stream@@5) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@5) v@@45) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 214518) 215602)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 292700) 214518) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@4 () Int)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t7@@4 () Int)
(declare-fun $t5@@4 () Int)
(declare-fun _$t2@@1 () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1@@1 () T@$Memory_150885)
(declare-fun |$temp_0'bool'@1@@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@2| () T@$Memory_133192)
(declare-fun $t20@@4 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@2| () T@$Memory_133192)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@2| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23@@1 () Bool)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1@@0| () T@$Memory_133291)
(declare-fun $t24@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0@@0| () T@$Memory_133291)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0@@0| () |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t27@@1 () Bool)
(declare-fun $t10@0@@4 () Int)
(declare-fun $t21@@4 () Int)
(declare-fun $t10@@4 () Int)
(declare-fun $t22@@1 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $t25@@1 () Int)
(declare-fun $t26@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0@@1 () T@$Memory_150885)
(declare-fun $t19@0@@1 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@1 () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandles@0@@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t17@@4 () Int)
(declare-fun $t14@0@@1 () Bool)
(declare-fun $t12@@4 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun $t11@@4 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t8@@4 () Int)
(declare-fun $1_Event_EventHandleGenerator_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 295726) (let ((L5_correct@@1  (and (=> (= (ControlFlow 0 220148) (- 0 298544)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4))) (and (=> (= (ControlFlow 0 220148) (- 0 298556)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) 1))) (and (=> (= (ControlFlow 0 220148) (- 0 298574)) (not (not (= (|$addr#$signer| _$t1@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@4) 186537453))) (and (=> (= (ControlFlow 0 220148) (- 0 298588)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4))) (and (=> (= (ControlFlow 0 220148) (- 0 298600)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4)) 2))) (and (=> (= (ControlFlow 0 220148) (- 0 298618)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@4))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@4)) (and (=> (= (ControlFlow 0 220148) (- 0 298628)) (not (and _$t2@@1 (let ((addr@@83 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@83) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@83))))))) (=> (not (and _$t2@@1 (let ((addr@@84 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@84) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@84)))))) (and (=> (= (ControlFlow 0 220148) (- 0 298639)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 220148) (- 0 298652)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 220148) (- 0 298665)) (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 220148) (- 0 298678)) (not (and (not _$t2@@1) (let ((addr@@85 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@85) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@85))))))) (=> (not (and (not _$t2@@1) (let ((addr@@86 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@86) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@86)))))) (and (=> (= (ControlFlow 0 220148) (- 0 298691)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 220148) (- 0 298706)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 220148) (- 0 298721)) (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 220148) (- 0 298736)) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@1) $t5@@4))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct@@1  (=> (not |$temp_0'bool'@1@@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@2| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4 false) (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 220520) 220148)) L5_correct@@1))))
(let ((anon38_Then_correct@@1  (=> |$temp_0'bool'@1@@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@2| ($Memory_133192 (|Store__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@2|))) (= (ControlFlow 0 220534) 220148)) L5_correct@@1))))
(let ((anon37_Else_correct@@1  (=> (not $t23@@1) (and (=> (= (ControlFlow 0 220508) 220534) anon38_Then_correct@@1) (=> (= (ControlFlow 0 220508) 220520) anon38_Else_correct@@1)))))
(let ((anon28_correct@@1  (=> (= (ControlFlow 0 219936) 220148) L5_correct@@1)))
(let ((anon40_Else_correct@@1  (=> (not |$temp_0'bool'@0@@4|) (=> (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1@@0| ($Memory_133291 (|Store__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1 false) (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|))) (= (ControlFlow 0 219932) 219936)) anon28_correct@@1))))
(let ((anon40_Then_correct@@1  (=> |$temp_0'bool'@0@@4| (=> (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0@@0| ($Memory_133291 (|Store__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1 |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0@@0|))) (= (ControlFlow 0 220160) 219936)) anon28_correct@@1))))
(let ((anon39_Else_correct@@1  (=> (not $t27@@1) (and (=> (= (ControlFlow 0 219920) 220160) anon40_Then_correct@@1) (=> (= (ControlFlow 0 219920) 219932) anon40_Else_correct@@1)))))
(let ((anon33_Then_correct@@1 true))
(let ((L7_correct@@1  (and (=> (= (ControlFlow 0 219605) (- 0 298100)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@4)) (and _$t2@@1 (let ((addr@@87 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@87) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@87)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@88 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@88) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@88)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@4)) (and _$t2@@1 (let ((addr@@89 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@89) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@89)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@90 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@90) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@90)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 219605) (- 0 298248)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) (= 5 $t10@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t6@@4)) 1)) (= 3 $t10@0@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@0@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4)) (= 5 $t10@0@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t7@@4)) 2)) (= 3 $t10@0@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t5@@4) (= 6 $t10@0@@4))) (and (and _$t2@@1 (let ((addr@@91 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@91) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@91))))) (= 7 $t10@0@@4))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4)) (= 6 $t10@0@@4))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4)) (= 1 $t10@0@@4))) (and (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@4))) (and (and (not _$t2@@1) (let ((addr@@92 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@92) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@92))))) (= 7 $t10@0@@4))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4)) (= 6 $t10@0@@4))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4)) (= 1 $t10@0@@4))) (and (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t10@0@@4))))))))
(let ((anon37_Then_correct@@1  (=> $t23@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@4)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@4)) 1)) (= 3 $t10@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@1)) (= 5 $t10@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@1)) 2)) (= 3 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@1) $t20@@4)) (= 5 $t10@@4))) (and (let ((addr@@93 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@93) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@93)))) (= 7 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4) (= 6 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@4) (= 1 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 220728) 219605))) L7_correct@@1))))
(let ((anon36_Then_correct@@1  (=> (and (and _$t2@@1 (= $t20@@4 (|$addr#$signer| _$t0@@5))) (and (= $t21@@4 (|$addr#$signer| _$t1@@4)) (= $t22@@1 (|$addr#$signer| _$t0@@5)))) (and (=> (= (ControlFlow 0 220502) (- 0 297387)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| $t20@@4)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| $t20@@4) (=> (= $t23@@1  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t21@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t22@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@1) $t20@@4))) (let ((addr@@94 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@94) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@94))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4)) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 220502) 220728) anon37_Then_correct@@1) (=> (= (ControlFlow 0 220502) 220508) anon37_Else_correct@@1))))))))
(let ((anon39_Then_correct@@1  (=> $t27@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@1)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@1)) 1)) (= 3 $t10@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@1)) (= 5 $t10@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@1)) 2)) (= 3 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@1) $t24@@1)) (= 5 $t10@@4))) (and (let ((addr@@95 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@95) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@95)))) (= 7 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1) (= 6 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t24@@1) (= 1 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 220354) 219605))) L7_correct@@1))))
(let ((anon36_Else_correct@@1  (=> (and (and (not _$t2@@1) (= $t24@@1 (|$addr#$signer| _$t0@@5))) (and (= $t25@@1 (|$addr#$signer| _$t1@@4)) (= $t26@@1 (|$addr#$signer| _$t0@@5)))) (and (=> (= (ControlFlow 0 219914) (- 0 297533)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| $t24@@1)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| $t24@@1) (=> (= $t27@@1  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t25@@1)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t26@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@1) $t24@@1))) (let ((addr@@96 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@96) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@96))))) (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t24@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 219914) 220354) anon39_Then_correct@@1) (=> (= (ControlFlow 0 219914) 219920) anon39_Else_correct@@1))))))))
(let ((anon35_Else_correct@@1  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 219764) (- 0 297329)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) addr@@97) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@1) addr@@97)))
 :qid |DesignatedDealerseqArraybpl.14241:15|
 :skolemid |365|
))) (=> (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) addr@@98) (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory@1@@1) addr@@98)))
 :qid |DesignatedDealerseqArraybpl.14241:15|
 :skolemid |365|
)) (and (=> (= (ControlFlow 0 219764) 220502) anon36_Then_correct@@1) (=> (= (ControlFlow 0 219764) 219914) anon36_Else_correct@@1)))))))
(let ((anon35_Then_correct@@1  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t10@0@@4 $abort_code@1@@1) (= (ControlFlow 0 220742) 219605))) L7_correct@@1)))
(let ((anon34_Then$1_correct@@1  (=> (= $1_DesignatedDealer_Dealer_$memory@1@@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 220794) 220742) anon35_Then_correct@@1) (=> (= (ControlFlow 0 220794) 219764) anon35_Else_correct@@1))))))
(let ((anon34_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5)) (= (ControlFlow 0 220792) 220794)) anon34_Then$1_correct@@1)))
(let ((anon34_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5))) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0@@1 ($Memory_150885 (|Store__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5) true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5) $t19@0@@1))) (= $1_DesignatedDealer_Dealer_$memory@1@@1 $1_DesignatedDealer_Dealer_$memory@0@@1)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 219729) 220742) anon35_Then_correct@@1) (=> (= (ControlFlow 0 219729) 219764) anon35_Else_correct@@1))))))
(let ((anon33_Else_correct@@1  (=> (and (not false) (= $t19@0@@1 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1|))) (and (=> (= (ControlFlow 0 219707) (- 0 297228)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@1 (|$addr#$signer| _$t0@@5))) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@1 (|$addr#$signer| _$t0@@5)) (and (=> (= (ControlFlow 0 219707) 220792) anon34_Then_correct@@1) (=> (= (ControlFlow 0 219707) 219729) anon34_Else_correct@@1)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1|) false) (= $1_Event_EventHandles@0@@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1| true))) (and (=> (= (ControlFlow 0 219675) 220808) anon33_Then_correct@@1) (=> (= (ControlFlow 0 219675) 219707) anon33_Else_correct@@1)))))
(let ((anon32_Then_correct@@1  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 219681) 219675)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|)))
(let ((anon32_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t17@@4 $t17@@4)) (and (= $t10@0@@4 $t17@@4) (= (ControlFlow 0 219145) 219605))) L7_correct@@1)))
(let ((anon31_Else$1_correct@@1  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@4) (= $t17@@4 6)) (and (= $t17@@4 $t17@@4) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 219129) 219681) anon32_Then_correct@@1) (=> (= (ControlFlow 0 219129) 219145) anon32_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t14@0@@1)) (= (ControlFlow 0 219093) 219129)) anon31_Else$1_correct@@1)))
(let ((anon31_Else_correct@@1  (=> (not $t12@@4) (=> (and (and (|$IsValid'address'| $t13@@1) (= $t13@@1 (|$addr#$signer| _$t0@@5))) (and (= $t14@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $t13@@1)) (= (ControlFlow 0 219099) 219093))) inline$$Not$0$anon0_correct@@1))))
(let ((anon31_Then_correct@@1  (=> $t12@@4 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@4)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@4)) 2)) (= 3 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 220860) 219605))) L7_correct@@1))))
(let ((anon30_Else_correct@@1  (=> (not $t9@@4) (=> (and (= $t11@@4 (|$addr#$signer| _$t0@@5)) (= $t12@@4  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t11@@4)) 2))))) (and (=> (= (ControlFlow 0 219037) 220860) anon31_Then_correct@@1) (=> (= (ControlFlow 0 219037) 219099) anon31_Else_correct@@1))))))
(let ((anon30_Then_correct@@1  (=> $t9@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@4)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@4)) 1)) (= 3 $t10@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 220932) 219605))) L7_correct@@1))))
(let ((anon0$1_correct@@5  (=> (and (and (and (forall ((mint_cap_owner@@14 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@14)) 1))))
 :qid |DesignatedDealerseqArraybpl.13922:22|
 :skolemid |335|
)) (forall ((mint_cap_owner@@15 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@15)) 1))))
 :qid |DesignatedDealerseqArraybpl.13922:269|
 :skolemid |336|
))) (forall ((mint_cap_owner@@16 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@16) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@16)) 1))))
 :qid |DesignatedDealerseqArraybpl.13922:517|
 :skolemid |337|
))) (and (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@24)) 1))))
 :qid |DesignatedDealerseqArraybpl.13930:21|
 :skolemid |338|
)) (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@25)) 1))))
 :qid |DesignatedDealerseqArraybpl.13930:231|
 :skolemid |339|
)))) (=> (and (and (and (and (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@26) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@26)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@26)) 2))))
 :qid |DesignatedDealerseqArraybpl.13934:22|
 :skolemid |340|
)) (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@27)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@27)) 2))))
 :qid |DesignatedDealerseqArraybpl.13934:293|
 :skolemid |341|
))) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@28)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@28)) 2))))
 :qid |DesignatedDealerseqArraybpl.13934:565|
 :skolemid |342|
))) (and (and (forall ((dd_addr@@29 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@29) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@29))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@29)))))
 :qid |DesignatedDealerseqArraybpl.13938:22|
 :skolemid |343|
)) (forall ((dd_addr@@30 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@30) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@30))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@30)))))
 :qid |DesignatedDealerseqArraybpl.13938:375|
 :skolemid |344|
))) (forall ((dd_addr@@31 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@31) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@31))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@31)))))
 :qid |DesignatedDealerseqArraybpl.13938:729|
 :skolemid |345|
)))) (and (and (and (forall ((dd_addr@@32 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@32) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@32))))
 :qid |DesignatedDealerseqArraybpl.13942:22|
 :skolemid |346|
)) (forall ((dd_addr@@33 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@33) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@33))))
 :qid |DesignatedDealerseqArraybpl.13942:220|
 :skolemid |347|
))) (forall ((dd_addr@@34 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@34) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@34))))
 :qid |DesignatedDealerseqArraybpl.13942:419|
 :skolemid |348|
))) (and (and (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@99) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13946:22|
 :skolemid |349|
)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13946:222|
 :skolemid |350|
))) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13946:423|
 :skolemid |351|
))))) (=> (and (and (and (and (and (and (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@102) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13950:22|
 :skolemid |352|
)) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@103) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13950:227|
 :skolemid |353|
))) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@104) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.13950:433|
 :skolemid |354|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119411| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4)))) (and (and (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@31)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@31))
 :qid |DesignatedDealerseqArraybpl.13970:20|
 :skolemid |355|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@31))
)) (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@32)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@32) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@32)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@32) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.13974:20|
 :skolemid |356|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@32))
))) (and (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@33)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@33))
 :qid |DesignatedDealerseqArraybpl.13978:20|
 :skolemid |357|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@33))
)) (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@34)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@34) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@34)) 256) (let (($range_1@@6 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@34)))))
(forall (($i_2@@6 Int) ) (!  (=> ($InRange $range_1@@6 $i_2@@6) (let ((i@@54 $i_2@@6))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@34) i@@54)))) 0)))
 :qid |DesignatedDealerseqArraybpl.13983:223|
 :skolemid |358|
))))))
 :qid |DesignatedDealerseqArraybpl.13982:20|
 :skolemid |359|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@34))
))))) (and (and (and (and (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@35)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@35) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@35)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@35) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.13987:20|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@35))
)) (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@36)))
(|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| $rsc@@36))
 :qid |DesignatedDealerseqArraybpl.13991:20|
 :skolemid |361|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@36))
))) (and (forall (($a_0@@37 Int) ) (! (let (($rsc@@37 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@37)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| $rsc@@37) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@37)) 256) (let (($range_1@@7 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@37)))))
(forall (($i_2@@7 Int) ) (!  (=> ($InRange $range_1@@7 $i_2@@7) (let ((i@@55 $i_2@@7))
(> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@37) i@@55)))) 0)))
 :qid |DesignatedDealerseqArraybpl.13996:223|
 :skolemid |362|
))))))
 :qid |DesignatedDealerseqArraybpl.13995:20|
 :skolemid |363|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@37))
)) (forall (($a_0@@38 Int) ) (! (let (($rsc@@38 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@38)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@38))
 :qid |DesignatedDealerseqArraybpl.14000:20|
 :skolemid |364|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@38))
)))) (and (and (= $t5@@4 (|$addr#$signer| _$t0@@5)) (= $t6@@4 (|$addr#$signer| _$t1@@4))) (and (= $t7@@4 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@1 $t5@@4)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@1 $t5@@4) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| $t5@@4)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| $t5@@4) (= _$t0@@5 _$t0@@5))) (and (and (= _$t1@@4 _$t1@@4) (= _$t2@@1 _$t2@@1)) (and (= $t8@@4 (|$addr#$signer| _$t1@@4)) (= $t9@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t8@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))))))))) (and (=> (= (ControlFlow 0 218989) 220932) anon30_Then_correct@@1) (=> (= (ControlFlow 0 218989) 219037) anon30_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_87373| stream@@6) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@6) v@@46) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 217905) 218989)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 295726) 217905) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t37 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_127208)
(declare-fun _$t1@@5 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun $t9@@5 () Int)
(declare-fun _$t2@@2 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@2| () T@$Memory_151526)
(declare-fun $t8@@5 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $t10@@5 () T@$1_Event_EventHandle)
(declare-fun $t11@@5 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_87373_| (|T@[$1_Event_EventHandle]Multiset_87373| T@$1_Event_EventHandle T@Multiset_87373) |T@[$1_Event_EventHandle]Multiset_87373|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_87373|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_87373)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|Store__T@[$1_Event_EventHandle]Multiset_87373_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_87373|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_87373)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|Store__T@[$1_Event_EventHandle]Multiset_87373_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_87373_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@@5 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t13@@2 () T@$1_Event_EventHandle)
(declare-fun $t14@@2 () T@$1_Diem_MintEvent)
(declare-fun $t17@0 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t16@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_127208)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_127208)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_127208)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t11@1| () |T@$1_Diem_MintCapability'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'#0'_| (|T@[Int]$1_Diem_MintCapability'#0'| Int) |T@$1_Diem_MintCapability'#0'|)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t35 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t31@0 () T@$Mutation_113195)
(declare-fun $t34@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33 () Bool)
(declare-fun $t32 () (Seq Int))
(declare-fun $t17@@5 () Int)
(declare-fun $t30@1 () T@$Mutation_174559)
(declare-fun $t30 () T@$Mutation_174559)
(declare-fun $t30@0 () T@$Mutation_174559)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@2 () |T@[Int]Bool|)
(declare-fun $t27@0 () Int)
(declare-fun $t26@@2 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun $t28@0 () Int)
(declare-fun $t29@0 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@1| () T@$Memory_151526)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory| () T@$Memory_151526)
(declare-fun $t26@0 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|T@[Int]$1_DesignatedDealer_TierInfo'#0'| Int) |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@0| () T@$Memory_151526)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t25@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22@@2 () Bool)
(declare-fun $t24@@2 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t21@@5 () Int)
(declare-fun $t16@@2 () Bool)
(declare-fun $t15@@2 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t31 () T@$Mutation_113195)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 298754) (let ((anon40_Else_correct@@2  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@1|) (= $t37 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 224150) (- 0 301186)) (not (= _$t1@@5 0))) (=> (not (= _$t1@@5 0)) (and (=> (= (ControlFlow 0 224150) (- 0 301196)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6)))) (and (=> (= (ControlFlow 0 224150) (- 0 301209)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5))) (and (=> (= (ControlFlow 0 224150) (- 0 301221)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (and (=> (= (ControlFlow 0 224150) (- 0 301239)) (not (not (= (|$addr#$signer| _$t0@@6) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 186537453))) (and (=> (= (ControlFlow 0 224150) (- 0 301253)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (and (=> (= (ControlFlow 0 224150) (- 0 301264)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 224150) (- 0 301276)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (and (=> (= (ControlFlow 0 224150) (- 0 301293)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 224150) (- 0 301303)) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 224150) (- 0 301311)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2)) (and (=> (= (ControlFlow 0 224150) (- 0 301320)) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5)) (=> (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5) (and (=> (= (ControlFlow 0 224150) (- 0 301329)) (= $t37 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5)))) (=> (= $t37 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))) (and (=> (= (ControlFlow 0 224150) (- 0 301347)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new (let ((len (|l#Multiset_87373| stream@@7)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected) handle@@8)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual) handle@@8))) (forall ((v@@47 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected) handle@@8)) v@@47) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual) handle@@8)) v@@47))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_87373| stream@@8)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@9 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@0) handle@@9)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@0) handle@@9))) (forall ((v@@48 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@0) handle@@9)) v@@48) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@0) handle@@9)) v@@48))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))) (and (=> (= (ControlFlow 0 224150) (- 0 301372)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@5)) (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_87373| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1))))) $t13@@2)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_87373| stream@@9)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@9) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@9) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_87373| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_87373| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1))))) $t13@@2 stream_new@@2)))) (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_87373| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1)))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@1) handle@@10)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@1) handle@@10))) (forall ((v@@49 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@1) handle@@10)) v@@49) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@1) handle@@10)) v@@49))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
)))))) (=> (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@5)) (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_87373| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3))))) $t13@@2)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_87373| stream@@11)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@11) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@11) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_87373| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_87373| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3))))) $t13@@2 stream_new@@4)))) (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_87373| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3)))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@2) handle@@11)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@2) handle@@11))) (forall ((v@@50 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@2) handle@@11)) v@@50) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@2) handle@@11)) v@@50))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 224150) (- 0 301409)) (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@5)) (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_87373| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5))))) $t13@@2)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_87373| stream@@13)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@13) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@13) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_87373| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_87373| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5))))) $t13@@2 stream_new@@6)))) (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_87373| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5)))))))
 (and (<= (|counter#$EventStore| actual@@3) (|counter#$EventStore| expected@@3)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@3) handle@@12)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@3) handle@@12))) (forall ((v@@51 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@3) handle@@12)) v@@51) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@3) handle@@12)) v@@51))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 222412) (- 0 300916)) (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= (|$addr#$signer| _$t0@@6) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= (|$addr#$signer| _$t0@@6) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 222412) (- 0 301004)) (or (or (or (or (or (or (or (or (and (= _$t1@@5 0) (= 7 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6))) (= 4 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@5)) 1)) (= 3 $t17@0))) (and (not (= (|$addr#$signer| _$t0@@6) 186537453)) (= 2 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= 5 $t17@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t17@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t17@0))))))))
(let ((anon35_Then_correct@@2  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t17@0 $abort_code@1@@2) (= (ControlFlow 0 224336) 222412))) L8_correct)))
(let ((anon40_Then_correct@@2  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t17@0 $abort_code@5) (= (ControlFlow 0 224164) 222412))) L8_correct)))
(let ((|inline$$1_Diem_mint'#0'$0$anon13_correct|  (=> (and (and (and (and (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816))) (and (and (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$t16@0|) _$t1@@5)) (and (= |inline$$1_Diem_mint'#0'$0$$t19@0| |inline$$1_Diem_mint'#0'$0$$t15@0|) (= |inline$$1_Diem_mint'#0'$0$$t20@0| |inline$$1_Diem_mint'#0'$0$$t14@0|)))) (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= $es@1 (ite |inline$$1_Diem_mint'#0'$0$$t21@0| (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0|)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_87373| stream@@15)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@15) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@15) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0| stream_new@@7)))) $es@0))) (and (= |inline$$1_Diem_mint'#0'$0$$t16@0| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= $abort_code@5 $abort_code@4))) (and (and (= $es@2 $es@1) (= $abort_flag@4 $abort_flag@3)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|))))) (and (=> (= (ControlFlow 0 223694) 224164) anon40_Then_correct@@2) (=> (= (ControlFlow 0 223694) 224150) anon40_Else_correct@@2)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_127208 (|Store__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 false) (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 223592) 223694))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_127208 (|Store__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 223706) 223694))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'#0'$0$$t17@0|) (and (=> (= (ControlFlow 0 223580) 223706) |inline$$1_Diem_mint'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 223580) 223592) |inline$$1_Diem_mint'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$L3_correct|  (=> (= $abort_code@5 |inline$$1_Diem_mint'#0'$0$$t10@1|) (=> (and (and (= $es@2 $es@0) (= $abort_flag@4 true)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 223458) 224164) anon40_Then_correct@@2) (=> (= (ControlFlow 0 223458) 224150) anon40_Else_correct@@2))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (= |inline$$1_Diem_mint'#0'$0$$t10@0| |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t10@0|) (= (ControlFlow 0 223774) 223458))) |inline$$1_Diem_mint'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_mint'#0'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'#0'$0$$t15@0| ($1_Diem_MintEvent _$t1@@5 (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= |inline$$1_Diem_mint'#0'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 223574) 223774) |inline$$1_Diem_mint'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 223574) 223580) |inline$$1_Diem_mint'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 223788) 223458))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 223840) 223788) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 223840) 223574) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (= (ControlFlow 0 223838) 223840)) |inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|) (= |inline$$1_Diem_mint'#0'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|))) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 223478) 223788) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 223478) 223574) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t7@1| (and (=> (= (ControlFlow 0 223464) 223838) |inline$$1_Diem_mint'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 223464) 223478) |inline$$1_Diem_mint'#0'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$t7@1|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= (ControlFlow 0 223452) 223458))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= _$t0@@6 _$t0@@6)) (and (= _$t1@@5 _$t1@@5) (|$IsValid'address'| |inline$$1_Diem_mint'#0'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t6@0| (|$addr#$signer| _$t0@@6)) (= |inline$$1_Diem_mint'#0'$0$$t6@0| |inline$$1_Diem_mint'#0'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t7@1| |inline$$1_Diem_mint'#0'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 223436) 223464) |inline$$1_Diem_mint'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 223436) 223452) |inline$$1_Diem_mint'#0'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@2  (=> (and (not $abort_flag@2) (= $t35 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 223846) (- 0 300275)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (=> (= (ControlFlow 0 223846) 223436) |inline$$1_Diem_mint'#0'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@2  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 224178) 222412))) L8_correct)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_113195| $t31@0)) (= $es@0 (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_87373| stream@@16)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@16) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@16) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@8)))))) (and (=> (= (ControlFlow 0 222651) 224178) anon39_Then_correct@@2) (=> (= (ControlFlow 0 222651) 223846) anon39_Else_correct@@2)))))
(let ((anon38_Else_correct@@2  (=> (not $t33) (=> (and (and (|$IsValid'vec'u8''| $t32) (= $t32 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t34@0 ($1_DesignatedDealer_ReceivedMintEvent $t32 _$t2@@2 _$t1@@5)) (= (ControlFlow 0 222657) 222651))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct@@2  (=> $t33 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t17@@5)) (= $t17@@5 $t17@@5)) (and (= $t17@0 $t17@@5) (= (ControlFlow 0 224204) 222412))) L8_correct))))
(let ((anon37_Else_correct@@2  (=> (not $abort_flag@2) (=> (and (= $t31@0 ($Mutation_113195 (|l#$Mutation_174559| $t30@1) (seq.++ (|p#$Mutation_174559| $t30@1) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_174559| $t30@1)))) (= $t33  (not (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 222552) 224204) anon38_Then_correct@@2) (=> (= (ControlFlow 0 222552) 222657) anon38_Else_correct@@2))))))
(let ((anon37_Then_correct@@2  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 224218) 222412))) L8_correct)))
(let ((anon36_Then$1_correct  (=> (= $t30@1 $t30) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 224270) 224218) anon37_Then_correct@@2) (=> (= (ControlFlow 0 224270) 222552) anon37_Else_correct@@2))))))
(let ((anon36_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= (ControlFlow 0 224268) 224270)) anon36_Then$1_correct)))
(let ((anon36_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2) (=> (and (and (= $t30@0 ($Mutation_174559 ($Global _$t2@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (= $t30@1 $t30@0)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 222520) 224218) anon37_Then_correct@@2) (=> (= (ControlFlow 0 222520) 222552) anon37_Else_correct@@2))))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 222498) (- 0 300031)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@2 _$t2@@2)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@2 _$t2@@2) (and (=> (= (ControlFlow 0 222498) 224268) anon36_Then_correct@@2) (=> (= (ControlFlow 0 222498) 222520) anon36_Else_correct@@2))))))
(let ((anon35_Else_correct@@2  (=> (and (and (and (not $abort_flag@0@@2) (= $t27@0 (|$window_start#$1_DesignatedDealer_TierInfo'#0'| $t26@@2))) (and (= $t28@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| $t26@@2)) (= $t29@0 (|$tiers#$1_DesignatedDealer_TierInfo'#0'| $t26@@2)))) (and (and (= $abort_flag@1 $abort_flag@0@@2) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory@1|)) (and (= $abort_code@2 $abort_code@1@@2) (= (ControlFlow 0 224322) 222498)))) L6_correct)))
(let ((anon34_Then$1_correct@@2  (=> (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory|) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 224388) 224336) anon35_Then_correct@@2) (=> (= (ControlFlow 0 224388) 224322) anon35_Else_correct@@2))))))
(let ((anon34_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2)) (= (ControlFlow 0 224386) 224388)) anon34_Then$1_correct@@2)))
(let ((anon34_Else_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2) (= $t26@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'#0'_$memory@0| ($Memory_151526 (|Store__T@[Int]Bool_| (|domain#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2 false) (|contents#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|))) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory@0|)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 224300) 224336) anon35_Then_correct@@2) (=> (= (ControlFlow 0 224300) 224322) anon35_Else_correct@@2))))))
(let ((anon33_Then_correct@@2  (=> $t25@0 (and (=> (= (ControlFlow 0 224280) (- 0 299876)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2) (and (=> (= (ControlFlow 0 224280) 224386) anon34_Then_correct@@2) (=> (= (ControlFlow 0 224280) 224300) anon34_Else_correct@@2)))))))
(let ((anon33_Else_correct@@2  (=> (not $t25@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory|)) (and (= $abort_code@2 $abort_code@0@@2) (= (ControlFlow 0 222490) 222498))) L6_correct))))
(let ((anon32_Then_correct@@2  (=> (and $t22@@2 (= $t25@0 (|Select__T@[Int]Bool_| (|domain#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (and (=> (= (ControlFlow 0 222484) 224280) anon33_Then_correct@@2) (=> (= (ControlFlow 0 222484) 222490) anon33_Else_correct@@2)))))
(let ((anon32_Else_correct@@2  (=> (and (and (not $t22@@2) (= $t24@@2 $t24@@2)) (and (= $t17@0 $t24@@2) (= (ControlFlow 0 222474) 222412))) L8_correct)))
(let ((anon31_Then_correct@@2  (=> inline$$Gt$0$dst@1 (=> (and (= $t22@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@2) (= $t24@@2 5)) (and (= $t24@@2 $t24@@2) (= $t22@@2 $t22@@2))) (and (=> (= (ControlFlow 0 222458) 222484) anon32_Then_correct@@2) (=> (= (ControlFlow 0 222458) 222474) anon32_Else_correct@@2)))))))
(let ((anon31_Else_correct@@2  (=> (and (and (not inline$$Gt$0$dst@1) (= $t21@@5 $t21@@5)) (and (= $t17@0 $t21@@5) (= (ControlFlow 0 222132) 222412))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21@@5) (= $t21@@5 7)) (and (= $t21@@5 $t21@@5) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 222116) 222458) anon31_Then_correct@@2) (=> (= (ControlFlow 0 222116) 222132) anon31_Else_correct@@2))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1@@5 0)) (= (ControlFlow 0 222080) 222116)) anon30_Else$1_correct)))
(let ((anon30_Else_correct@@2  (=> (not $t16@@2) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 222086) 222080)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct@@2  (=> $t16@@2 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@2)) (= 5 $t17@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@2)) 1)) (= 3 $t17@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 186537453)) (= 2 $t17@@5))) (= $t17@@5 $t17@@5)) (and (= $t17@0 $t17@@5) (= (ControlFlow 0 224460) 222412))) L8_correct))))
(let ((anon0$1_correct@@6  (=> (and (and (and (and (forall ((mint_cap_owner@@17 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@17)) 1))))
 :qid |DesignatedDealerseqArraybpl.14548:22|
 :skolemid |366|
)) (forall ((mint_cap_owner@@18 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@18)) 1))))
 :qid |DesignatedDealerseqArraybpl.14548:269|
 :skolemid |367|
))) (forall ((mint_cap_owner@@19 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@19)) 1))))
 :qid |DesignatedDealerseqArraybpl.14548:517|
 :skolemid |368|
))) (and (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@29) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@29)) 1))))
 :qid |DesignatedDealerseqArraybpl.14556:21|
 :skolemid |369|
)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@30) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@30)) 1))))
 :qid |DesignatedDealerseqArraybpl.14556:231|
 :skolemid |370|
)))) (and (and (and (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@31)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@31)) 2))))
 :qid |DesignatedDealerseqArraybpl.14560:22|
 :skolemid |371|
)) (forall ((addr1@@32 Int) ) (!  (=> (|$IsValid'address'| addr1@@32) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@32)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@32)) 2))))
 :qid |DesignatedDealerseqArraybpl.14560:293|
 :skolemid |372|
))) (forall ((addr1@@33 Int) ) (!  (=> (|$IsValid'address'| addr1@@33) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@33)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@33)) 2))))
 :qid |DesignatedDealerseqArraybpl.14560:565|
 :skolemid |373|
))) (and (and (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.14564:22|
 :skolemid |374|
)) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@106) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.14564:222|
 :skolemid |375|
))) (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@107) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.14564:423|
 :skolemid |376|
))))) (=> (and (and (and (and (and (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.14568:22|
 :skolemid |377|
)) (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@109) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.14568:227|
 :skolemid |378|
))) (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@110) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.14568:433|
 :skolemid |379|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@6))) (and (and (and (|$IsValid'u64'| _$t1@@5) (|$IsValid'address'| _$t2@@2)) (and (|$IsValid'u64'| _$t3) (forall (($a_0@@39 Int) ) (! (let (($rsc@@39 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@39)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@39))
 :qid |DesignatedDealerseqArraybpl.14588:20|
 :skolemid |380|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@39))
)))) (and (and (forall (($a_0@@40 Int) ) (! (let (($rsc@@40 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@40)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@40) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@40)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@40) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.14592:20|
 :skolemid |381|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@40))
)) (forall (($a_0@@41 Int) ) (! (let (($rsc@@41 (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@41)))
(|$IsValid'$1_Diem_MintCapability'#0''| $rsc@@41))
 :qid |DesignatedDealerseqArraybpl.14596:20|
 :skolemid |382|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@41))
))) (and (forall (($a_0@@42 Int) ) (! (let (($rsc@@42 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@42)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@42))
 :qid |DesignatedDealerseqArraybpl.14600:20|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@42))
)) (forall (($a_0@@43 Int) ) (! (let (($rsc@@43 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@43)))
(|$IsValid'$1_DesignatedDealer_TierInfo'#0''| $rsc@@43))
 :qid |DesignatedDealerseqArraybpl.14604:20|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_151526| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@43))
)))))) (and (and (and (and (= $t8@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t9@@5 (|$addr#$signer| _$t0@@6))) (and (= $t10@@5 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (= $t11@@5 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t2@@2 _$t1@@5)))) (and (and (= $t12@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t13@@2 (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t12@@5))) (and (= $t14@@2 ($1_Diem_MintEvent _$t1@@5 (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t12@@5))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@2 _$t2@@2)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5))) (and (and (= _$t2@@2 _$t2@@2) (= _$t3 _$t3)) (and (= $t15@@2 (|$addr#$signer| _$t0@@6)) (= $t16@@2  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@2)) 1))) (not (= (|$addr#$signer| _$t0@@6) 186537453))))))))) (and (=> (= (ControlFlow 0 222026) 224460) anon30_Then_correct@@2) (=> (= (ControlFlow 0 222026) 222086) anon30_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_87373| stream@@17) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@17) v@@52) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 221308) 222026)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (seq.len (|p#$Mutation_174559| $t30)) 0) (=> (and (= (seq.len (|p#$Mutation_113195| $t31)) 0) (= (ControlFlow 0 221318) 221308)) inline$$InitEventStore$0$anon0_correct@@6))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 298754) 221318) anon0_correct@@6)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t37@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| () T@$Memory_126958)
(declare-fun _$t1@@6 () Int)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun $t9@@6 () Int)
(declare-fun _$t2@@3 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_151184)
(declare-fun $t8@@6 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@2@@0 () T@$EventStore)
(declare-fun $t10@@6 () T@$1_Event_EventHandle)
(declare-fun $t11@@6 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t12@@6 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t13@@3 () T@$1_Event_EventHandle)
(declare-fun $t14@@3 () T@$1_Diem_MintEvent)
(declare-fun $t17@0@@0 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_126958)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@1@@0 () T@$EventStore)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_126958)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_126958)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@1| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t11@1| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| Int) |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t35@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t31@0@@0 () T@$Mutation_113195)
(declare-fun $t34@0@@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33@@0 () Bool)
(declare-fun $t32@@0 () (Seq Int))
(declare-fun $t17@@6 () Int)
(declare-fun $t30@1@@0 () T@$Mutation_174559)
(declare-fun $t30@@0 () T@$Mutation_174559)
(declare-fun $t30@0@@0 () T@$Mutation_174559)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@3 () |T@[Int]Bool|)
(declare-fun $t27@0@@0 () Int)
(declare-fun $t26@@3 () |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun $t28@0@@0 () Int)
(declare-fun $t29@0@@0 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_151184)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory| () T@$Memory_151184)
(declare-fun $t26@0@@0 () |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_151184)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t25@0@@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22@@3 () Bool)
(declare-fun $t24@@3 () Int)
(declare-fun inline$$Gt$0$dst@1@@0 () Bool)
(declare-fun $t21@@6 () Int)
(declare-fun $t16@@3 () Bool)
(declare-fun $t15@@3 () Int)
(declare-fun _$t3@@0 () Int)
(declare-fun $t31@@0 () T@$Mutation_113195)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 301457) (let ((anon40_Else_correct@@3  (=> (not $abort_flag@4@@0) (=> (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) (= $t37@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 227721) (- 0 303899)) (not (= _$t1@@6 0))) (=> (not (= _$t1@@6 0)) (and (=> (= (ControlFlow 0 227721) (- 0 303909)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7)))) (and (=> (= (ControlFlow 0 227721) (- 0 303922)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6))) (and (=> (= (ControlFlow 0 227721) (- 0 303934)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6)) 1))) (and (=> (= (ControlFlow 0 227721) (- 0 303952)) (not (not (= (|$addr#$signer| _$t0@@7) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 186537453))) (and (=> (= (ControlFlow 0 227721) (- 0 303966)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (and (=> (= (ControlFlow 0 227721) (- 0 303977)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 227721) (- 0 303989)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (and (=> (= (ControlFlow 0 227721) (- 0 304006)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 227721) (- 0 304016)) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 227721) (- 0 304024)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2|) _$t2@@3))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2|) _$t2@@3)) (and (=> (= (ControlFlow 0 227721) (- 0 304033)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) _$t1@@6)) (=> (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) _$t1@@6) (and (=> (= (ControlFlow 0 227721) (- 0 304042)) (= $t37@@0 (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6)))) (=> (= $t37@@0 (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))) (and (=> (= (ControlFlow 0 227721) (- 0 304060)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_87373| stream@@18)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@9))))))
 (and (<= (|counter#$EventStore| expected@@4) (|counter#$EventStore| actual@@4)) (forall ((handle@@14 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@4) handle@@14)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@4) handle@@14))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@4) handle@@14)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@4) handle@@14)) v@@53))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
)))))) (=> (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@5 (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_87373| stream@@19)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@10))))))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@15 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@5) handle@@15)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@5) handle@@15))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@5) handle@@15)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@5) handle@@15)) v@@54))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))) (and (=> (= (ControlFlow 0 227721) (- 0 304085)) (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@6 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6)) (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_87373| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11))))) $t13@@3)))
(let ((stream_new@@12 (let ((len@@12 (|l#Multiset_87373| stream@@20)))
(let ((cnt@@12 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@20) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@20) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3) (+ cnt@@12 1)) (+ len@@12 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_87373| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_87373| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11))))) $t13@@3 stream_new@@12)))) (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_87373| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11)))))))
 (and (<= (|counter#$EventStore| expected@@6) (|counter#$EventStore| actual@@6)) (forall ((handle@@16 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@6) handle@@16)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@6) handle@@16))) (forall ((v@@55 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@6) handle@@16)) v@@55) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@6) handle@@16)) v@@55))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
)))))) (=> (let ((actual@@7 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@7 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6)) (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_87373| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13))))) $t13@@3)))
(let ((stream_new@@14 (let ((len@@14 (|l#Multiset_87373| stream@@22)))
(let ((cnt@@14 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@22) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@22) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3) (+ cnt@@14 1)) (+ len@@14 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_87373| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_87373| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13))))) $t13@@3 stream_new@@14)))) (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_87373| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13)))))))
 (and (<= (|counter#$EventStore| expected@@7) (|counter#$EventStore| actual@@7)) (forall ((handle@@17 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@7) handle@@17)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@7) handle@@17))) (forall ((v@@56 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@7) handle@@17)) v@@56) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@7) handle@@17)) v@@56))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 227721) (- 0 304122)) (let ((actual@@8 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@8 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6)) (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_87373| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15))))) $t13@@3)))
(let ((stream_new@@16 (let ((len@@16 (|l#Multiset_87373| stream@@24)))
(let ((cnt@@16 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@24) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@24) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3) (+ cnt@@16 1)) (+ len@@16 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_87373| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_87373| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15))))) $t13@@3 stream_new@@16)))) (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_87373| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15)))))))
 (and (<= (|counter#$EventStore| actual@@8) (|counter#$EventStore| expected@@8)) (forall ((handle@@18 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@8) handle@@18)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@8) handle@@18))) (forall ((v@@57 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@8) handle@@18)) v@@57) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@8) handle@@18)) v@@57))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct@@0  (and (=> (= (ControlFlow 0 225983) (- 0 303629)) (or (or (or (or (or (or (or (or (= _$t1@@6 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6)) 1))) (not (= (|$addr#$signer| _$t0@@7) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@6 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6)) 1))) (not (= (|$addr#$signer| _$t0@@7) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 225983) (- 0 303717)) (or (or (or (or (or (or (or (or (and (= _$t1@@6 0) (= 7 $t17@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7))) (= 4 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6)) (= 5 $t17@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@6)) 1)) (= 3 $t17@0@@0))) (and (not (= (|$addr#$signer| _$t0@@7) 186537453)) (= 2 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)) (= 5 $t17@0@@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 1 $t17@0@@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128) (= 8 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17@0@@0))))))))
(let ((anon35_Then_correct@@3  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@0 $abort_code@1@@3) (= (ControlFlow 0 227907) 225983))) L8_correct@@0)))
(let ((anon40_Then_correct@@3  (=> (and (and $abort_flag@4@@0 (= $abort_code@5@@0 $abort_code@5@@0)) (and (= $t17@0@@0 $abort_code@5@@0) (= (ControlFlow 0 227735) 225983))) L8_correct@@0)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|  (=> (and (and (and (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))) (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) _$t1@@6)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0|)))) (and (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (= $es@1@@0 (ite |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0| (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es@0@@0) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0|)))
(let ((stream_new@@17 (let ((len@@17 (|l#Multiset_87373| stream@@26)))
(let ((cnt@@17 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@26) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0|))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@26) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0|) (+ cnt@@17 1)) (+ len@@17 1))))))
($EventStore (+ (|counter#$EventStore| $es@0@@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es@0@@0) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| stream_new@@17)))) $es@0@@0))) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= $abort_code@5@@0 $abort_code@4@@0))) (and (and (= $es@2@@0 $es@1@@0) (= $abort_flag@4@@0 $abort_flag@3@@0)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|))))) (and (=> (= (ControlFlow 0 227265) 227735) anon40_Then_correct@@3) (=> (= (ControlFlow 0 227265) 227721) anon40_Else_correct@@3)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| ($Memory_126958 (|Store__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 false) (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 227163) 227265))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| ($Memory_126958 (|Store__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@1|)))) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) (= (ControlFlow 0 227277) 227265))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0|) (and (=> (= (ControlFlow 0 227151) 227277) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 227151) 227163) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|  (=> (= $abort_code@5@@0 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1|) (=> (and (and (= $es@2@@0 $es@0@@0) (= $abort_flag@4@@0 true)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|))) (and (=> (= (ControlFlow 0 227029) 227735) anon40_Then_correct@@3) (=> (= (ControlFlow 0 227029) 227721) anon40_Else_correct@@3))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128) (= 8 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|))) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 227345) 227029))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3@@0) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0| ($1_Diem_MintEvent _$t1@@6 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 227145) 227345) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 227145) 227151) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| $abort_code@4@@0) (= (ControlFlow 0 227359) 227029))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3@@0 true) (= $abort_code@4@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 227411) 227359) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 227411) 227145) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (= (ControlFlow 0 227409) 227411)) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|))) (and (= $abort_flag@3@@0 $abort_flag@2@@0) (= $abort_code@4@@0 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 227049) 227359) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 227049) 227145) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| (and (=> (= (ControlFlow 0 227035) 227409) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 227035) 227049) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 227023) 227029))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= _$t0@@7 _$t0@@7)) (and (= _$t1@@6 _$t1@@6) (|$IsValid'address'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| (|$addr#$signer| _$t0@@7)) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 227007) 227035) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 227007) 227023) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@3  (=> (and (not $abort_flag@2@@0) (= $t35@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 227417) (- 0 302988)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816) (=> (= (ControlFlow 0 227417) 227007) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@3  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 227749) 225983))) L8_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0| (|v#$Mutation_113195| $t31@0@@0)) (= $es@0@@0 (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0|)))
(let ((stream_new@@18 (let ((len@@18 (|l#Multiset_87373| stream@@27)))
(let ((cnt@@18 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@27) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@0))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@27) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@0) (+ cnt@@18 1)) (+ len@@18 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0| stream_new@@18)))))) (and (=> (= (ControlFlow 0 226222) 227749) anon39_Then_correct@@3) (=> (= (ControlFlow 0 226222) 227417) anon39_Else_correct@@3)))))
(let ((anon38_Else_correct@@3  (=> (not $t33@@0) (=> (and (and (|$IsValid'vec'u8''| $t32@@0) (= $t32@@0 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= $t34@0@@0 ($1_DesignatedDealer_ReceivedMintEvent $t32@@0 _$t2@@3 _$t1@@6)) (= (ControlFlow 0 226228) 226222))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|))))
(let ((anon38_Then_correct@@3  (=> $t33@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17@@6)) (= $t17@@6 $t17@@6)) (and (= $t17@0@@0 $t17@@6) (= (ControlFlow 0 227775) 225983))) L8_correct@@0))))
(let ((anon37_Else_correct@@3  (=> (not $abort_flag@2@@0) (=> (and (= $t31@0@@0 ($Mutation_113195 (|l#$Mutation_174559| $t30@1@@0) (seq.++ (|p#$Mutation_174559| $t30@1@@0) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_174559| $t30@1@@0)))) (= $t33@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 226123) 227775) anon38_Then_correct@@3) (=> (= (ControlFlow 0 226123) 226228) anon38_Else_correct@@3))))))
(let ((anon37_Then_correct@@3  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 227789) 225983))) L8_correct@@0)))
(let ((anon36_Then$1_correct@@0  (=> (= $t30@1@@0 $t30@@0) (=> (and (= $abort_flag@2@@0 true) (= $abort_code@3@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 227841) 227789) anon37_Then_correct@@3) (=> (= (ControlFlow 0 227841) 226123) anon37_Else_correct@@3))))))
(let ((anon36_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)) (= (ControlFlow 0 227839) 227841)) anon36_Then$1_correct@@0)))
(let ((anon36_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3) (=> (and (and (= $t30@0@@0 ($Mutation_174559 ($Global _$t2@@3) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (= $t30@1@@0 $t30@0@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= $abort_code@3@@0 $abort_code@2@@0))) (and (=> (= (ControlFlow 0 226091) 227789) anon37_Then_correct@@3) (=> (= (ControlFlow 0 226091) 226123) anon37_Else_correct@@3))))))
(let ((L6_correct@@0  (and (=> (= (ControlFlow 0 226069) (- 0 302744)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@3 _$t2@@3)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@3 _$t2@@3) (and (=> (= (ControlFlow 0 226069) 227839) anon36_Then_correct@@3) (=> (= (ControlFlow 0 226069) 226091) anon36_Else_correct@@3))))))
(let ((anon35_Else_correct@@3  (=> (and (and (and (not $abort_flag@0@@3) (= $t27@0@@0 (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26@@3))) (and (= $t28@0@@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26@@3)) (= $t29@0@@0 (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26@@3)))) (and (and (= $abort_flag@1@@0 $abort_flag@0@@3) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1|)) (and (= $abort_code@2@@0 $abort_code@1@@3) (= (ControlFlow 0 227893) 226069)))) L6_correct@@0)))
(let ((anon34_Then$1_correct@@3  (=> (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 227959) 227907) anon35_Then_correct@@3) (=> (= (ControlFlow 0 227959) 227893) anon35_Else_correct@@3))))))
(let ((anon34_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3)) (= (ControlFlow 0 227957) 227959)) anon34_Then$1_correct@@3)))
(let ((anon34_Else_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3) (= $t26@0@@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0| ($Memory_151184 (|Store__T@[Int]Bool_| (|domain#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3 false) (|contents#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|))) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 227871) 227907) anon35_Then_correct@@3) (=> (= (ControlFlow 0 227871) 227893) anon35_Else_correct@@3))))))
(let ((anon33_Then_correct@@3  (=> $t25@0@@0 (and (=> (= (ControlFlow 0 227851) (- 0 302589)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2@@3)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2@@3) (and (=> (= (ControlFlow 0 227851) 227957) anon34_Then_correct@@3) (=> (= (ControlFlow 0 227851) 227871) anon34_Else_correct@@3)))))))
(let ((anon33_Else_correct@@3  (=> (not $t25@0@@0) (=> (and (and (= $abort_flag@1@@0 false) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|)) (and (= $abort_code@2@@0 $abort_code@0@@3) (= (ControlFlow 0 226061) 226069))) L6_correct@@0))))
(let ((anon32_Then_correct@@3  (=> (and $t22@@3 (= $t25@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3))) (and (=> (= (ControlFlow 0 226055) 227851) anon33_Then_correct@@3) (=> (= (ControlFlow 0 226055) 226061) anon33_Else_correct@@3)))))
(let ((anon32_Else_correct@@3  (=> (and (and (not $t22@@3) (= $t24@@3 $t24@@3)) (and (= $t17@0@@0 $t24@@3) (= (ControlFlow 0 226045) 225983))) L8_correct@@0)))
(let ((anon31_Then_correct@@3  (=> inline$$Gt$0$dst@1@@0 (=> (and (= $t22@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@3) (= $t24@@3 5)) (and (= $t24@@3 $t24@@3) (= $t22@@3 $t22@@3))) (and (=> (= (ControlFlow 0 226029) 226055) anon32_Then_correct@@3) (=> (= (ControlFlow 0 226029) 226045) anon32_Else_correct@@3)))))))
(let ((anon31_Else_correct@@3  (=> (and (and (not inline$$Gt$0$dst@1@@0) (= $t21@@6 $t21@@6)) (and (= $t17@0@@0 $t21@@6) (= (ControlFlow 0 225703) 225983))) L8_correct@@0)))
(let ((anon30_Else$1_correct@@0  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21@@6) (= $t21@@6 7)) (and (= $t21@@6 $t21@@6) (= inline$$Gt$0$dst@1@@0 inline$$Gt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 225687) 226029) anon31_Then_correct@@3) (=> (= (ControlFlow 0 225687) 225703) anon31_Else_correct@@3))))))
(let ((inline$$Gt$0$anon0_correct@@0  (=> (and (= inline$$Gt$0$dst@1@@0 (> _$t1@@6 0)) (= (ControlFlow 0 225651) 225687)) anon30_Else$1_correct@@0)))
(let ((anon30_Else_correct@@3  (=> (not $t16@@3) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 225657) 225651)) inline$$Gt$0$anon0_correct@@0))))
(let ((anon30_Then_correct@@3  (=> $t16@@3 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@3)) (= 5 $t17@@6)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@3)) 1)) (= 3 $t17@@6))) (and (not (= (|$addr#$signer| _$t0@@7) 186537453)) (= 2 $t17@@6))) (= $t17@@6 $t17@@6)) (and (= $t17@0@@0 $t17@@6) (= (ControlFlow 0 228031) 225983))) L8_correct@@0))))
(let ((anon0$1_correct@@7  (=> (and (and (and (and (forall ((mint_cap_owner@@20 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@20)) 1))))
 :qid |DesignatedDealerseqArraybpl.15150:22|
 :skolemid |385|
)) (forall ((mint_cap_owner@@21 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@21)) 1))))
 :qid |DesignatedDealerseqArraybpl.15150:269|
 :skolemid |386|
))) (forall ((mint_cap_owner@@22 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@22)) 1))))
 :qid |DesignatedDealerseqArraybpl.15150:517|
 :skolemid |387|
))) (and (forall ((addr1@@34 Int) ) (!  (=> (|$IsValid'address'| addr1@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@34) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@34)) 1))))
 :qid |DesignatedDealerseqArraybpl.15158:21|
 :skolemid |388|
)) (forall ((addr1@@35 Int) ) (!  (=> (|$IsValid'address'| addr1@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@35)) 1))))
 :qid |DesignatedDealerseqArraybpl.15158:231|
 :skolemid |389|
)))) (and (and (and (forall ((addr1@@36 Int) ) (!  (=> (|$IsValid'address'| addr1@@36) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@36)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@36)) 2))))
 :qid |DesignatedDealerseqArraybpl.15162:22|
 :skolemid |390|
)) (forall ((addr1@@37 Int) ) (!  (=> (|$IsValid'address'| addr1@@37) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@37)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@37)) 2))))
 :qid |DesignatedDealerseqArraybpl.15162:293|
 :skolemid |391|
))) (forall ((addr1@@38 Int) ) (!  (=> (|$IsValid'address'| addr1@@38) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@38) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@38)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@38)) 2))))
 :qid |DesignatedDealerseqArraybpl.15162:565|
 :skolemid |392|
))) (and (and (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@111) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15166:22|
 :skolemid |393|
)) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@112) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15166:222|
 :skolemid |394|
))) (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@113) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15166:423|
 :skolemid |395|
))))) (=> (and (and (and (and (and (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15170:22|
 :skolemid |396|
)) (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15170:227|
 :skolemid |397|
))) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15170:433|
 :skolemid |398|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119411| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@7)))) (and (and (and (|$IsValid'u64'| _$t1@@6) (|$IsValid'address'| _$t2@@3)) (and (|$IsValid'u64'| _$t3@@0) (forall (($a_0@@44 Int) ) (! (let (($rsc@@44 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@44)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@44))
 :qid |DesignatedDealerseqArraybpl.15194:20|
 :skolemid |399|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@44))
)))) (and (and (forall (($a_0@@45 Int) ) (! (let (($rsc@@45 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@45)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@45) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@45)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@45) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.15198:20|
 :skolemid |400|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@45))
)) (forall (($a_0@@46 Int) ) (! (let (($rsc@@46 (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@46)))
(|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| $rsc@@46))
 :qid |DesignatedDealerseqArraybpl.15202:20|
 :skolemid |401|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@46))
))) (and (forall (($a_0@@47 Int) ) (! (let (($rsc@@47 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@47)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@47))
 :qid |DesignatedDealerseqArraybpl.15206:20|
 :skolemid |402|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@47))
)) (forall (($a_0@@48 Int) ) (! (let (($rsc@@48 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) $a_0@@48)))
(|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| $rsc@@48))
 :qid |DesignatedDealerseqArraybpl.15210:20|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_151184| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) $a_0@@48))
)))))) (and (and (and (and (= $t8@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t9@@6 (|$addr#$signer| _$t0@@7))) (and (= $t10@@6 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (= $t11@@6 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t2@@3 _$t1@@6)))) (and (and (= $t12@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t13@@3 (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6))) (and (= $t14@@3 ($1_Diem_MintEvent _$t1@@6 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@3 _$t2@@3)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2@@3)) (and (= _$t0@@7 _$t0@@7) (= _$t1@@6 _$t1@@6))) (and (and (= _$t2@@3 _$t2@@3) (= _$t3@@0 _$t3@@0)) (and (= $t15@@3 (|$addr#$signer| _$t0@@7)) (= $t16@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@3)) 1))) (not (= (|$addr#$signer| _$t0@@7) 186537453))))))))) (and (=> (= (ControlFlow 0 225597) 228031) anon30_Then_correct@@3) (=> (= (ControlFlow 0 225597) 225657) anon30_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@28 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_87373| stream@@28) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@28) v@@58) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 224869) 225597)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (seq.len (|p#$Mutation_174559| $t30@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_113195| $t31@@0)) 0) (= (ControlFlow 0 224879) 224869)) inline$$InitEventStore$0$anon0_correct@@7))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 301457) 224879) anon0_correct@@7)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4@@1 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t37@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| () T@$Memory_127022)
(declare-fun _$t1@@7 () Int)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t9@@7 () Int)
(declare-fun _$t2@@4 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_151355)
(declare-fun $t8@@7 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $es@2@@1 () T@$EventStore)
(declare-fun $t10@@7 () T@$1_Event_EventHandle)
(declare-fun $t11@@7 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t12@@7 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t13@@4 () T@$1_Event_EventHandle)
(declare-fun $t14@@4 () T@$1_Diem_MintEvent)
(declare-fun $t17@0@@1 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $abort_code@5@@1 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_127022)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $es@1@@1 () T@$EventStore)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $abort_code@4@@1 () Int)
(declare-fun $abort_flag@3@@1 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_127022)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_127022)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t11@1| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| Int) |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t35@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1| () T@$1_Event_EventHandle)
(declare-fun $t31@0@@1 () T@$Mutation_113195)
(declare-fun $t34@0@@1 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33@@1 () Bool)
(declare-fun $t32@@1 () (Seq Int))
(declare-fun $t17@@7 () Int)
(declare-fun $t30@1@@1 () T@$Mutation_174559)
(declare-fun $t30@@1 () T@$Mutation_174559)
(declare-fun $t30@0@@1 () T@$Mutation_174559)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@4 () |T@[Int]Bool|)
(declare-fun $t27@0@@1 () Int)
(declare-fun $t26@@4 () |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|)
(declare-fun $t28@0@@1 () Int)
(declare-fun $t29@0@@1 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_151355)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory| () T@$Memory_151355)
(declare-fun $t26@0@@1 () |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_151355)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t25@0@@1 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22@@4 () Bool)
(declare-fun $t24@@4 () Int)
(declare-fun inline$$Gt$0$dst@1@@1 () Bool)
(declare-fun $t21@@7 () Int)
(declare-fun $t16@@4 () Bool)
(declare-fun $t15@@4 () Int)
(declare-fun _$t3@@1 () Int)
(declare-fun $t31@@1 () T@$Mutation_113195)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 304170) (let ((anon40_Else_correct@@4  (=> (not $abort_flag@4@@1) (=> (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1|) (= $t37@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 231284) (- 0 306602)) (not (= _$t1@@7 0))) (=> (not (= _$t1@@7 0)) (and (=> (= (ControlFlow 0 231284) (- 0 306612)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8)))) (and (=> (= (ControlFlow 0 231284) (- 0 306625)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7))) (and (=> (= (ControlFlow 0 231284) (- 0 306637)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (and (=> (= (ControlFlow 0 231284) (- 0 306655)) (not (not (= (|$addr#$signer| _$t0@@8) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 186537453))) (and (=> (= (ControlFlow 0 231284) (- 0 306669)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (and (=> (= (ControlFlow 0 231284) (- 0 306680)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 231284) (- 0 306692)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (and (=> (= (ControlFlow 0 231284) (- 0 306709)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 231284) (- 0 306719)) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 231284) (- 0 306727)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2|) _$t2@@4))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2|) _$t2@@4)) (and (=> (= (ControlFlow 0 231284) (- 0 306736)) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1|) _$t1@@7)) (=> (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1|) _$t1@@7) (and (=> (= (ControlFlow 0 231284) (- 0 306745)) (= $t37@@1 (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7)))) (=> (= $t37@@1 (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))) (and (=> (= (ControlFlow 0 231284) (- 0 306763)) (let ((actual@@9 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@9 (let ((stream@@29 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@19 (let ((len@@19 (|l#Multiset_87373| stream@@29)))
(let ((cnt@@19 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@29) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@29) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@19 1)) (+ len@@19 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@19))))))
 (and (<= (|counter#$EventStore| expected@@9) (|counter#$EventStore| actual@@9)) (forall ((handle@@20 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@9) handle@@20)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@9) handle@@20))) (forall ((v@@59 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@9) handle@@20)) v@@59) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@9) handle@@20)) v@@59))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
)))))) (=> (let ((actual@@10 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@10 (let ((stream@@30 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@20 (let ((len@@20 (|l#Multiset_87373| stream@@30)))
(let ((cnt@@20 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@30) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@30) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@20 1)) (+ len@@20 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@20))))))
 (and (<= (|counter#$EventStore| expected@@10) (|counter#$EventStore| actual@@10)) (forall ((handle@@21 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@10) handle@@21)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@10) handle@@21))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@10) handle@@21)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@10) handle@@21)) v@@60))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))) (and (=> (= (ControlFlow 0 231284) (- 0 306788)) (let ((actual@@11 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@11 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7)) (let ((stream@@31 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_87373| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21))))) $t13@@4)))
(let ((stream_new@@22 (let ((len@@22 (|l#Multiset_87373| stream@@31)))
(let ((cnt@@22 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@31) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@31) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4) (+ cnt@@22 1)) (+ len@@22 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_87373| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_87373| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21))))) $t13@@4 stream_new@@22)))) (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_87373| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21)))))))
 (and (<= (|counter#$EventStore| expected@@11) (|counter#$EventStore| actual@@11)) (forall ((handle@@22 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@11) handle@@22)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@11) handle@@22))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@11) handle@@22)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@11) handle@@22)) v@@61))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
)))))) (=> (let ((actual@@12 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@12 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7)) (let ((stream@@33 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_87373| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23))))) $t13@@4)))
(let ((stream_new@@24 (let ((len@@24 (|l#Multiset_87373| stream@@33)))
(let ((cnt@@24 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@33) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@33) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4) (+ cnt@@24 1)) (+ len@@24 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_87373| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_87373| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23))))) $t13@@4 stream_new@@24)))) (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_87373| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23)))))))
 (and (<= (|counter#$EventStore| expected@@12) (|counter#$EventStore| actual@@12)) (forall ((handle@@23 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@12) handle@@23)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@12) handle@@23))) (forall ((v@@62 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@12) handle@@23)) v@@62) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@12) handle@@23)) v@@62))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 231284) (- 0 306825)) (let ((actual@@13 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@13 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7)) (let ((stream@@35 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_87373| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25))))) $t13@@4)))
(let ((stream_new@@26 (let ((len@@26 (|l#Multiset_87373| stream@@35)))
(let ((cnt@@26 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@35) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@35) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4) (+ cnt@@26 1)) (+ len@@26 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_87373| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_87373| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25))))) $t13@@4 stream_new@@26)))) (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_87373| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25)))))))
 (and (<= (|counter#$EventStore| actual@@13) (|counter#$EventStore| expected@@13)) (forall ((handle@@24 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@13) handle@@24)) (|l#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@13) handle@@24))) (forall ((v@@63 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| actual@@13) handle@@24)) v@@63) (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| expected@@13) handle@@24)) v@@63))
 :qid |DesignatedDealerseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerseqArraybpl.2924:13|
 :skolemid |80|
))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct@@1  (and (=> (= (ControlFlow 0 229546) (- 0 306332)) (or (or (or (or (or (or (or (or (= _$t1@@7 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= (|$addr#$signer| _$t0@@8) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@7 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= (|$addr#$signer| _$t0@@8) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 229546) (- 0 306420)) (or (or (or (or (or (or (or (or (and (= _$t1@@7 0) (= 7 $t17@0@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8))) (= 4 $t17@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7)) (= 5 $t17@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t9@@7)) 1)) (= 3 $t17@0@@1))) (and (not (= (|$addr#$signer| _$t0@@8) 186537453)) (= 2 $t17@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)) (= 5 $t17@0@@1))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 1 $t17@0@@1))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128) (= 8 $t17@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t17@0@@1))))))))
(let ((anon35_Then_correct@@4  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t17@0@@1 $abort_code@1@@4) (= (ControlFlow 0 231470) 229546))) L8_correct@@1)))
(let ((anon40_Then_correct@@4  (=> (and (and $abort_flag@4@@1 (= $abort_code@5@@1 $abort_code@5@@1)) (and (= $t17@0@@1 $abort_code@5@@1) (= (ControlFlow 0 231298) 229546))) L8_correct@@1)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon13_correct|  (=> (and (and (and (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816))) (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) _$t1@@7)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t15@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t14@0|)))) (and (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0|))) (= $es@1@@1 (ite |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t21@0| (let ((stream@@37 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0|)))
(let ((stream_new@@27 (let ((len@@27 (|l#Multiset_87373| stream@@37)))
(let ((cnt@@27 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@37) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0|))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@37) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0|) (+ cnt@@27 1)) (+ len@@27 1))))))
($EventStore (+ (|counter#$EventStore| $es@0@@1) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0| stream_new@@27)))) $es@0@@1))) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) (= $abort_code@5@@1 $abort_code@4@@1))) (and (and (= $es@2@@1 $es@1@@1) (= $abort_flag@4@@1 $abort_flag@3@@1)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|))))) (and (=> (= (ControlFlow 0 230828) 231298) anon40_Then_correct@@4) (=> (= (ControlFlow 0 230828) 231284) anon40_Else_correct@@4)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| ($Memory_127022 (|Store__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 false) (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 230726) 230828))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| ($Memory_127022 (|Store__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1|)))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0|) (= (ControlFlow 0 230840) 230828))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0|) (and (=> (= (ControlFlow 0 230714) 230840) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 230714) 230726) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|  (=> (= $abort_code@5@@1 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1|) (=> (and (and (= $es@2@@1 $es@0@@1) (= $abort_flag@4@@1 true)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|))) (and (=> (= (ControlFlow 0 230592) 231298) anon40_Then_correct@@4) (=> (= (ControlFlow 0 230592) 231284) anon40_Else_correct@@4))))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128) (= 8 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|))) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|) (= (ControlFlow 0 230908) 230592))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3@@1) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t15@0| ($1_Diem_MintEvent _$t1@@7 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0|))) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 230708) 230908) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 230708) 230714) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3@@1 (= $abort_code@4@@1 $abort_code@4@@1)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| $abort_code@4@@1) (= (ControlFlow 0 230922) 230592))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3@@1 true) (= $abort_code@4@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 230974) 230922) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 230974) 230708) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|)) (= (ControlFlow 0 230972) 230974)) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|contents#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|))) (and (= $abort_flag@3@@1 $abort_flag@2@@1) (= $abort_code@4@@1 $abort_code@3@@1))) (and (=> (= (ControlFlow 0 230612) 230922) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 230612) 230708) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| (and (=> (= (ControlFlow 0 230598) 230972) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 230598) 230612) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|) (= (ControlFlow 0 230586) 230592))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= _$t0@@8 _$t0@@8)) (and (= _$t1@@7 _$t1@@7) (|$IsValid'address'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0| (|$addr#$signer| _$t0@@8)) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 230570) 230598) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 230570) 230586) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@4  (=> (and (not $abort_flag@2@@1) (= $t35@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 230980) (- 0 305691)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816) (=> (= (ControlFlow 0 230980) 230570) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@4  (=> (and (and $abort_flag@2@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= $t17@0@@1 $abort_code@3@@1) (= (ControlFlow 0 231312) 229546))) L8_correct@@1)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1| (|v#$Mutation_113195| $t31@0@@1)) (= $es@0@@1 (let ((stream@@38 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1|)))
(let ((stream_new@@28 (let ((len@@28 (|l#Multiset_87373| stream@@38)))
(let ((cnt@@28 (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@38) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@1))))
(Multiset_87373 (|Store__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@38) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@1) (+ cnt@@28 1)) (+ len@@28 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1| stream_new@@28)))))) (and (=> (= (ControlFlow 0 229785) 231312) anon39_Then_correct@@4) (=> (= (ControlFlow 0 229785) 230980) anon39_Else_correct@@4)))))
(let ((anon38_Else_correct@@4  (=> (not $t33@@1) (=> (and (and (|$IsValid'vec'u8''| $t32@@1) (= $t32@@1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= $t34@0@@1 ($1_DesignatedDealer_ReceivedMintEvent $t32@@1 _$t2@@4 _$t1@@7)) (= (ControlFlow 0 229791) 229785))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|))))
(let ((anon38_Then_correct@@4  (=> $t33@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t17@@7)) (= $t17@@7 $t17@@7)) (and (= $t17@0@@1 $t17@@7) (= (ControlFlow 0 231338) 229546))) L8_correct@@1))))
(let ((anon37_Else_correct@@4  (=> (not $abort_flag@2@@1) (=> (and (= $t31@0@@1 ($Mutation_113195 (|l#$Mutation_174559| $t30@1@@1) (seq.++ (|p#$Mutation_174559| $t30@1@@1) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_174559| $t30@1@@1)))) (= $t33@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 229686) 231338) anon38_Then_correct@@4) (=> (= (ControlFlow 0 229686) 229791) anon38_Else_correct@@4))))))
(let ((anon37_Then_correct@@4  (=> (and (and $abort_flag@2@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= $t17@0@@1 $abort_code@3@@1) (= (ControlFlow 0 231352) 229546))) L8_correct@@1)))
(let ((anon36_Then$1_correct@@1  (=> (= $t30@1@@1 $t30@@1) (=> (and (= $abort_flag@2@@1 true) (= $abort_code@3@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 231404) 231352) anon37_Then_correct@@4) (=> (= (ControlFlow 0 231404) 229686) anon37_Else_correct@@4))))))
(let ((anon36_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)) (= (ControlFlow 0 231402) 231404)) anon36_Then$1_correct@@1)))
(let ((anon36_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4) (=> (and (and (= $t30@0@@1 ($Mutation_174559 ($Global _$t2@@4) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (= $t30@1@@1 $t30@0@@1)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= $abort_code@3@@1 $abort_code@2@@1))) (and (=> (= (ControlFlow 0 229654) 231352) anon37_Then_correct@@4) (=> (= (ControlFlow 0 229654) 229686) anon37_Else_correct@@4))))))
(let ((L6_correct@@1  (and (=> (= (ControlFlow 0 229632) (- 0 305447)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@4 _$t2@@4)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@4 _$t2@@4) (and (=> (= (ControlFlow 0 229632) 231402) anon36_Then_correct@@4) (=> (= (ControlFlow 0 229632) 229654) anon36_Else_correct@@4))))))
(let ((anon35_Else_correct@@4  (=> (and (and (and (not $abort_flag@0@@4) (= $t27@0@@1 (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| $t26@@4))) (and (= $t28@0@@1 (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| $t26@@4)) (= $t29@0@@1 (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| $t26@@4)))) (and (and (= $abort_flag@1@@1 $abort_flag@0@@4) (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1|)) (and (= $abort_code@2@@1 $abort_code@1@@4) (= (ControlFlow 0 231456) 229632)))) L6_correct@@1)))
(let ((anon34_Then$1_correct@@4  (=> (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 231522) 231470) anon35_Then_correct@@4) (=> (= (ControlFlow 0 231522) 231456) anon35_Else_correct@@4))))))
(let ((anon34_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4)) (= (ControlFlow 0 231520) 231522)) anon34_Then$1_correct@@4)))
(let ((anon34_Else_correct@@4  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4) (= $t26@0@@1 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|contents#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@0| ($Memory_151355 (|Store__T@[Int]Bool_| (|domain#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4 false) (|contents#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|))) (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@0|)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 231434) 231470) anon35_Then_correct@@4) (=> (= (ControlFlow 0 231434) 231456) anon35_Else_correct@@4))))))
(let ((anon33_Then_correct@@4  (=> $t25@0@@1 (and (=> (= (ControlFlow 0 231414) (- 0 305292)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| _$t2@@4)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| _$t2@@4) (and (=> (= (ControlFlow 0 231414) 231520) anon34_Then_correct@@4) (=> (= (ControlFlow 0 231414) 231434) anon34_Else_correct@@4)))))))
(let ((anon33_Else_correct@@4  (=> (not $t25@0@@1) (=> (and (and (= $abort_flag@1@@1 false) (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|)) (and (= $abort_code@2@@1 $abort_code@0@@4) (= (ControlFlow 0 229624) 229632))) L6_correct@@1))))
(let ((anon32_Then_correct@@4  (=> (and $t22@@4 (= $t25@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4))) (and (=> (= (ControlFlow 0 229618) 231414) anon33_Then_correct@@4) (=> (= (ControlFlow 0 229618) 229624) anon33_Else_correct@@4)))))
(let ((anon32_Else_correct@@4  (=> (and (and (not $t22@@4) (= $t24@@4 $t24@@4)) (and (= $t17@0@@1 $t24@@4) (= (ControlFlow 0 229608) 229546))) L8_correct@@1)))
(let ((anon31_Then_correct@@4  (=> inline$$Gt$0$dst@1@@1 (=> (and (= $t22@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@4) (= $t24@@4 5)) (and (= $t24@@4 $t24@@4) (= $t22@@4 $t22@@4))) (and (=> (= (ControlFlow 0 229592) 229618) anon32_Then_correct@@4) (=> (= (ControlFlow 0 229592) 229608) anon32_Else_correct@@4)))))))
(let ((anon31_Else_correct@@4  (=> (and (and (not inline$$Gt$0$dst@1@@1) (= $t21@@7 $t21@@7)) (and (= $t17@0@@1 $t21@@7) (= (ControlFlow 0 229266) 229546))) L8_correct@@1)))
(let ((anon30_Else$1_correct@@1  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21@@7) (= $t21@@7 7)) (and (= $t21@@7 $t21@@7) (= inline$$Gt$0$dst@1@@1 inline$$Gt$0$dst@1@@1))) (and (=> (= (ControlFlow 0 229250) 229592) anon31_Then_correct@@4) (=> (= (ControlFlow 0 229250) 229266) anon31_Else_correct@@4))))))
(let ((inline$$Gt$0$anon0_correct@@1  (=> (and (= inline$$Gt$0$dst@1@@1 (> _$t1@@7 0)) (= (ControlFlow 0 229214) 229250)) anon30_Else$1_correct@@1)))
(let ((anon30_Else_correct@@4  (=> (not $t16@@4) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 229220) 229214)) inline$$Gt$0$anon0_correct@@1))))
(let ((anon30_Then_correct@@4  (=> $t16@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@4)) (= 5 $t17@@7)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@4)) 1)) (= 3 $t17@@7))) (and (not (= (|$addr#$signer| _$t0@@8) 186537453)) (= 2 $t17@@7))) (= $t17@@7 $t17@@7)) (and (= $t17@0@@1 $t17@@7) (= (ControlFlow 0 231594) 229546))) L8_correct@@1))))
(let ((anon0$1_correct@@8  (=> (and (and (and (and (forall ((mint_cap_owner@@23 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132436| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@23)) 1))))
 :qid |DesignatedDealerseqArraybpl.15756:22|
 :skolemid |404|
)) (forall ((mint_cap_owner@@24 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@24)) 1))))
 :qid |DesignatedDealerseqArraybpl.15756:269|
 :skolemid |405|
))) (forall ((mint_cap_owner@@25 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132610| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) mint_cap_owner@@25)) 1))))
 :qid |DesignatedDealerseqArraybpl.15756:517|
 :skolemid |406|
))) (and (forall ((addr1@@39 Int) ) (!  (=> (|$IsValid'address'| addr1@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127716| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@39) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@39)) 1))))
 :qid |DesignatedDealerseqArraybpl.15764:21|
 :skolemid |407|
)) (forall ((addr1@@40 Int) ) (!  (=> (|$IsValid'address'| addr1@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127803| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@40) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@40)) 1))))
 :qid |DesignatedDealerseqArraybpl.15764:231|
 :skolemid |408|
)))) (and (and (and (forall ((addr1@@41 Int) ) (!  (=> (|$IsValid'address'| addr1@@41) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@41) (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@41)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@41)) 2))))
 :qid |DesignatedDealerseqArraybpl.15768:22|
 :skolemid |409|
)) (forall ((addr1@@42 Int) ) (!  (=> (|$IsValid'address'| addr1@@42) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@42) (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@42)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@42)) 2))))
 :qid |DesignatedDealerseqArraybpl.15768:293|
 :skolemid |410|
))) (forall ((addr1@@43 Int) ) (!  (=> (|$IsValid'address'| addr1@@43) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr1@@43)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) addr1@@43)) 2))))
 :qid |DesignatedDealerseqArraybpl.15768:565|
 :skolemid |411|
))) (and (and (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132783| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15772:22|
 :skolemid |412|
)) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132874| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@118) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15772:222|
 :skolemid |413|
))) (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132965| |$1_Diem_Preburn'#0'_$memory|) addr@@119) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15772:423|
 :skolemid |414|
))))) (=> (and (and (and (and (and (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133192| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@120) (|Select__T@[Int]Bool_| (|domain#$Memory_126958| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15776:22|
 :skolemid |415|
)) (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133291| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@121) (|Select__T@[Int]Bool_| (|domain#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15776:227|
 :skolemid |416|
))) (forall ((addr@@122 Int) ) (!  (=> (|$IsValid'address'| addr@@122) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133390| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@122) (|Select__T@[Int]Bool_| (|domain#$Memory_127208| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerseqArraybpl.15776:433|
 :skolemid |417|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@8))) (and (and (and (|$IsValid'u64'| _$t1@@7) (|$IsValid'address'| _$t2@@4)) (and (|$IsValid'u64'| _$t3@@1) (forall (($a_0@@49 Int) ) (! (let (($rsc@@49 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@49)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@49))
 :qid |DesignatedDealerseqArraybpl.15796:20|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $a_0@@49))
)))) (and (and (forall (($a_0@@50 Int) ) (! (let (($rsc@@50 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@50)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@50) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@50)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@50) 10000000000))))
 :qid |DesignatedDealerseqArraybpl.15800:20|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@50))
)) (forall (($a_0@@51 Int) ) (! (let (($rsc@@51 (|Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|contents#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) $a_0@@51)))
(|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| $rsc@@51))
 :qid |DesignatedDealerseqArraybpl.15804:20|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|contents#$Memory_132523| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) $a_0@@51))
))) (and (forall (($a_0@@52 Int) ) (! (let (($rsc@@52 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@52)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@52))
 :qid |DesignatedDealerseqArraybpl.15808:20|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) $a_0@@52))
)) (forall (($a_0@@53 Int) ) (! (let (($rsc@@53 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|contents#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) $a_0@@53)))
(|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| $rsc@@53))
 :qid |DesignatedDealerseqArraybpl.15812:20|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|contents#$Memory_151355| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) $a_0@@53))
)))))) (and (and (and (and (= $t8@@7 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t9@@7 (|$addr#$signer| _$t0@@8))) (and (= $t10@@7 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_150885| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (= $t11@@7 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t2@@4 _$t1@@7)))) (and (and (= $t12@@7 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_127022| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t13@@4 (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7))) (and (= $t14@@4 ($1_Diem_MintEvent _$t1@@7 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@4 _$t2@@4)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| _$t2@@4)) (and (= _$t0@@8 _$t0@@8) (= _$t1@@7 _$t1@@7))) (and (and (= _$t2@@4 _$t2@@4) (= _$t3@@1 _$t3@@1)) (and (= $t15@@4 (|$addr#$signer| _$t0@@8)) (= $t16@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119905| $1_Roles_RoleId_$memory) $t15@@4)) 1))) (not (= (|$addr#$signer| _$t0@@8) 186537453))))))))) (and (=> (= (ControlFlow 0 229160) 231594) anon30_Then_correct@@4) (=> (= (ControlFlow 0 229160) 229220) anon30_Else_correct@@4))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@25 T@$1_Event_EventHandle) ) (! (let ((stream@@39 (|Select__T@[$1_Event_EventHandle]Multiset_87373_| (|streams#$EventStore| $es) handle@@25)))
 (and (= (|l#Multiset_87373| stream@@39) 0) (forall ((v@@64 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87373| stream@@39) v@@64) 0)
 :qid |DesignatedDealerseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerseqArraybpl.2908:13|
 :skolemid |79|
))) (= (ControlFlow 0 228442) 229160)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (seq.len (|p#$Mutation_174559| $t30@@1)) 0) (=> (and (= (seq.len (|p#$Mutation_113195| $t31@@1)) 0) (= (ControlFlow 0 228452) 228442)) inline$$InitEventStore$0$anon0_correct@@8))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 304170) 228452) anon0_correct@@8)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 306878) true)
))
(check-sat)
(pop 1)
; Valid
