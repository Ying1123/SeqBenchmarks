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
(declare-datatypes ((T@$Memory_189928 0)) ((($Memory_189928 (|domain#$Memory_189928| |T@[Int]Bool|) (|contents#$Memory_189928| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_153493 0)) (((Vec_153493 (|v#Vec_153493| |T@[Int]#0|) (|l#Vec_153493| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_199682 0)) ((($Memory_199682 (|domain#$Memory_199682| |T@[Int]Bool|) (|contents#$Memory_199682| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_199611 0)) ((($Memory_199611 (|domain#$Memory_199611| |T@[Int]Bool|) (|contents#$Memory_199611| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_199368 0)) ((($Memory_199368 (|domain#$Memory_199368| |T@[Int]Bool|) (|contents#$Memory_199368| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_199297 0)) ((($Memory_199297 (|domain#$Memory_199297| |T@[Int]Bool|) (|contents#$Memory_199297| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_199226 0)) ((($Memory_199226 (|domain#$Memory_199226| |T@[Int]Bool|) (|contents#$Memory_199226| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_244160 0)) ((($Memory_244160 (|domain#$Memory_244160| |T@[Int]Bool|) (|contents#$Memory_244160| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_199058 0)) ((($Memory_199058 (|domain#$Memory_199058| |T@[Int]Bool|) (|contents#$Memory_199058| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_237259 0)) ((($Memory_237259 (|domain#$Memory_237259| |T@[Int]Bool|) (|contents#$Memory_237259| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_237195 0)) ((($Memory_237195 (|domain#$Memory_237195| |T@[Int]Bool|) (|contents#$Memory_237195| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_235803 0)) ((($Memory_235803 (|domain#$Memory_235803| |T@[Int]Bool|) (|contents#$Memory_235803| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_177709 0)) (((Vec_177709 (|v#Vec_177709| |T@[Int]$1_XDX_XDX|) (|l#Vec_177709| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_180389 0)) (((Vec_180389 (|v#Vec_180389| |T@[Int]$1_XUS_XUS|) (|l#Vec_180389| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_232243 0)) ((($Memory_232243 (|domain#$Memory_232243| |T@[Int]Bool|) (|contents#$Memory_232243| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_231956 0)) ((($Memory_231956 (|domain#$Memory_231956| |T@[Int]Bool|) (|contents#$Memory_231956| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_198890 0)) ((($Memory_198890 (|domain#$Memory_198890| |T@[Int]Bool|) (|contents#$Memory_198890| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_198651 0)) ((($Memory_198651 (|domain#$Memory_198651| |T@[Int]Bool|) (|contents#$Memory_198651| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_199540 0)) ((($Memory_199540 (|domain#$Memory_199540| |T@[Int]Bool|) (|contents#$Memory_199540| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_217937 0)) ((($Memory_217937 (|domain#$Memory_217937| |T@[Int]Bool|) (|contents#$Memory_217937| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_217873 0)) ((($Memory_217873 (|domain#$Memory_217873| |T@[Int]Bool|) (|contents#$Memory_217873| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_217809 0)) ((($Memory_217809 (|domain#$Memory_217809| |T@[Int]Bool|) (|contents#$Memory_217809| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_218304 0)) ((($Memory_218304 (|domain#$Memory_218304| |T@[Int]Bool|) (|contents#$Memory_218304| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_218217 0)) ((($Memory_218217 (|domain#$Memory_218217| |T@[Int]Bool|) (|contents#$Memory_218217| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_256753 0)) ((($Memory_256753 (|domain#$Memory_256753| |T@[Int]Bool|) (|contents#$Memory_256753| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_224131 0)) ((($Memory_224131 (|domain#$Memory_224131| |T@[Int]Bool|) (|contents#$Memory_224131| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_203663 0)) ((($Memory_203663 (|domain#$Memory_203663| |T@[Int]Bool|) (|contents#$Memory_203663| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_224050 0)) ((($Memory_224050 (|domain#$Memory_224050| |T@[Int]Bool|) (|contents#$Memory_224050| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_198722 0)) ((($Memory_198722 (|domain#$Memory_198722| |T@[Int]Bool|) (|contents#$Memory_198722| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_203603 0)) ((($Memory_203603 (|domain#$Memory_203603| |T@[Int]Bool|) (|contents#$Memory_203603| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_223969 0)) ((($Memory_223969 (|domain#$Memory_223969| |T@[Int]Bool|) (|contents#$Memory_223969| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_198961 0)) ((($Memory_198961 (|domain#$Memory_198961| |T@[Int]Bool|) (|contents#$Memory_198961| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_213403 0)) ((($Memory_213403 (|domain#$Memory_213403| |T@[Int]Bool|) (|contents#$Memory_213403| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_213316 0)) ((($Memory_213316 (|domain#$Memory_213316| |T@[Int]Bool|) (|contents#$Memory_213316| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_213229 0)) ((($Memory_213229 (|domain#$Memory_213229| |T@[Int]Bool|) (|contents#$Memory_213229| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_213142 0)) ((($Memory_213142 (|domain#$Memory_213142| |T@[Int]Bool|) (|contents#$Memory_213142| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_213055 0)) ((($Memory_213055 (|domain#$Memory_213055| |T@[Int]Bool|) (|contents#$Memory_213055| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_212968 0)) ((($Memory_212968 (|domain#$Memory_212968| |T@[Int]Bool|) (|contents#$Memory_212968| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_198412 0)) ((($Memory_198412 (|domain#$Memory_198412| |T@[Int]Bool|) (|contents#$Memory_198412| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_211895 0)) ((($Memory_211895 (|domain#$Memory_211895| |T@[Int]Bool|) (|contents#$Memory_211895| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_198253 0)) ((($Memory_198253 (|domain#$Memory_198253| |T@[Int]Bool|) (|contents#$Memory_198253| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_197844 0)) ((($Memory_197844 (|domain#$Memory_197844| |T@[Int]Bool|) (|contents#$Memory_197844| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_198160 0)) ((($Memory_198160 (|domain#$Memory_198160| |T@[Int]Bool|) (|contents#$Memory_198160| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_151647 0)) (((Vec_151647 (|v#Vec_151647| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_151647| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_151647) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_151608 0)) (((Vec_151608 (|v#Vec_151608| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_151608| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_151608) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_262630 0)) ((($Memory_262630 (|domain#$Memory_262630| |T@[Int]Bool|) (|contents#$Memory_262630| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_151608) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_30625 0)) (((Vec_30625 (|v#Vec_30625| |T@[Int]Int|) (|l#Vec_30625| Int) ) ) ))
(declare-sort |T@[Int]Vec_30625| 0)
(declare-datatypes ((T@Vec_151838 0)) (((Vec_151838 (|v#Vec_151838| |T@[Int]Vec_30625|) (|l#Vec_151838| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_151838) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_199142 0)) ((($Memory_199142 (|domain#$Memory_199142| |T@[Int]Bool|) (|contents#$Memory_199142| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_151838) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_198483 0)) ((($Memory_198483 (|domain#$Memory_198483| |T@[Int]Bool|) (|contents#$Memory_198483| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30625) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30625) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_199766 0)) ((($Memory_199766 (|domain#$Memory_199766| |T@[Int]Bool|) (|contents#$Memory_199766| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_30625) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_211762 0)) ((($Memory_211762 (|domain#$Memory_211762| |T@[Int]Bool|) (|contents#$Memory_211762| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_30625) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_246687 0)) ((($Memory_246687 (|domain#$Memory_246687| |T@[Int]Bool|) (|contents#$Memory_246687| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_30625) (|$base_url#$1_DualAttestation_Credential| T@Vec_30625) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_30625) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_203488 0)) ((($Memory_203488 (|domain#$Memory_203488| |T@[Int]Bool|) (|contents#$Memory_203488| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_152265 0)) (((Vec_152265 (|v#Vec_152265| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_152265| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_152265) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_235739 0)) ((($Memory_235739 (|domain#$Memory_235739| |T@[Int]Bool|) (|contents#$Memory_235739| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_152123 0)) (((Vec_152123 (|v#Vec_152123| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_152123| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_152123) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_224615 0)) ((($Memory_224615 (|domain#$Memory_224615| |T@[Int]Bool|) (|contents#$Memory_224615| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_152084 0)) (((Vec_152084 (|v#Vec_152084| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_152084| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_152084) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_224498 0)) ((($Memory_224498 (|domain#$Memory_224498| |T@[Int]Bool|) (|contents#$Memory_224498| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_152045 0)) (((Vec_152045 (|v#Vec_152045| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_152045| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_152045) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_224381 0)) ((($Memory_224381 (|domain#$Memory_224381| |T@[Int]Bool|) (|contents#$Memory_224381| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_30625) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_217508 0)) ((($Memory_217508 (|domain#$Memory_217508| |T@[Int]Bool|) (|contents#$Memory_217508| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_30625) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_198806 0)) ((($Memory_198806 (|domain#$Memory_198806| |T@[Int]Bool|) (|contents#$Memory_198806| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_30625) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_198567 0)) ((($Memory_198567 (|domain#$Memory_198567| |T@[Int]Bool|) (|contents#$Memory_198567| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_30625) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_30625) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_151569 0)) (((Vec_151569 (|v#Vec_151569| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_151569| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_151569) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_151781 0)) (((Vec_151781 (|v#Vec_151781| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_151781| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_151781) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_198339 0)) ((($Memory_198339 (|domain#$Memory_198339| |T@[Int]Bool|) (|contents#$Memory_198339| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_202755 0)) ((($Memory_202755 (|domain#$Memory_202755| |T@[Int]Bool|) (|contents#$Memory_202755| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_203150 0)) ((($Memory_203150 (|domain#$Memory_203150| |T@[Int]Bool|) (|contents#$Memory_203150| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_197973 0)) ((($Memory_197973 (|domain#$Memory_197973| |T@[Int]Bool|) (|contents#$Memory_197973| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_197291 0)) ((($Memory_197291 (|domain#$Memory_197291| |T@[Int]Bool|) (|contents#$Memory_197291| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_30625) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_30625) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_30625) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_30625) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_30625) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_30625) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_30625) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_30625) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30625) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_30625) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_151483 0)) (((Multiset_151483 (|v#Multiset_151483| |T@[$EventRep]Int|) (|l#Multiset_151483| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_151483| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_151483|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_360449 0)) ((($Mutation_360449 (|l#$Mutation_360449| T@$Location) (|p#$Mutation_360449| T@Vec_30625) (|v#$Mutation_360449| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_360404 0)) ((($Mutation_360404 (|l#$Mutation_360404| T@$Location) (|p#$Mutation_360404| T@Vec_30625) (|v#$Mutation_360404| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_248057 0)) ((($Mutation_248057 (|l#$Mutation_248057| T@$Location) (|p#$Mutation_248057| T@Vec_30625) (|v#$Mutation_248057| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_248014 0)) ((($Mutation_248014 (|l#$Mutation_248014| T@$Location) (|p#$Mutation_248014| T@Vec_30625) (|v#$Mutation_248014| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_237578 0)) ((($Mutation_237578 (|l#$Mutation_237578| T@$Location) (|p#$Mutation_237578| T@Vec_30625) (|v#$Mutation_237578| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_46432 0)) ((($Mutation_46432 (|l#$Mutation_46432| T@$Location) (|p#$Mutation_46432| T@Vec_30625) (|v#$Mutation_46432| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_230109 0)) ((($Mutation_230109 (|l#$Mutation_230109| T@$Location) (|p#$Mutation_230109| T@Vec_30625) (|v#$Mutation_230109| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_216080 0)) ((($Mutation_216080 (|l#$Mutation_216080| T@$Location) (|p#$Mutation_216080| T@Vec_30625) (|v#$Mutation_216080| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_197786 0)) ((($Mutation_197786 (|l#$Mutation_197786| T@$Location) (|p#$Mutation_197786| T@Vec_30625) (|v#$Mutation_197786| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_190559 0)) ((($Mutation_190559 (|l#$Mutation_190559| T@$Location) (|p#$Mutation_190559| T@Vec_30625) (|v#$Mutation_190559| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_30625) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_184816 0)) ((($Mutation_184816 (|l#$Mutation_184816| T@$Location) (|p#$Mutation_184816| T@Vec_30625) (|v#$Mutation_184816| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$Mutation_183728 0)) ((($Mutation_183728 (|l#$Mutation_183728| T@$Location) (|p#$Mutation_183728| T@Vec_30625) (|v#$Mutation_183728| T@Vec_151838) ) ) ))
(declare-datatypes ((T@$Mutation_182019 0)) ((($Mutation_182019 (|l#$Mutation_182019| T@$Location) (|p#$Mutation_182019| T@Vec_30625) (|v#$Mutation_182019| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_181032 0)) ((($Mutation_181032 (|l#$Mutation_181032| T@$Location) (|p#$Mutation_181032| T@Vec_30625) (|v#$Mutation_181032| T@Vec_180389) ) ) ))
(declare-datatypes ((T@$Mutation_179339 0)) ((($Mutation_179339 (|l#$Mutation_179339| T@$Location) (|p#$Mutation_179339| T@Vec_30625) (|v#$Mutation_179339| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_178352 0)) ((($Mutation_178352 (|l#$Mutation_178352| T@$Location) (|p#$Mutation_178352| T@Vec_30625) (|v#$Mutation_178352| T@Vec_177709) ) ) ))
(declare-datatypes ((T@$Mutation_176659 0)) ((($Mutation_176659 (|l#$Mutation_176659| T@$Location) (|p#$Mutation_176659| T@Vec_30625) (|v#$Mutation_176659| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_175672 0)) ((($Mutation_175672 (|l#$Mutation_175672| T@$Location) (|p#$Mutation_175672| T@Vec_30625) (|v#$Mutation_175672| T@Vec_151569) ) ) ))
(declare-datatypes ((T@$Mutation_174017 0)) ((($Mutation_174017 (|l#$Mutation_174017| T@$Location) (|p#$Mutation_174017| T@Vec_30625) (|v#$Mutation_174017| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_173030 0)) ((($Mutation_173030 (|l#$Mutation_173030| T@$Location) (|p#$Mutation_173030| T@Vec_30625) (|v#$Mutation_173030| T@Vec_152265) ) ) ))
(declare-datatypes ((T@$Mutation_171352 0)) ((($Mutation_171352 (|l#$Mutation_171352| T@$Location) (|p#$Mutation_171352| T@Vec_30625) (|v#$Mutation_171352| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_170365 0)) ((($Mutation_170365 (|l#$Mutation_170365| T@$Location) (|p#$Mutation_170365| T@Vec_30625) (|v#$Mutation_170365| T@Vec_152045) ) ) ))
(declare-datatypes ((T@$Mutation_168656 0)) ((($Mutation_168656 (|l#$Mutation_168656| T@$Location) (|p#$Mutation_168656| T@Vec_30625) (|v#$Mutation_168656| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_167669 0)) ((($Mutation_167669 (|l#$Mutation_167669| T@$Location) (|p#$Mutation_167669| T@Vec_30625) (|v#$Mutation_167669| T@Vec_152084) ) ) ))
(declare-datatypes ((T@$Mutation_165960 0)) ((($Mutation_165960 (|l#$Mutation_165960| T@$Location) (|p#$Mutation_165960| T@Vec_30625) (|v#$Mutation_165960| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_164973 0)) ((($Mutation_164973 (|l#$Mutation_164973| T@$Location) (|p#$Mutation_164973| T@Vec_30625) (|v#$Mutation_164973| T@Vec_152123) ) ) ))
(declare-datatypes ((T@$Mutation_163264 0)) ((($Mutation_163264 (|l#$Mutation_163264| T@$Location) (|p#$Mutation_163264| T@Vec_30625) (|v#$Mutation_163264| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_162277 0)) ((($Mutation_162277 (|l#$Mutation_162277| T@$Location) (|p#$Mutation_162277| T@Vec_30625) (|v#$Mutation_162277| T@Vec_151781) ) ) ))
(declare-datatypes ((T@$Mutation_160477 0)) ((($Mutation_160477 (|l#$Mutation_160477| T@$Location) (|p#$Mutation_160477| T@Vec_30625) (|v#$Mutation_160477| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_159490 0)) ((($Mutation_159490 (|l#$Mutation_159490| T@$Location) (|p#$Mutation_159490| T@Vec_30625) (|v#$Mutation_159490| T@Vec_151647) ) ) ))
(declare-datatypes ((T@$Mutation_157825 0)) ((($Mutation_157825 (|l#$Mutation_157825| T@$Location) (|p#$Mutation_157825| T@Vec_30625) (|v#$Mutation_157825| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_156838 0)) ((($Mutation_156838 (|l#$Mutation_156838| T@$Location) (|p#$Mutation_156838| T@Vec_30625) (|v#$Mutation_156838| T@Vec_151608) ) ) ))
(declare-datatypes ((T@$Mutation_155125 0)) ((($Mutation_155125 (|l#$Mutation_155125| T@$Location) (|p#$Mutation_155125| T@Vec_30625) (|v#$Mutation_155125| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_154138 0)) ((($Mutation_154138 (|l#$Mutation_154138| T@$Location) (|p#$Mutation_154138| T@Vec_30625) (|v#$Mutation_154138| T@Vec_153493) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_153493 T@Vec_153493) Bool)
(declare-fun InRangeVec_136114 (T@Vec_153493 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_153493) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_153493 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_151608 T@Vec_151608) Bool)
(declare-fun InRangeVec_136315 (T@Vec_151608 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_151608) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_151608 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_151647 T@Vec_151647) Bool)
(declare-fun InRangeVec_136516 (T@Vec_151647 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_151647) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_151647 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_151781 T@Vec_151781) Bool)
(declare-fun InRangeVec_136717 (T@Vec_151781 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_30625 T@Vec_30625) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_151781) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_151781 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_152123 T@Vec_152123) Bool)
(declare-fun InRangeVec_136918 (T@Vec_152123 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_152123) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_152123 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_152084 T@Vec_152084) Bool)
(declare-fun InRangeVec_137119 (T@Vec_152084 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_152084) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_152084 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_152045 T@Vec_152045) Bool)
(declare-fun InRangeVec_137320 (T@Vec_152045 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_152045) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_152045 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_152265 T@Vec_152265) Bool)
(declare-fun InRangeVec_137521 (T@Vec_152265 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_152265) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_152265 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_151569 T@Vec_151569) Bool)
(declare-fun InRangeVec_137722 (T@Vec_151569 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_151569) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_151569 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_177709 T@Vec_177709) Bool)
(declare-fun InRangeVec_137923 (T@Vec_177709 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_177709) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_177709 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_180389 T@Vec_180389) Bool)
(declare-fun InRangeVec_138124 (T@Vec_180389 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_180389) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_180389 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_151838 T@Vec_151838) Bool)
(declare-fun InRangeVec_183151 (T@Vec_151838 Int) Bool)
(declare-fun |Select__T@[Int]Vec_30625_| (|T@[Int]Vec_30625| Int) T@Vec_30625)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_151838) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_30625) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_151838 T@Vec_30625) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_30625 T@Vec_30625) Bool)
(declare-fun InRangeVec_16728 (T@Vec_30625 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_30625) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_30625 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_30625 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_30625) T@Vec_30625)
(declare-fun $1_Hash_sha3 (T@Vec_30625) T@Vec_30625)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_30625) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_30625 T@Vec_30625 T@Vec_30625) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_151483_| (|T@[$1_Event_EventHandle]Multiset_151483| T@$1_Event_EventHandle) T@Multiset_151483)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_Balance'#0''| (|T@$1_DiemAccount_Balance'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_30625 (T@Vec_30625 Int) Int)
(declare-fun IndexOfVec_151569 (T@Vec_151569 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_151608 (T@Vec_151608 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_151647 (T@Vec_151647 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_151781 (T@Vec_151781 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_151838 (T@Vec_151838 T@Vec_30625) Int)
(declare-fun IndexOfVec_152045 (T@Vec_152045 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_152084 (T@Vec_152084 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_152123 (T@Vec_152123 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_152265 (T@Vec_152265 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_153493 (T@Vec_153493 |T@#0|) Int)
(declare-fun IndexOfVec_177709 (T@Vec_177709 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_180389 (T@Vec_180389 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_151483| |T@[$1_Event_EventHandle]Multiset_151483|) |T@[$1_Event_EventHandle]Multiset_151483|)
(declare-fun |lambda#42| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#28| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#30| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#31| (Int Int |T@[Int]$1_XDX_XDX| Int Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#34| (Int Int |T@[Int]$1_XUS_XUS| Int Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_30625| |T@[Int]Vec_30625| Int T@Vec_30625) |T@[Int]Vec_30625|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_30625| Int Int T@Vec_30625) |T@[Int]Vec_30625|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_30625| |T@[Int]Vec_30625| Int T@Vec_30625) |T@[Int]Vec_30625|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountFreezingbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountFreezingbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountFreezingbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountFreezingbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountFreezingbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountFreezingbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_153493) (v2 T@Vec_153493) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_153493| v1) (|l#Vec_153493| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_136114 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_153493| v2) i@@0)))
 :qid |AccountFreezingbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountFreezingbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_153493) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_153493| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_136114 v@@4 i@@1) true)
 :qid |AccountFreezingbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountFreezingbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_153493) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_136114 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@5) i@@3) e))
 :qid |AccountFreezingbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_136114 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@5) j) e)))
 :qid |AccountFreezingbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountFreezingbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_151608) (v2@@0 T@Vec_151608) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_151608| v1@@0) (|l#Vec_151608| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_136315 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v2@@0) i@@4)))
 :qid |AccountFreezingbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountFreezingbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_151608) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_151608| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_136315 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@6) i@@5)))
 :qid |AccountFreezingbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountFreezingbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_151608) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_136315 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@7) i@@7) e@@0))
 :qid |AccountFreezingbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_136315 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@7) j@@0) e@@0)))
 :qid |AccountFreezingbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountFreezingbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_151647) (v2@@1 T@Vec_151647) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_151647| v1@@1) (|l#Vec_151647| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_136516 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v2@@1) i@@8)))
 :qid |AccountFreezingbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountFreezingbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_151647) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_151647| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_136516 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@8) i@@9)))
 :qid |AccountFreezingbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountFreezingbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_151647) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_136516 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@9) i@@11) e@@1))
 :qid |AccountFreezingbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_136516 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@9) j@@1) e@@1)))
 :qid |AccountFreezingbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountFreezingbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_151781) (v2@@2 T@Vec_151781) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_151781| v1@@2) (|l#Vec_151781| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_136717 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))))
 :qid |AccountFreezingbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountFreezingbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_151781) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_151781| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_136717 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@10) i@@13)))
 :qid |AccountFreezingbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountFreezingbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_151781) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_136717 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |AccountFreezingbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_136717 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |AccountFreezingbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountFreezingbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_152123) (v2@@3 T@Vec_152123) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_152123| v1@@3) (|l#Vec_152123| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_136918 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v2@@3) i@@16)))))
 :qid |AccountFreezingbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountFreezingbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_152123) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_152123| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_136918 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@12) i@@17)))
 :qid |AccountFreezingbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountFreezingbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_152123) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_136918 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |AccountFreezingbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_136918 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |AccountFreezingbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountFreezingbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_152084) (v2@@4 T@Vec_152084) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_152084| v1@@4) (|l#Vec_152084| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_137119 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v2@@4) i@@20)))))
 :qid |AccountFreezingbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountFreezingbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_152084) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_152084| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_137119 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@14) i@@21)))
 :qid |AccountFreezingbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountFreezingbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_152084) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_137119 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |AccountFreezingbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_137119 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |AccountFreezingbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountFreezingbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_152045) (v2@@5 T@Vec_152045) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_152045| v1@@5) (|l#Vec_152045| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_137320 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v2@@5) i@@24)))))
 :qid |AccountFreezingbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountFreezingbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_152045) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_152045| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_137320 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@16) i@@25)))
 :qid |AccountFreezingbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountFreezingbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_152045) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_137320 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |AccountFreezingbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_137320 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |AccountFreezingbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountFreezingbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_152265) (v2@@6 T@Vec_152265) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_152265| v1@@6) (|l#Vec_152265| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_137521 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v2@@6) i@@28))))
 :qid |AccountFreezingbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountFreezingbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_152265) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_152265| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_137521 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@18) i@@29)))
 :qid |AccountFreezingbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountFreezingbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_152265) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_137521 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |AccountFreezingbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_137521 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |AccountFreezingbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountFreezingbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_151569) (v2@@7 T@Vec_151569) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_151569| v1@@7) (|l#Vec_151569| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_137722 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v2@@7) i@@32)))))
 :qid |AccountFreezingbpl.2063:13|
 :skolemid |73|
))))
 :qid |AccountFreezingbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_151569) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_151569| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_137722 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@20) i@@33)))
 :qid |AccountFreezingbpl.2069:13|
 :skolemid |75|
))))
 :qid |AccountFreezingbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_151569) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_137722 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |AccountFreezingbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_137722 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |AccountFreezingbpl.2082:17|
 :skolemid |78|
)))))
 :qid |AccountFreezingbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_177709) (v2@@8 T@Vec_177709) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_177709| v1@@8) (|l#Vec_177709| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_137923 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v2@@8) i@@36)))
 :qid |AccountFreezingbpl.2244:13|
 :skolemid |80|
))))
 :qid |AccountFreezingbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_177709) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_177709| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_137923 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@22) i@@37)))
 :qid |AccountFreezingbpl.2250:13|
 :skolemid |82|
))))
 :qid |AccountFreezingbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_177709) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_137923 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@23) i@@39) e@@8))
 :qid |AccountFreezingbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_137923 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@23) j@@8) e@@8)))
 :qid |AccountFreezingbpl.2263:17|
 :skolemid |85|
)))))
 :qid |AccountFreezingbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_180389) (v2@@9 T@Vec_180389) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_180389| v1@@9) (|l#Vec_180389| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_138124 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v2@@9) i@@40)))
 :qid |AccountFreezingbpl.2425:13|
 :skolemid |87|
))))
 :qid |AccountFreezingbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_180389) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_180389| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_138124 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@24) i@@41)))
 :qid |AccountFreezingbpl.2431:13|
 :skolemid |89|
))))
 :qid |AccountFreezingbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_180389) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_138124 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@25) i@@43) e@@9))
 :qid |AccountFreezingbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_138124 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@25) j@@9) e@@9)))
 :qid |AccountFreezingbpl.2444:17|
 :skolemid |92|
)))))
 :qid |AccountFreezingbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_151838) (v2@@10 T@Vec_151838) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_151838| v1@@10) (|l#Vec_151838| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_183151 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v1@@10) i@@44) (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v2@@10) i@@44)))
 :qid |AccountFreezingbpl.2606:13|
 :skolemid |94|
))))
 :qid |AccountFreezingbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_151838) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_151838| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_183151 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@26) i@@45)))
 :qid |AccountFreezingbpl.2612:13|
 :skolemid |96|
))))
 :qid |AccountFreezingbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_151838) (e@@10 T@Vec_30625) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_183151 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@27) i@@47) e@@10))
 :qid |AccountFreezingbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_183151 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@27) j@@10) e@@10)))
 :qid |AccountFreezingbpl.2625:17|
 :skolemid |99|
)))))
 :qid |AccountFreezingbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_30625) (v2@@11 T@Vec_30625) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_30625| v1@@11) (|l#Vec_30625| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_30625| v2@@11) i@@48)))
 :qid |AccountFreezingbpl.2787:13|
 :skolemid |101|
))))
 :qid |AccountFreezingbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_30625) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_30625| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_30625| v@@28) i@@49)))
 :qid |AccountFreezingbpl.2793:13|
 :skolemid |103|
))))
 :qid |AccountFreezingbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_30625) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@29) i@@51) e@@11))
 :qid |AccountFreezingbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@29) j@@11) e@@11)))
 :qid |AccountFreezingbpl.2806:17|
 :skolemid |106|
)))))
 :qid |AccountFreezingbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_30625) (v2@@12 T@Vec_30625) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_30625| v1@@12) (|l#Vec_30625| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_30625| v2@@12) i@@52)))
 :qid |AccountFreezingbpl.2968:13|
 :skolemid |108|
))))
 :qid |AccountFreezingbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_30625) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_30625| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_30625| v@@30) i@@53)))
 :qid |AccountFreezingbpl.2974:13|
 :skolemid |110|
))))
 :qid |AccountFreezingbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_30625) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@31) i@@55) e@@12))
 :qid |AccountFreezingbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@31) j@@12) e@@12)))
 :qid |AccountFreezingbpl.2987:17|
 :skolemid |113|
)))))
 :qid |AccountFreezingbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_30625) (v2@@13 T@Vec_30625) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |AccountFreezingbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_30625) (v2@@14 T@Vec_30625) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |AccountFreezingbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_30625) (k2 T@Vec_30625) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountFreezingbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_30625) (s2 T@Vec_30625) (k1@@0 T@Vec_30625) (k2@@0 T@Vec_30625) (m1 T@Vec_30625) (m2 T@Vec_30625) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountFreezingbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_151483| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| stream) v@@32) 0)
 :qid |AccountFreezingbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountFreezingbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountFreezingbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |AccountFreezingbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountFreezingbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |AccountFreezingbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountFreezingbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |AccountFreezingbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountFreezingbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |AccountFreezingbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountFreezingbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |AccountFreezingbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountFreezingbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |AccountFreezingbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountFreezingbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |AccountFreezingbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountFreezingbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |AccountFreezingbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountFreezingbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |AccountFreezingbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountFreezingbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |AccountFreezingbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountFreezingbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |AccountFreezingbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountFreezingbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |AccountFreezingbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountFreezingbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |AccountFreezingbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountFreezingbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |AccountFreezingbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountFreezingbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |AccountFreezingbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountFreezingbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |AccountFreezingbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountFreezingbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |AccountFreezingbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountFreezingbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountFreezingbpl.5153:36|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountFreezingbpl.7033:71|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountFreezingbpl.7402:46|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountFreezingbpl.7414:64|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountFreezingbpl.7426:75|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountFreezingbpl.7438:72|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountFreezingbpl.7471:55|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountFreezingbpl.7494:46|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountFreezingbpl.7776:49|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountFreezingbpl.7861:71|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountFreezingbpl.7874:91|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountFreezingbpl.7887:113|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |AccountFreezingbpl.7900:89|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |AccountFreezingbpl.7913:75|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |AccountFreezingbpl.7926:73|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |AccountFreezingbpl.7946:48|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |AccountFreezingbpl.7963:57|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |AccountFreezingbpl.7977:83|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |AccountFreezingbpl.7991:103|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |AccountFreezingbpl.8005:125|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |AccountFreezingbpl.8019:101|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |AccountFreezingbpl.8033:87|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |AccountFreezingbpl.8047:85|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |AccountFreezingbpl.8061:48|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |AccountFreezingbpl.8082:45|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |AccountFreezingbpl.8096:51|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |AccountFreezingbpl.8119:48|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |AccountFreezingbpl.8413:49|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |AccountFreezingbpl.8426:65|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |AccountFreezingbpl.8967:45|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |AccountFreezingbpl.8980:45|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |AccountFreezingbpl.8993:37|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |AccountFreezingbpl.9006:55|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |AccountFreezingbpl.9020:55|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |AccountFreezingbpl.9040:38|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |AccountFreezingbpl.9062:44|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |AccountFreezingbpl.9114:53|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |AccountFreezingbpl.9187:53|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |AccountFreezingbpl.9260:45|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |AccountFreezingbpl.9297:55|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |AccountFreezingbpl.9311:55|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |AccountFreezingbpl.9325:47|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |AccountFreezingbpl.9342:38|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |AccountFreezingbpl.9356:48|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |AccountFreezingbpl.9370:48|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |AccountFreezingbpl.9384:40|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |AccountFreezingbpl.9404:41|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |AccountFreezingbpl.9420:53|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |AccountFreezingbpl.9433:53|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |AccountFreezingbpl.9446:45|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |AccountFreezingbpl.9462:60|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |AccountFreezingbpl.9479:60|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |AccountFreezingbpl.9496:52|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |AccountFreezingbpl.9513:57|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |AccountFreezingbpl.11686:68|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |AccountFreezingbpl.11708:66|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |AccountFreezingbpl.11734:66|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))))
 :qid |AccountFreezingbpl.11763:56|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))))
 :qid |AccountFreezingbpl.11793:56|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@59) true)
 :qid |AccountFreezingbpl.12227:31|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@60) true)
 :qid |AccountFreezingbpl.12557:31|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@60))
)))
(assert (forall ((s@@61 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@61)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@61)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@61))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@61))))
 :qid |AccountFreezingbpl.12576:35|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@62)))
 :qid |AccountFreezingbpl.12990:45|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@63))))
 :qid |AccountFreezingbpl.13008:50|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@64)))
 :qid |AccountFreezingbpl.13024:52|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@65)))
 :qid |AccountFreezingbpl.13037:46|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@66) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@66)))
 :qid |AccountFreezingbpl.13418:38|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@67) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@67)))
 :qid |AccountFreezingbpl.13432:39|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@67))
)))
(assert (forall ((s@@68 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68))))
 :qid |AccountFreezingbpl.14119:65|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@69))))
 :qid |AccountFreezingbpl.14492:60|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70))))
 :qid |AccountFreezingbpl.14509:66|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@71)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@71))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@71))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@71))))
 :qid |AccountFreezingbpl.14538:50|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@72) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@72)))
 :qid |AccountFreezingbpl.14561:45|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@73)) true))
 :qid |AccountFreezingbpl.15134:87|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@74)))
 :qid |AccountFreezingbpl.15335:47|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@75)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@75))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@75))))
 :qid |AccountFreezingbpl.15354:58|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@76) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@76)))
 :qid |AccountFreezingbpl.15370:39|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@77))))
 :qid |AccountFreezingbpl.15397:58|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78))))
 :qid |AccountFreezingbpl.15414:58|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79) true)
 :qid |AccountFreezingbpl.15429:51|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80))))
 :qid |AccountFreezingbpl.15446:60|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@81)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@81))))
 :qid |AccountFreezingbpl.17905:47|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@82))))
 :qid |AccountFreezingbpl.17931:63|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@83)))
 :qid |AccountFreezingbpl.17946:57|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@84)))
 :qid |AccountFreezingbpl.17959:55|
 :skolemid |361|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@85)))
 :qid |AccountFreezingbpl.17973:55|
 :skolemid |362|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@86)))
 :qid |AccountFreezingbpl.17987:47|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@87)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@87))))
 :qid |AccountFreezingbpl.18004:54|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@88)))
 :qid |AccountFreezingbpl.18018:55|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@89)))
 :qid |AccountFreezingbpl.18031:57|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@90))))
 :qid |AccountFreezingbpl.18053:56|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@91))))
 :qid |AccountFreezingbpl.18080:52|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@92)))
 :qid |AccountFreezingbpl.18098:54|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@93)))
 :qid |AccountFreezingbpl.35122:55|
 :skolemid |1317|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@94)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@94))))
 :qid |AccountFreezingbpl.35143:47|
 :skolemid |1318|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@95)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@95))))
 :qid |AccountFreezingbpl.35167:47|
 :skolemid |1319|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@96)))
 :qid |AccountFreezingbpl.35401:63|
 :skolemid |1320|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |AccountFreezingbpl.35736:49|
 :skolemid |1321|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |AccountFreezingbpl.35778:49|
 :skolemid |1322|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |AccountFreezingbpl.35807:48|
 :skolemid |1323|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |AccountFreezingbpl.36092:47|
 :skolemid |1324|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@33 T@Vec_153493) (i@@56 Int) ) (! (= (InRangeVec_136114 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_153493| v@@33))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136114 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_151608) (i@@57 Int) ) (! (= (InRangeVec_136315 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_151608| v@@34))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136315 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_151647) (i@@58 Int) ) (! (= (InRangeVec_136516 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_151647| v@@35))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136516 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_151781) (i@@59 Int) ) (! (= (InRangeVec_136717 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_151781| v@@36))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136717 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_152123) (i@@60 Int) ) (! (= (InRangeVec_136918 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_152123| v@@37))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136918 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_152084) (i@@61 Int) ) (! (= (InRangeVec_137119 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_152084| v@@38))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137119 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_152045) (i@@62 Int) ) (! (= (InRangeVec_137320 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_152045| v@@39))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137320 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_152265) (i@@63 Int) ) (! (= (InRangeVec_137521 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_152265| v@@40))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137521 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_151569) (i@@64 Int) ) (! (= (InRangeVec_137722 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_151569| v@@41))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137722 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_177709) (i@@65 Int) ) (! (= (InRangeVec_137923 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_177709| v@@42))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137923 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_180389) (i@@66 Int) ) (! (= (InRangeVec_138124 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_180389| v@@43))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_138124 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_151838) (i@@67 Int) ) (! (= (InRangeVec_183151 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_151838| v@@44))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183151 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_30625) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_30625| v@@45))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_30625) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_30625 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@46) i@@70) e@@13))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@46) j@@13) e@@13)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_30625 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_151569) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_151569 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_137722 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@47) i@@72) e@@14))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_137722 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@47) j@@14) e@@14)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151569 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_151608) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_151608 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_136315 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@48) i@@74) e@@15))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_136315 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@48) j@@15) e@@15)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151608 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_151647) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_151647 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_136516 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@49) i@@76) e@@16))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_136516 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@49) j@@16) e@@16)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151647 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_151781) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_151781 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_136717 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@50) i@@78) e@@17))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_136717 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@50) j@@17) e@@17)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151781 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_151838) (e@@18 T@Vec_30625) ) (! (let ((i@@79 (IndexOfVec_151838 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_183151 v@@51 i@@80) (= (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@51) i@@80) e@@18))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_183151 v@@51 i@@79) (= (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@51) j@@18) e@@18)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151838 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_152045) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_152045 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_137320 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@52) i@@82) e@@19))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_137320 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@52) j@@19) e@@19)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152045 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_152084) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_152084 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_137119 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@53) i@@84) e@@20))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_137119 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@53) j@@20) e@@20)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152084 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_152123) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_152123 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_136918 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@54) i@@86) e@@21))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_136918 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@54) j@@21) e@@21)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152123 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_152265) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_152265 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_137521 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@55) i@@88) e@@22))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_137521 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@55) j@@22) e@@22)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152265 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_153493) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_153493 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_136114 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@56) i@@90) e@@23))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_136114 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@56) j@@23) e@@23)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_153493 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_177709) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_177709 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_137923 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@57) i@@92) e@@24))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_137923 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@57) j@@24) e@@24)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177709 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_180389) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_180389 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_138124 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@58) i@@94) e@@25))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_138124 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@58) j@@25) e@@25)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_180389 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |AccountFreezingbpl.275:54|
 :skolemid |1415|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_151483|) (|l#1| |T@[$1_Event_EventHandle]Multiset_151483|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#1| handle@@0))))
(Multiset_151483 (|lambda#42| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#0@@0| handle@@0)) (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountFreezingbpl.3321:13|
 :skolemid |1416|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1417|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1418|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1419|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1420|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1421|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1422|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1423|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1424|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1425|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1426|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1427|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1428|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1429|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1430|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1431|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1432|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1433|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1434|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1435|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1436|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1437|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1438|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1439|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1440|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1441|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1442|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1443|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1444|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1445|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1446|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1447|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1448|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1449|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_30625|) (|l#4@@32| |T@[Int]Vec_30625|) (|l#5@@32| Int) (|l#6@@21| T@Vec_30625) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_30625_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_30625_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_30625_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1450|
 :pattern ( (|Select__T@[Int]Vec_30625_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_30625|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_30625) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_30625_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_30625_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1451|
 :pattern ( (|Select__T@[Int]Vec_30625_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_30625|) (|l#4@@34| |T@[Int]Vec_30625|) (|l#5@@34| Int) (|l#6@@22| T@Vec_30625) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_30625_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_30625_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_30625_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1452|
 :pattern ( (|Select__T@[Int]Vec_30625_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1453|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1454|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1455|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |AccountFreezingbpl.154:29|
 :skolemid |1456|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_197973)
(declare-fun _$t1 () Int)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_237259)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_237195)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_197291)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_235739)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_198806)
(declare-fun _$t4 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_203603)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_198567)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_203663)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_199368)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_199540)
(declare-fun _$t2 () T@Vec_30625)
(declare-fun $t9@0 () Int)
(declare-fun $abort_flag@64 () Bool)
(declare-fun $abort_code@56 () Int)
(declare-fun $t25 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t9 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t8 () Bool)
(declare-fun $t7 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@3 () T@$Memory_235739)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_197973)
(declare-fun $t32 () T@$1_Event_EventHandle)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_199540)
(declare-fun $t33 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_246687)
(declare-fun $1_VASP_ParentVASP_$memory@3 () T@$Memory_237259)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11| () T@$Memory_203663)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| () T@$Memory_203603)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_246687)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_151483_| (|T@[$1_Event_EventHandle]Multiset_151483| T@$1_Event_EventHandle T@Multiset_151483) |T@[$1_Event_EventHandle]Multiset_151483|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_151483|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_151483)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|Store__T@[$1_Event_EventHandle]Multiset_151483_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_151483|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_151483)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|Store__T@[$1_Event_EventHandle]Multiset_151483_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_151483_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| () T@$Memory_203663)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| () T@$Memory_203603)
(declare-fun $abort_flag@42 () Bool)
(declare-fun $abort_code@37 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_203663)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_203603)
(declare-fun $abort_flag@61 () Bool)
(declare-fun $abort_code@53 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| () T@$Memory_203663)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| () T@$Memory_203603)
(declare-fun $abort_flag@24 () Bool)
(declare-fun $abort_code@22 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| () T@$Memory_203663)
(declare-fun $abort_code@55 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| () T@$Memory_203603)
(declare-fun $abort_flag@63 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| () T@$Memory_203663)
(declare-fun $abort_code@54 () Int)
(declare-fun $abort_flag@62 () Bool)
(declare-fun $abort_flag@60 () Bool)
(declare-fun $abort_code@52 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| () T@$Memory_203663)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| () T@$Memory_203663)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| () T@$Memory_203663)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t23@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@51 () Int)
(declare-fun $abort_flag@59 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$6$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t4@1 () Int)
(declare-fun $abort_flag@56 () Bool)
(declare-fun $abort_code@48 () Int)
(declare-fun $abort_flag@51 () Bool)
(declare-fun $abort_code@44 () Int)
(declare-fun $abort_flag@47 () Bool)
(declare-fun $abort_code@41 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t2@1 () Bool)
(declare-fun $abort_flag@57 () Bool)
(declare-fun $abort_code@49 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@55 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@53 () Bool)
(declare-fun $abort_code@46 () Int)
(declare-fun inline$$1_Roles_has_role$5$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t2@1 () Bool)
(declare-fun $abort_flag@54 () Bool)
(declare-fun $abort_code@47 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@45 () Int)
(declare-fun $abort_flag@52 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@50 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@48 () Bool)
(declare-fun $abort_code@42 () Int)
(declare-fun inline$$1_Roles_has_role$4$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t2@1 () Bool)
(declare-fun $abort_code@43 () Int)
(declare-fun $abort_flag@49 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@46 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@44 () Bool)
(declare-fun $abort_code@39 () Int)
(declare-fun inline$$1_Roles_has_role$3$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t2@1 () Bool)
(declare-fun $abort_code@40 () Int)
(declare-fun $abort_flag@45 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_flag@43 () Bool)
(declare-fun $abort_code@38 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t8@0| () Int)
(declare-fun inline$$Not$5$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t12@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t10@1| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun $abort_flag@41 () Bool)
(declare-fun $abort_code@36 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_203603)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_203603)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_203603)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@35 () Int)
(declare-fun $abort_flag@40 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$7$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t4@1 () Int)
(declare-fun $abort_flag@37 () Bool)
(declare-fun $abort_code@32 () Int)
(declare-fun $abort_flag@32 () Bool)
(declare-fun $abort_code@28 () Int)
(declare-fun $abort_flag@28 () Bool)
(declare-fun $abort_code@25 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t2@1 () Bool)
(declare-fun $abort_flag@38 () Bool)
(declare-fun $abort_code@33 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@36 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@34 () Bool)
(declare-fun $abort_code@30 () Int)
(declare-fun inline$$1_Roles_has_role$8$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t2@1 () Bool)
(declare-fun $abort_flag@35 () Bool)
(declare-fun $abort_code@31 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@29 () Int)
(declare-fun $abort_flag@33 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@31 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@29 () Bool)
(declare-fun $abort_code@26 () Int)
(declare-fun inline$$1_Roles_has_role$7$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t2@1 () Bool)
(declare-fun $abort_code@27 () Int)
(declare-fun $abort_flag@30 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@27 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@25 () Bool)
(declare-fun $abort_code@23 () Int)
(declare-fun inline$$1_Roles_has_role$6$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t2@1 () Bool)
(declare-fun $abort_flag@26 () Bool)
(declare-fun $abort_code@24 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun inline$$Not$4$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t7@1| () Bool)
(declare-fun $abort_flag@23 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_203663)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_203663)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_203663)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@20 () Int)
(declare-fun $abort_flag@22 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@19 () Bool)
(declare-fun $abort_code@17 () Int)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@13 () Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@20 () Bool)
(declare-fun $abort_code@18 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@18 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1 () Bool)
(declare-fun $abort_flag@17 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@14 () Int)
(declare-fun $abort_flag@15 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@13 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun $abort_code@11 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t3@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t5@0| () Int)
(declare-fun $t26 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t27 () T@$1_Event_EventHandle)
(declare-fun $t28 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_199368)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t22 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t29 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t30 () T@$1_Event_EventHandle)
(declare-fun $t31 () Int)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_199540)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_199540)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_199368)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_199368)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_189928)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_189928)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_189928)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_246687)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_246687)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t23 () Int)
(declare-fun $t24 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $1_VASPDomain_VASPDomains_$memory@1 () T@$Memory_235739)
(declare-fun $abort_code@6 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@2 () T@$Memory_235739)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_235739)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 () T@$1_VASPDomain_VASPDomains)
(declare-fun |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| () T@Vec_152265)
(declare-fun MapConstVec_137541 (T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun DefaultVecElem_137541 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 () Int)
(declare-fun $t19 () Int)
(declare-fun $t20 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t11@1 () Int)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_203488)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_203488)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t24@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t3 () T@Vec_30625)
(declare-fun |inline$$1_Vector_empty'u8'$0$v@1| () T@Vec_30625)
(declare-fun |inline$$1_Vector_empty'u8'$1$v@1| () T@Vec_30625)
(declare-fun |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun MapConstVec_16957 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_16957 () Int)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t18@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t15@1 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t13@0 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t14@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t12@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t11@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t10@0 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t8@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t9@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t5@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t6@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t7@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t17 () Int)
(declare-fun $t18 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_237259)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 () Int)
(declare-fun $1_VASP_ParentVASP_$memory@2 () T@$Memory_237259)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_237259)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t20@1 () T@$1_VASP_ParentVASP)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0 () Int)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t15@0 () Bool)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t13@0 () Bool)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0 () Int)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0 () Int)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0 () Int)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t11@0 () Bool)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0 () Int)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t8@0 () Bool)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t5@0 () Int)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t6@0 () Int)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t7@0 () Int)
(declare-fun $t13 () Int)
(declare-fun $t14 () Int)
(declare-fun $t15 () Int)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t6@0 () Int)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t9@0 () Bool)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t5@0 () Bool)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t4@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_197973)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_197973)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_197973)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t8@0 () Int)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t3@0 () Int)
(declare-fun $t11 () Int)
(declare-fun $t12 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_203150)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_202755)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_198160)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_198253)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_198339)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_198412)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_198483)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_217809)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_217873)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_223969)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_224050)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_198651)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_198722)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_198890)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_198961)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_199058)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_199142)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_199226)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_199297)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_199611)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_235803)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_244160)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_262630)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_199682)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_199766)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_197844)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_parent_vasp_account$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 786723) (let ((L2_correct  (and (=> (= (ControlFlow 0 587433) (- 0 800230)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) _$t1) (or (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1 0)) (= _$t1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_30625| _$t2)) 32)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) _$t1) (or (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1 0)) (= _$t1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_30625| _$t2)) 32))) (=> (= (ControlFlow 0 587433) (- 0 800381)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) _$t1) (= 6 $t9@0)) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) _$t1)) (= 6 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) $t6)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t9@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) _$t1) (= 6 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t9@0))) (and (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t9@0))) (and (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t9@0))) (and (= _$t1 0) (= 7 $t9@0))) (and (= _$t1 1) (= 7 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) _$t1) (= 6 $t9@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9@0))) (and (not (= (+ 16 (|l#Vec_30625| _$t2)) 32)) (= 7 $t9@0))))))))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@64 (= $abort_code@56 $abort_code@56)) (and (= $t9@0 $abort_code@56) (= (ControlFlow 0 586949) 587433))) L2_correct)))
(let ((anon39_Then_correct  (=> $t25 (=> (and (and (or (or (or (or (and (= $t21 0) (= 7 $t9)) (and (= $t21 1) (= 7 $t9))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) $t21) (= 6 $t9))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9))) (and (not (= (+ 16 (|l#Vec_30625| _$t2)) 32)) (= 7 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 587587) 587433))) L2_correct))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t9@0 $abort_code@7) (= (ControlFlow 0 587601) 587433))) L2_correct)))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t9@0 $abort_code@5) (= (ControlFlow 0 587615) 587433))) L2_correct)))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0 $abort_code@3) (= (ControlFlow 0 587629) 587433))) L2_correct)))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0 $abort_code@3) (= (ControlFlow 0 587643) 587433))) L2_correct)))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t9@0 $abort_code@1) (= (ControlFlow 0 587657) 587433))) L2_correct)))
(let ((anon32_Then_correct  (=> $t8 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) $t7)) (= 5 $t9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $t7)) 1)) (= 3 $t9))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 587743) 587433))) L2_correct))))
(let ((anon44_Else_correct  (=> (not $abort_flag@64) (and (=> (= (ControlFlow 0 586935) (- 0 799655)) (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 586935) (- 0 799664)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0))) 1))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0))) 1)) (=> (and (= $t32 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t33 ($1_DiemAccount_CreateAccountEvent _$t1 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) _$t1))))) (and (=> (= (ControlFlow 0 586935) (- 0 799704)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) _$t1)) (and (=> (= (ControlFlow 0 586935) (- 0 799713)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) _$t1)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) _$t1))) (and (=> (= (ControlFlow 0 586935) (- 0 799723)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 586935) (- 0 799733)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 586935) (- 0 799745)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 586935) (- 0 799763)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 586935) (- 0 799777)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) _$t1)) (and (=> (= (ControlFlow 0 586935) (- 0 799786)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 586935) (- 0 799793)) (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 586935) (- 0 799811)) (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 586935) (- 0 799832)) (not (= _$t1 0))) (=> (not (= _$t1 0)) (and (=> (= (ControlFlow 0 586935) (- 0 799842)) (not (= _$t1 1))) (=> (not (= _$t1 1)) (and (=> (= (ControlFlow 0 586935) (- 0 799852)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (=> (= (ControlFlow 0 586935) (- 0 799861)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 586935) (- 0 799878)) (not (not (= (+ 16 (|l#Vec_30625| _$t2)) 32)))) (=> (not (not (= (+ 16 (|l#Vec_30625| _$t2)) 32))) (and (=> (= (ControlFlow 0 586935) (- 0 799896)) (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) _$t1) (and (=> (= (ControlFlow 0 586935) (- 0 799903)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) _$t1)) 5))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) _$t1)) 5)) (and (=> (= (ControlFlow 0 586935) (- 0 799910)) (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory@3) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory@3) _$t1) (and (=> (= (ControlFlow 0 586935) (- 0 799917)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_237259| $1_VASP_ParentVASP_$memory@3) _$t1)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_237259| $1_VASP_ParentVASP_$memory@3) _$t1)) 0) (and (=> (= (ControlFlow 0 586935) (- 0 799928)) (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (and (=> (= (ControlFlow 0 586935) (- 0 799935)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (=> (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (and (=> (= (ControlFlow 0 586935) (- 0 799950)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1)) (and (=> (= (ControlFlow 0 586935) (- 0 799968)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (and (=> (= (ControlFlow 0 586935) (- 0 799994)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1)) (and (=> (= (ControlFlow 0 586935) (- 0 800012)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (and (=> (= (ControlFlow 0 586935) (- 0 800038)) (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory@3) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory@3) _$t1) (and (=> (= (ControlFlow 0 586935) (- 0 800045)) (= (|l#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_235739| $1_VASPDomain_VASPDomains_$memory@3) _$t1))) 0)) (=> (= (|l#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_235739| $1_VASPDomain_VASPDomains_$memory@3) _$t1))) 0) (and (=> (= (ControlFlow 0 586935) (- 0 800056)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) addr)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr)))))
 :qid |AccountFreezingbpl.31229:15|
 :skolemid |1132|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@0) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) addr@@0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@0)))))
 :qid |AccountFreezingbpl.31229:15|
 :skolemid |1132|
)) (and (=> (= (ControlFlow 0 586935) (- 0 800091)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@1) (>= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) addr@@1))) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@1))))))
 :qid |AccountFreezingbpl.31234:15|
 :skolemid |1133|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@2) (>= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) addr@@2))) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@2))))))
 :qid |AccountFreezingbpl.31234:15|
 :skolemid |1133|
)) (and (=> (= (ControlFlow 0 586935) (- 0 800130)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) $t32)))
(let ((stream_new (let ((len (|l#Multiset_151483| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33))))
(Multiset_151483 (|Store__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) $t32 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| expected) handle@@1)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| actual) handle@@1)) v@@60))
 :qid |AccountFreezingbpl.164:13|
 :skolemid |5|
)))
 :qid |AccountFreezingbpl.3327:13|
 :skolemid |120|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) $t32)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_151483| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33))))
(Multiset_151483 (|Store__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) $t32 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| expected@@0) handle@@2)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| actual@@0) handle@@2)) v@@61))
 :qid |AccountFreezingbpl.164:13|
 :skolemid |5|
)))
 :qid |AccountFreezingbpl.3327:13|
 :skolemid |120|
))))) (=> (= (ControlFlow 0 586935) (- 0 800155)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) $t32)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_151483| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33))))
(Multiset_151483 (|Store__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) $t32 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@62 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| actual@@1) handle@@3)) v@@62) (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| expected@@1) handle@@3)) v@@62))
 :qid |AccountFreezingbpl.164:13|
 :skolemid |5|
)))
 :qid |AccountFreezingbpl.3327:13|
 :skolemid |120|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10|) (= $abort_code@56 |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6|) (= $abort_flag@64 true))) (and (=> (= (ControlFlow 0 582399) 586949) anon44_Then_correct) (=> (= (ControlFlow 0 582399) 586935) anon44_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Then_correct|  (=> (and $abort_flag@42 (= $abort_code@37 $abort_code@37)) (=> (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| $abort_code@37) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 586321) 582399))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Then_correct|  (=> (and $abort_flag@61 (= $abort_code@53 $abort_code@53)) (=> (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| $abort_code@53) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 582393) 582399))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Then_correct|  (=> (and $abort_flag@24 (= $abort_code@22 $abort_code@22)) (=> (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| $abort_code@22) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 586335) 582399))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L10_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) (= $abort_code@56 $abort_code@55)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|) (= $abort_flag@64 $abort_flag@63))) (and (=> (= (ControlFlow 0 578363) 586949) anon44_Then_correct) (=> (= (ControlFlow 0 578363) 586935) anon44_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L9_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8|) (=> (and (and (= $abort_code@55 $abort_code@54) (= $abort_flag@63 $abort_flag@62)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 578473) 578363))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (not $abort_flag@61) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) (= $abort_code@54 $abort_code@53)) (and (= $abort_flag@62 $abort_flag@61) (= (ControlFlow 0 582379) 578473))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Else_correct|  (=> (and (and (not $abort_flag@60) (= $abort_flag@61 $abort_flag@60)) (and (= $abort_code@53 $abort_code@52) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|))) (and (=> (= (ControlFlow 0 582233) 582393) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 582233) 582379) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|  (=> (= $abort_flag@61 true) (=> (and (= $abort_code@53 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1|) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6|)) (and (=> (= (ControlFlow 0 579314) 582393) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 579314) 582379) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Then_correct|  (=> $abort_flag@60 (=> (and (and (= $abort_code@52 $abort_code@52) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@52)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|) (= (ControlFlow 0 582247) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (=> (and (= $abort_code@52 $EXEC_FAILURE_CODE) (= $abort_flag@60 true)) (and (=> (= (ControlFlow 0 582299) 582247) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Then_correct|) (=> (= (ControlFlow 0 582299) 582233) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 582297) 582299)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| ($Memory_203663 (|Store__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4|)) (and (= $abort_code@52 $abort_code@51) (= $abort_flag@60 $abort_flag@59))) (and (=> (= (ControlFlow 0 582223) 582247) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Then_correct|) (=> (= (ControlFlow 0 582223) 582233) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Else_correct|  (=> (and (not $abort_flag@59) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t23@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1|))) (and (=> (= (ControlFlow 0 582201) 582297) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then_correct|) (=> (= (ControlFlow 0 582201) 582223) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Then_correct|  (=> $abort_flag@59 (=> (and (and (= $abort_code@51 $abort_code@51) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@51)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 582313) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1|) (= $abort_flag@59 $abort_flag@58)) (and (= $abort_code@51 $abort_code@50) (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1|))) (and (=> (= (ControlFlow 0 582153) 582313) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Then_correct|) (=> (= (ControlFlow 0 582153) 582201) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0|) (= $abort_flag@59 true)) (and (= $abort_code@51 |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@0|))) (and (=> (= (ControlFlow 0 582183) 582313) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Then_correct|) (=> (= (ControlFlow 0 582183) 582201) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$1$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 582125) 582183) |inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 582125) 582153) |inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Then_correct|  (=> (and inline$$Not$6$dst@1 (= (ControlFlow 0 582189) 582125)) |inline$$1_Diem_zero'$1_XDX_XDX'$1$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Else_correct|  (=> (not inline$$Not$6$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 581972) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|) (= inline$$Not$6$dst@1 inline$$Not$6$dst@1))) (and (=> (= (ControlFlow 0 581956) 582189) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Then_correct|) (=> (= (ControlFlow 0 581956) 581972) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Else_correct|))))))
(let ((inline$$Not$6$anon0_correct  (=> (and (= inline$$Not$6$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t18@1|)) (= (ControlFlow 0 581916) 581956)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$1$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|)) (= (ControlFlow 0 581922) 581916)) inline$$Not$6$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$1$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 581876) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Else_correct|  (=> (and (not $abort_flag@58) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|) (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@1))) (and (=> (= (ControlFlow 0 581860) 581922) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then_correct|) (=> (= (ControlFlow 0 581860) 581876) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Then_correct|  (=> $abort_flag@58 (=> (and (and (= $abort_code@50 $abort_code@50) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 582327) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$1$L9_correct  (=> (= $abort_flag@58 true) (=> (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@0) (= $abort_code@50 inline$$1_Roles_can_hold_balance$1$$t4@1)) (and (=> (= (ControlFlow 0 581750) 582327) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Then_correct|) (=> (= (ControlFlow 0 581750) 581860) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Then_correct  (=> (and (and $abort_flag@56 (= $abort_code@48 $abort_code@48)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@48) (= (ControlFlow 0 581744) 581750))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Then_correct  (=> (and (and $abort_flag@51 (= $abort_code@44 $abort_code@44)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@44) (= (ControlFlow 0 581782) 581750))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Then_correct  (=> (and (and $abort_flag@47 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@41) (= (ControlFlow 0 581814) 581750))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_flag@58 $abort_flag@57)) (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_code@50 $abort_code@49))) (and (=> (= (ControlFlow 0 581730) 582327) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Then_correct|) (=> (= (ControlFlow 0 581730) 581860) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Else_correct  (=> (and (not $abort_flag@56) (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1) (= $abort_code@49 $abort_code@48)) (and (= $abort_flag@57 $abort_flag@56) (= (ControlFlow 0 581718) 581730))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@55) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1) (= $abort_flag@56 $abort_flag@55))) (and (=> (= (ControlFlow 0 581676) 581744) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 581676) 581718) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct  (=> (and (and $abort_flag@55 (= $abort_code@48 $abort_code@48)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@0) (= $abort_flag@56 true))) (and (=> (= (ControlFlow 0 581694) 581744) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 581694) 581718) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Then_correct  (=> $abort_flag@53 (=> (and (and (= $abort_code@46 $abort_code@46) (= $abort_flag@55 true)) (and (= $abort_code@48 $abort_code@46) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@0))) (and (=> (= (ControlFlow 0 581600) 581694) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 581600) 581676) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t2@1) (= $abort_flag@55 $abort_flag@54)) (and (= $abort_code@48 $abort_code@47) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$t2@1))) (and (=> (= (ControlFlow 0 581536) 581694) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 581536) 581676) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Else_correct  (=> (and (and (and (not $abort_flag@53) (= inline$$1_Roles_has_role$5$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$5$$t6@2))) (and (= inline$$1_Roles_has_role$5$$t9@1 (= inline$$1_Roles_has_role$5$$t8@1 2)) (= inline$$1_Roles_has_role$5$$t9@1 inline$$1_Roles_has_role$5$$t9@1))) (and (and (= $abort_flag@54 $abort_flag@53) (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t9@1)) (and (= $abort_code@47 $abort_code@46) (= (ControlFlow 0 581582) 581536)))) inline$$1_Roles_has_role$5$L3_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Then$1_correct  (=> (= $abort_code@46 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@53 true) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@0)) (and (=> (= (ControlFlow 0 581652) 581600) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 581652) 581582) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= (ControlFlow 0 581650) 581652)) inline$$1_Roles_has_role$5$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$5$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= $abort_code@46 $abort_code@45)) (and (= $abort_flag@53 $abort_flag@52) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@1))) (and (=> (= (ControlFlow 0 581554) 581600) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 581554) 581582) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon9_Then_correct  (=> inline$$1_Roles_has_role$5$$t5@1 (and (=> (= (ControlFlow 0 581540) 581650) inline$$1_Roles_has_role$5$anon10_Then_correct) (=> (= (ControlFlow 0 581540) 581554) inline$$1_Roles_has_role$5$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$5$$t5@1) (= false false)) (=> (and (and (= $abort_flag@54 $abort_flag@52) (= inline$$1_Roles_has_role$5$$t2@1 false)) (and (= $abort_code@47 $abort_code@45) (= (ControlFlow 0 581524) 581536))) inline$$1_Roles_has_role$5$L3_correct))))
(let ((inline$$1_Roles_has_role$5$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$5$$t4@0 inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)))) (and (=> (= (ControlFlow 0 581504) 581540) inline$$1_Roles_has_role$5$anon9_Then_correct) (=> (= (ControlFlow 0 581504) 581524) inline$$1_Roles_has_role$5$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 581658) 581504)) inline$$1_Roles_has_role$5$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$1$$t1@1) (= (ControlFlow 0 581700) 581658)) inline$$1_Roles_has_designated_dealer_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$1$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 true) (= $abort_code@49 $abort_code@45)) (and (= $abort_flag@57 $abort_flag@52) (= (ControlFlow 0 581768) 581730))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Else_correct  (=> (not $abort_flag@51) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1) (= inline$$1_Roles_can_hold_balance$1$$t1@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1)) (and (= $abort_flag@52 $abort_flag@51) (= $abort_code@45 $abort_code@44))) (and (=> (= (ControlFlow 0 581018) 581768) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 581018) 581700) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@50) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1) (= $abort_flag@51 $abort_flag@50))) (and (=> (= (ControlFlow 0 580976) 581782) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 580976) 581018) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@50 (= $abort_code@44 $abort_code@44)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@0) (= $abort_flag@51 true))) (and (=> (= (ControlFlow 0 580994) 581782) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 580994) 581018) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Then_correct  (=> $abort_flag@48 (=> (and (and (= $abort_code@42 $abort_code@42) (= $abort_code@44 $abort_code@42)) (and (= $abort_flag@50 true) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@0))) (and (=> (= (ControlFlow 0 580900) 580994) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 580900) 580976) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t2@1) (= $abort_code@44 $abort_code@43)) (and (= $abort_flag@50 $abort_flag@49) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$t2@1))) (and (=> (= (ControlFlow 0 580836) 580994) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 580836) 580976) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Else_correct  (=> (and (and (and (not $abort_flag@48) (= inline$$1_Roles_has_role$4$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$4$$t6@2))) (and (= inline$$1_Roles_has_role$4$$t9@1 (= inline$$1_Roles_has_role$4$$t8@1 6)) (= inline$$1_Roles_has_role$4$$t9@1 inline$$1_Roles_has_role$4$$t9@1))) (and (and (= $abort_code@43 $abort_code@42) (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t9@1)) (and (= $abort_flag@49 $abort_flag@48) (= (ControlFlow 0 580882) 580836)))) inline$$1_Roles_has_role$4$L3_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Then$1_correct  (=> (= $abort_flag@48 true) (=> (and (= $abort_code@42 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@0)) (and (=> (= (ControlFlow 0 580952) 580900) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 580952) 580882) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= (ControlFlow 0 580950) 580952)) inline$$1_Roles_has_role$4$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$4$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= $abort_flag@48 $abort_flag@47)) (and (= $abort_code@42 $abort_code@41) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@1))) (and (=> (= (ControlFlow 0 580854) 580900) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 580854) 580882) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon9_Then_correct  (=> inline$$1_Roles_has_role$4$$t5@1 (and (=> (= (ControlFlow 0 580840) 580950) inline$$1_Roles_has_role$4$anon10_Then_correct) (=> (= (ControlFlow 0 580840) 580854) inline$$1_Roles_has_role$4$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$4$$t5@1) (= false false)) (=> (and (and (= $abort_code@43 $abort_code@41) (= inline$$1_Roles_has_role$4$$t2@1 false)) (and (= $abort_flag@49 $abort_flag@47) (= (ControlFlow 0 580824) 580836))) inline$$1_Roles_has_role$4$L3_correct))))
(let ((inline$$1_Roles_has_role$4$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$4$$t4@0 inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)))) (and (=> (= (ControlFlow 0 580804) 580840) inline$$1_Roles_has_role$4$anon9_Then_correct) (=> (= (ControlFlow 0 580804) 580824) inline$$1_Roles_has_role$4$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 580958) 580804)) inline$$1_Roles_has_role$4$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$1$$ret0@1) (= (ControlFlow 0 581000) 580958)) inline$$1_Roles_has_child_VASP_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$1$$t1@1 true)) (and (= $abort_flag@52 $abort_flag@47) (= $abort_code@45 $abort_code@41))) (and (=> (= (ControlFlow 0 581800) 581768) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 581800) 581700) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Else_correct  (=> (not $abort_flag@47) (and (=> (= (ControlFlow 0 580320) 581800) inline$$1_Roles_can_hold_balance$1$anon14_Then_correct) (=> (= (ControlFlow 0 580320) 581000) inline$$1_Roles_can_hold_balance$1$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@46) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1) (= $abort_flag@47 $abort_flag@46))) (and (=> (= (ControlFlow 0 580288) 581814) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 580288) 580320) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@46 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_parent_VASP_role$1$$ret0@0) (= $abort_flag@47 true))) (and (=> (= (ControlFlow 0 580306) 581814) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 580306) 580320) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Then_correct  (=> $abort_flag@44 (=> (and (and (= $abort_code@39 $abort_code@39) (= $abort_code@41 $abort_code@39)) (and (= $abort_flag@46 true) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@0))) (and (=> (= (ControlFlow 0 580212) 580306) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 580212) 580288) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t2@1) (= $abort_code@41 $abort_code@40)) (and (= $abort_flag@46 $abort_flag@45) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$t2@1))) (and (=> (= (ControlFlow 0 580148) 580306) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 580148) 580288) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Else_correct  (=> (and (and (and (not $abort_flag@44) (= inline$$1_Roles_has_role$3$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$3$$t6@2))) (and (= inline$$1_Roles_has_role$3$$t9@1 (= inline$$1_Roles_has_role$3$$t8@1 5)) (= inline$$1_Roles_has_role$3$$t9@1 inline$$1_Roles_has_role$3$$t9@1))) (and (and (= $abort_code@40 $abort_code@39) (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t9@1)) (and (= $abort_flag@45 $abort_flag@44) (= (ControlFlow 0 580194) 580148)))) inline$$1_Roles_has_role$3$L3_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Then$1_correct  (=> (= $abort_flag@44 true) (=> (and (= $abort_code@39 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@0)) (and (=> (= (ControlFlow 0 580264) 580212) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 580264) 580194) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= (ControlFlow 0 580262) 580264)) inline$$1_Roles_has_role$3$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$3$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= $abort_flag@44 $abort_flag@43)) (and (= $abort_code@39 $abort_code@38) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@1))) (and (=> (= (ControlFlow 0 580166) 580212) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 580166) 580194) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon9_Then_correct  (=> inline$$1_Roles_has_role$3$$t5@1 (and (=> (= (ControlFlow 0 580152) 580262) inline$$1_Roles_has_role$3$anon10_Then_correct) (=> (= (ControlFlow 0 580152) 580166) inline$$1_Roles_has_role$3$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$3$$t5@1) (= false false)) (=> (and (and (= $abort_code@40 $abort_code@38) (= inline$$1_Roles_has_role$3$$t2@1 false)) (and (= $abort_flag@45 $abort_flag@43) (= (ControlFlow 0 580136) 580148))) inline$$1_Roles_has_role$3$L3_correct))))
(let ((inline$$1_Roles_has_role$3$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$3$$t4@0 inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)))) (and (=> (= (ControlFlow 0 580116) 580152) inline$$1_Roles_has_role$3$anon9_Then_correct) (=> (= (ControlFlow 0 580116) 580136) inline$$1_Roles_has_role$3$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 580270) 580116)) inline$$1_Roles_has_role$3$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 580312) 580270)) inline$$1_Roles_has_parent_VASP_role$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$1$$t1@1 (= (ControlFlow 0 581820) 580312)) inline$$1_Roles_can_hold_balance$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$1$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 579308) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Else_correct|  (=> (and (not $abort_flag@43) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 579292) 581820) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Then_correct|) (=> (= (ControlFlow 0 579292) 579308) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Then_correct|  (=> $abort_flag@43 (=> (and (and (= $abort_code@38 $abort_code@38) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@38)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 582341) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 579250) 582341) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Then_correct|) (=> (= (ControlFlow 0 579250) 579292) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0|) (= (ControlFlow 0 579256) 579250)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 582367) 579314))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 579145) 582367) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Then_correct|) (=> (= (ControlFlow 0 579145) 579256) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Then_correct|  (=> inline$$Not$5$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t12@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 582371) 579145)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Else_correct|  (=> (not inline$$Not$5$dst@1) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= $abort_code@54 $abort_code@38)) (and (= $abort_flag@62 $abort_flag@43) (= (ControlFlow 0 578471) 578473))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L9_correct|))))
(let ((inline$$Not$5$anon0_correct  (=> (= inline$$Not$5$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t10@1|)) (and (=> (= (ControlFlow 0 578455) 582371) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 578455) 578471) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L5_correct|  (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|)) (= (ControlFlow 0 578461) 578455)) inline$$Not$5$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Else_correct|  (=> (not $abort_flag@42) (=> (and (and (= $abort_code@38 $abort_code@37) (= $abort_flag@43 $abort_flag@42)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 586307) 578461))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L5_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@41) (= $abort_code@37 $abort_code@36)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@42 $abort_flag@41))) (and (=> (= (ControlFlow 0 586159) 586321) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 586159) 586307) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@37 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@42 true)) (and (=> (= (ControlFlow 0 583240) 586321) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 583240) 586307) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@41 (=> (and (and (= $abort_code@36 $abort_code@36) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@36)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 586173) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@36 $EXEC_FAILURE_CODE) (= $abort_flag@41 true)) (and (=> (= (ControlFlow 0 586225) 586173) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 586225) 586159) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 586223) 586225)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_203603 (|Store__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@36 $abort_code@35) (= $abort_flag@41 $abort_flag@40))) (and (=> (= (ControlFlow 0 586149) 586173) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 586149) 586159) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@40) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 586127) 586223) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 586127) 586149) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@40 (=> (and (and (= $abort_code@35 $abort_code@35) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@35)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 586239) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@40 $abort_flag@39)) (and (= $abort_code@35 $abort_code@34) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 586079) 586239) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 586079) 586127) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@40 true)) (and (= $abort_code@35 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 586109) 586239) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 586109) 586127) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 586051) 586109) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 586051) 586079) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$7$dst@1 (= (ControlFlow 0 586115) 586051)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$7$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 585898) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= inline$$Not$7$dst@1 inline$$Not$7$dst@1))) (and (=> (= (ControlFlow 0 585882) 586115) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 585882) 585898) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$7$anon0_correct  (=> (and (= inline$$Not$7$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1|)) (= (ControlFlow 0 585842) 585882)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$2$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= (ControlFlow 0 585848) 585842)) inline$$Not$7$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$2$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 585802) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@39) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@1))) (and (=> (= (ControlFlow 0 585786) 585848) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 585786) 585802) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@39 (=> (and (and (= $abort_code@34 $abort_code@34) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 586253) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$2$L9_correct  (=> (= $abort_flag@39 true) (=> (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@0) (= $abort_code@34 inline$$1_Roles_can_hold_balance$2$$t4@1)) (and (=> (= (ControlFlow 0 585676) 586253) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 585676) 585786) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Then_correct  (=> (and (and $abort_flag@37 (= $abort_code@32 $abort_code@32)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@32) (= (ControlFlow 0 585670) 585676))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Then_correct  (=> (and (and $abort_flag@32 (= $abort_code@28 $abort_code@28)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@28) (= (ControlFlow 0 585708) 585676))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Then_correct  (=> (and (and $abort_flag@28 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@25) (= (ControlFlow 0 585740) 585676))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_flag@39 $abort_flag@38)) (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_code@34 $abort_code@33))) (and (=> (= (ControlFlow 0 585656) 586253) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 585656) 585786) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Else_correct  (=> (and (not $abort_flag@37) (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1) (= $abort_code@33 $abort_code@32)) (and (= $abort_flag@38 $abort_flag@37) (= (ControlFlow 0 585644) 585656))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@36) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1) (= $abort_flag@37 $abort_flag@36))) (and (=> (= (ControlFlow 0 585602) 585670) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 585602) 585644) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct  (=> (and (and $abort_flag@36 (= $abort_code@32 $abort_code@32)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@0) (= $abort_flag@37 true))) (and (=> (= (ControlFlow 0 585620) 585670) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 585620) 585644) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Then_correct  (=> $abort_flag@34 (=> (and (and (= $abort_code@30 $abort_code@30) (= $abort_flag@36 true)) (and (= $abort_code@32 $abort_code@30) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@0))) (and (=> (= (ControlFlow 0 585526) 585620) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 585526) 585602) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t2@1) (= $abort_flag@36 $abort_flag@35)) (and (= $abort_code@32 $abort_code@31) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$t2@1))) (and (=> (= (ControlFlow 0 585462) 585620) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 585462) 585602) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Else_correct  (=> (and (and (and (not $abort_flag@34) (= inline$$1_Roles_has_role$8$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$8$$t6@2))) (and (= inline$$1_Roles_has_role$8$$t9@1 (= inline$$1_Roles_has_role$8$$t8@1 2)) (= inline$$1_Roles_has_role$8$$t9@1 inline$$1_Roles_has_role$8$$t9@1))) (and (and (= $abort_flag@35 $abort_flag@34) (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t9@1)) (and (= $abort_code@31 $abort_code@30) (= (ControlFlow 0 585508) 585462)))) inline$$1_Roles_has_role$8$L3_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Then$1_correct  (=> (= $abort_code@30 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@34 true) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@0)) (and (=> (= (ControlFlow 0 585578) 585526) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 585578) 585508) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= (ControlFlow 0 585576) 585578)) inline$$1_Roles_has_role$8$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$8$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= $abort_code@30 $abort_code@29)) (and (= $abort_flag@34 $abort_flag@33) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@1))) (and (=> (= (ControlFlow 0 585480) 585526) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 585480) 585508) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon9_Then_correct  (=> inline$$1_Roles_has_role$8$$t5@1 (and (=> (= (ControlFlow 0 585466) 585576) inline$$1_Roles_has_role$8$anon10_Then_correct) (=> (= (ControlFlow 0 585466) 585480) inline$$1_Roles_has_role$8$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$8$$t5@1) (= false false)) (=> (and (and (= $abort_flag@35 $abort_flag@33) (= inline$$1_Roles_has_role$8$$t2@1 false)) (and (= $abort_code@31 $abort_code@29) (= (ControlFlow 0 585450) 585462))) inline$$1_Roles_has_role$8$L3_correct))))
(let ((inline$$1_Roles_has_role$8$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$8$$t4@0 inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)))) (and (=> (= (ControlFlow 0 585430) 585466) inline$$1_Roles_has_role$8$anon9_Then_correct) (=> (= (ControlFlow 0 585430) 585450) inline$$1_Roles_has_role$8$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 585584) 585430)) inline$$1_Roles_has_role$8$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$2$$t1@1) (= (ControlFlow 0 585626) 585584)) inline$$1_Roles_has_designated_dealer_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$2$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 true) (= $abort_code@33 $abort_code@29)) (and (= $abort_flag@38 $abort_flag@33) (= (ControlFlow 0 585694) 585656))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Else_correct  (=> (not $abort_flag@32) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1) (= inline$$1_Roles_can_hold_balance$2$$t1@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1)) (and (= $abort_flag@33 $abort_flag@32) (= $abort_code@29 $abort_code@28))) (and (=> (= (ControlFlow 0 584944) 585694) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 584944) 585626) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@31) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1) (= $abort_flag@32 $abort_flag@31))) (and (=> (= (ControlFlow 0 584902) 585708) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 584902) 584944) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@31 (= $abort_code@28 $abort_code@28)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@0) (= $abort_flag@32 true))) (and (=> (= (ControlFlow 0 584920) 585708) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 584920) 584944) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Then_correct  (=> $abort_flag@29 (=> (and (and (= $abort_code@26 $abort_code@26) (= $abort_code@28 $abort_code@26)) (and (= $abort_flag@31 true) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@0))) (and (=> (= (ControlFlow 0 584826) 584920) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 584826) 584902) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t2@1) (= $abort_code@28 $abort_code@27)) (and (= $abort_flag@31 $abort_flag@30) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$t2@1))) (and (=> (= (ControlFlow 0 584762) 584920) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 584762) 584902) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Else_correct  (=> (and (and (and (not $abort_flag@29) (= inline$$1_Roles_has_role$7$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$7$$t6@2))) (and (= inline$$1_Roles_has_role$7$$t9@1 (= inline$$1_Roles_has_role$7$$t8@1 6)) (= inline$$1_Roles_has_role$7$$t9@1 inline$$1_Roles_has_role$7$$t9@1))) (and (and (= $abort_code@27 $abort_code@26) (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t9@1)) (and (= $abort_flag@30 $abort_flag@29) (= (ControlFlow 0 584808) 584762)))) inline$$1_Roles_has_role$7$L3_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Then$1_correct  (=> (= $abort_flag@29 true) (=> (and (= $abort_code@26 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@0)) (and (=> (= (ControlFlow 0 584878) 584826) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 584878) 584808) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= (ControlFlow 0 584876) 584878)) inline$$1_Roles_has_role$7$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$7$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= $abort_flag@29 $abort_flag@28)) (and (= $abort_code@26 $abort_code@25) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@1))) (and (=> (= (ControlFlow 0 584780) 584826) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 584780) 584808) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon9_Then_correct  (=> inline$$1_Roles_has_role$7$$t5@1 (and (=> (= (ControlFlow 0 584766) 584876) inline$$1_Roles_has_role$7$anon10_Then_correct) (=> (= (ControlFlow 0 584766) 584780) inline$$1_Roles_has_role$7$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$7$$t5@1) (= false false)) (=> (and (and (= $abort_code@27 $abort_code@25) (= inline$$1_Roles_has_role$7$$t2@1 false)) (and (= $abort_flag@30 $abort_flag@28) (= (ControlFlow 0 584750) 584762))) inline$$1_Roles_has_role$7$L3_correct))))
(let ((inline$$1_Roles_has_role$7$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$7$$t4@0 inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)))) (and (=> (= (ControlFlow 0 584730) 584766) inline$$1_Roles_has_role$7$anon9_Then_correct) (=> (= (ControlFlow 0 584730) 584750) inline$$1_Roles_has_role$7$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 584884) 584730)) inline$$1_Roles_has_role$7$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$2$$ret0@1) (= (ControlFlow 0 584926) 584884)) inline$$1_Roles_has_child_VASP_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$2$$t1@1 true)) (and (= $abort_flag@33 $abort_flag@28) (= $abort_code@29 $abort_code@25))) (and (=> (= (ControlFlow 0 585726) 585694) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 585726) 585626) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Else_correct  (=> (not $abort_flag@28) (and (=> (= (ControlFlow 0 584246) 585726) inline$$1_Roles_can_hold_balance$2$anon14_Then_correct) (=> (= (ControlFlow 0 584246) 584926) inline$$1_Roles_can_hold_balance$2$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@27) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1) (= $abort_flag@28 $abort_flag@27))) (and (=> (= (ControlFlow 0 584214) 585740) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 584214) 584246) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@27 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_parent_VASP_role$2$$ret0@0) (= $abort_flag@28 true))) (and (=> (= (ControlFlow 0 584232) 585740) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 584232) 584246) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Then_correct  (=> $abort_flag@25 (=> (and (and (= $abort_code@23 $abort_code@23) (= $abort_flag@27 true)) (and (= $abort_code@25 $abort_code@23) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@0))) (and (=> (= (ControlFlow 0 584138) 584232) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 584138) 584214) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t2@1) (= $abort_flag@27 $abort_flag@26)) (and (= $abort_code@25 $abort_code@24) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$t2@1))) (and (=> (= (ControlFlow 0 584074) 584232) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 584074) 584214) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Else_correct  (=> (and (and (and (not $abort_flag@25) (= inline$$1_Roles_has_role$6$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$6$$t6@2))) (and (= inline$$1_Roles_has_role$6$$t9@1 (= inline$$1_Roles_has_role$6$$t8@1 5)) (= inline$$1_Roles_has_role$6$$t9@1 inline$$1_Roles_has_role$6$$t9@1))) (and (and (= $abort_flag@26 $abort_flag@25) (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t9@1)) (and (= $abort_code@24 $abort_code@23) (= (ControlFlow 0 584120) 584074)))) inline$$1_Roles_has_role$6$L3_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Then$1_correct  (=> (= $abort_code@23 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@25 true) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@0)) (and (=> (= (ControlFlow 0 584190) 584138) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 584190) 584120) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= (ControlFlow 0 584188) 584190)) inline$$1_Roles_has_role$6$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$6$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= $abort_code@23 $abort_code@22)) (and (= $abort_flag@25 $abort_flag@24) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@1))) (and (=> (= (ControlFlow 0 584092) 584138) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 584092) 584120) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon9_Then_correct  (=> inline$$1_Roles_has_role$6$$t5@1 (and (=> (= (ControlFlow 0 584078) 584188) inline$$1_Roles_has_role$6$anon10_Then_correct) (=> (= (ControlFlow 0 584078) 584092) inline$$1_Roles_has_role$6$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$6$$t5@1) (= false false)) (=> (and (and (= $abort_flag@26 $abort_flag@24) (= inline$$1_Roles_has_role$6$$t2@1 false)) (and (= $abort_code@24 $abort_code@22) (= (ControlFlow 0 584062) 584074))) inline$$1_Roles_has_role$6$L3_correct))))
(let ((inline$$1_Roles_has_role$6$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$6$$t4@0 inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)))) (and (=> (= (ControlFlow 0 584042) 584078) inline$$1_Roles_has_role$6$anon9_Then_correct) (=> (= (ControlFlow 0 584042) 584062) inline$$1_Roles_has_role$6$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 584196) 584042)) inline$$1_Roles_has_role$6$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 584238) 584196)) inline$$1_Roles_has_parent_VASP_role$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= (ControlFlow 0 585746) 584238)) inline$$1_Roles_can_hold_balance$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$2$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 583234) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@24) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 583218) 585746) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 583218) 583234) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@24 (=> (and (and (= $abort_code@22 $abort_code@22) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@22)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 586267) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 583176) 586267) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 583176) 583218) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 583182) 583176)) inline$$1_DiemAccount_exists_at$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 586293) 583240))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 583071) 586293) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 583071) 583182) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Then_correct|  (=> inline$$Not$4$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 586297) 583071)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= $abort_code@38 $abort_code@22) (= $abort_flag@43 $abort_flag@24)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 578417) 578461))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L5_correct|))))
(let ((inline$$Not$4$anon0_correct  (=> (= inline$$Not$4$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t7@1|)) (and (=> (= (ControlFlow 0 578403) 586297) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 578403) 578417) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Then_correct|  (=> _$t4 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|)) (= (ControlFlow 0 578409) 578403)) inline$$Not$4$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Else_correct|  (=> (and (not _$t4) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|)) (=> (and (and (= $abort_code@55 $abort_code@22) (= $abort_flag@63 $abort_flag@24)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 578359) 578363))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Else_correct|  (=> (not $abort_flag@24) (and (=> (= (ControlFlow 0 578351) 578409) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 578351) 578359) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@23) (= $abort_code@22 $abort_code@21)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@24 $abort_flag@23))) (and (=> (= (ControlFlow 0 578203) 586335) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 578203) 578351) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@22 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@24 true)) (and (=> (= (ControlFlow 0 575284) 586335) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 575284) 578351) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@23 (=> (and (and (= $abort_code@21 $abort_code@21) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@21)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 578217) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@21 $EXEC_FAILURE_CODE) (= $abort_flag@23 true)) (and (=> (= (ControlFlow 0 578269) 578217) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 578269) 578203) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 578267) 578269)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_203663 (|Store__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@21 $abort_code@20) (= $abort_flag@23 $abort_flag@22))) (and (=> (= (ControlFlow 0 578193) 578217) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 578193) 578203) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@22) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 578171) 578267) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 578171) 578193) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@22 (=> (and (and (= $abort_code@20 $abort_code@20) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@20)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 578283) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@22 $abort_flag@21)) (and (= $abort_code@20 $abort_code@19) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 578123) 578283) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 578123) 578171) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@22 true)) (and (= $abort_code@20 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 578153) 578283) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 578153) 578171) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 578095) 578153) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 578095) 578123) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$3$dst@1 (= (ControlFlow 0 578159) 578095)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 577942) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= inline$$Not$3$dst@1 inline$$Not$3$dst@1))) (and (=> (= (ControlFlow 0 577926) 578159) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 577926) 577942) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$3$anon0_correct  (=> (and (= inline$$Not$3$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1|)) (= (ControlFlow 0 577886) 577926)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= (ControlFlow 0 577892) 577886)) inline$$Not$3$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 577846) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@21) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 577830) 577892) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 577830) 577846) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@21 (=> (and (and (= $abort_code@19 $abort_code@19) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 578297) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@21 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@19 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 577720) 578297) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 577720) 577830) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@19 (= $abort_code@17 $abort_code@17)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@17) (= (ControlFlow 0 577714) 577720))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@14 (= $abort_code@13 $abort_code@13)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@13) (= (ControlFlow 0 577752) 577720))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@10 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@10) (= (ControlFlow 0 577784) 577720))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@21 $abort_flag@20)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@19 $abort_code@18))) (and (=> (= (ControlFlow 0 577700) 578297) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 577700) 577830) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@19) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@18 $abort_code@17)) (and (= $abort_flag@20 $abort_flag@19) (= (ControlFlow 0 577688) 577700))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@18) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@19 $abort_flag@18))) (and (=> (= (ControlFlow 0 577646) 577714) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 577646) 577688) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@18 (= $abort_code@17 $abort_code@17)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@19 true))) (and (=> (= (ControlFlow 0 577664) 577714) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 577664) 577688) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@16 (=> (and (and (= $abort_code@15 $abort_code@15) (= $abort_flag@18 true)) (and (= $abort_code@17 $abort_code@15) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 577570) 577664) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 577570) 577646) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@18 $abort_flag@17)) (and (= $abort_code@17 $abort_code@16) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 577506) 577664) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 577506) 577646) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@16) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@17 $abort_flag@16) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@16 $abort_code@15) (= (ControlFlow 0 577552) 577506)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@15 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@16 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 577622) 577570) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 577622) 577552) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 577620) 577622)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@15 $abort_code@14)) (and (= $abort_flag@16 $abort_flag@15) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 577524) 577570) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 577524) 577552) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 577510) 577620) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 577510) 577524) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@17 $abort_flag@15) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@16 $abort_code@14) (= (ControlFlow 0 577494) 577506))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 577474) 577510) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 577474) 577494) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 577628) 577474)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 577670) 577628)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@18 $abort_code@14)) (and (= $abort_flag@20 $abort_flag@15) (= (ControlFlow 0 577738) 577700))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@14) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@15 $abort_flag@14) (= $abort_code@14 $abort_code@13))) (and (=> (= (ControlFlow 0 576988) 577738) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 576988) 577670) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@13) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@14 $abort_flag@13))) (and (=> (= (ControlFlow 0 576946) 577752) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 576946) 576988) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@13 (= $abort_code@13 $abort_code@13)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@14 true))) (and (=> (= (ControlFlow 0 576964) 577752) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 576964) 576988) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@11 (=> (and (and (= $abort_code@11 $abort_code@11) (= $abort_code@13 $abort_code@11)) (and (= $abort_flag@13 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 576870) 576964) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 576870) 576946) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@13 $abort_code@12)) (and (= $abort_flag@13 $abort_flag@12) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 576806) 576964) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 576806) 576946) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@12 $abort_code@11) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@12 $abort_flag@11) (= (ControlFlow 0 576852) 576806)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@11 true) (=> (and (= $abort_code@11 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 576922) 576870) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 576922) 576852) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 576920) 576922)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@11 $abort_code@10) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 576824) 576870) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 576824) 576852) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 576810) 576920) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 576810) 576824) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@12 $abort_code@10) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@12 $abort_flag@10) (= (ControlFlow 0 576794) 576806))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 576774) 576810) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 576774) 576794) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 576928) 576774)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 576970) 576928)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@15 $abort_flag@10) (= $abort_code@14 $abort_code@10))) (and (=> (= (ControlFlow 0 577770) 577738) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 577770) 577670) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@10) (and (=> (= (ControlFlow 0 576290) 577770) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 576290) 576970) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@10 $abort_flag@9))) (and (=> (= (ControlFlow 0 576258) 577784) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 576258) 576290) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@10 true))) (and (=> (= (ControlFlow 0 576276) 577784) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 576276) 576290) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@7 (=> (and (and (= $abort_code@8 $abort_code@8) (= $abort_code@10 $abort_code@8)) (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 576182) 576276) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 576182) 576258) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_code@10 $abort_code@9)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 576118) 576276) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 576118) 576258) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@7) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@9 $abort_code@8) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@8 $abort_flag@7) (= (ControlFlow 0 576164) 576118)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@7 true) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 576234) 576182) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 576234) 576164) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 576232) 576234)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@8 $abort_code@7) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 576136) 576182) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 576136) 576164) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 576122) 576232) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 576122) 576136) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@9 $abort_code@7) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_flag@8 $abort_flag@6) (= (ControlFlow 0 576106) 576118))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 576086) 576122) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 576086) 576106) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 576240) 576086)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 576282) 576240)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= (ControlFlow 0 577790) 576282)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 575278) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not $abort_flag@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 575262) 577790) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 575262) 575278) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|  (=> $abort_flag@6 (=> (and (and (= $abort_code@7 $abort_code@7) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@7)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 578311) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 575220) 578311) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 575220) 575262) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= (ControlFlow 0 575226) 575220)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 578337) 575284))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 575115) 578337) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 575115) 575226) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t3@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= _$t4 _$t4) (|$IsValid'address'| |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|))) (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0| |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t5@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 578341) 575115)))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon28_correct  (=> (= $t26 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (=> (and (= $t27 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t28 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) $t21)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory@2) $t21) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory@2) $t21))))) (and (and (= (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t26) (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t22) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t22)))) (= (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t26) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t22) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t22))))) (and (not (= (|l#Vec_151608| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)) (= $t21 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)))))) (and (and (and (not (= (|l#Vec_151647| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)) (= $t21 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)))) (= $t29 $t28)) (and (and (= $t30 $t27) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $es) $t30)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_151483| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29))))
(Multiset_151483 (|Store__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $es) $t30 stream_new@@2)))))) (and (= $t31 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 586339) 578341))))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((anon43_Else_correct  (=> (and (and (not |$temp_0'bool'@3|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_199540 (|Store__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1) (= (ControlFlow 0 573871) 586339))) anon28_correct)))
(let ((anon43_Then_correct  (=> (and (and |$temp_0'bool'@3| (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_199540 (|Store__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0) (= (ControlFlow 0 587445) 586339))) anon28_correct)))
(let ((anon42_Else_correct  (=> (not |$temp_0'bool'@2|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_199368 (|Store__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) $t21 false) (|contents#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 573857) 587445) anon43_Then_correct) (=> (= (ControlFlow 0 573857) 573871) anon43_Else_correct))))))
(let ((anon42_Then_correct  (=> |$temp_0'bool'@2| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_199368 (|Store__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) $t21 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) $t21 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 587457) 587445) anon43_Then_correct) (=> (= (ControlFlow 0 587457) 573871) anon43_Else_correct))))))
(let ((anon41_Else_correct  (=> (and (not |$temp_0'bool'@1|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_189928 (|Store__T@[Int]Bool_| (|domain#$Memory_189928| $1_Event_EventHandleGenerator_$memory) $t21 false) (|contents#$Memory_189928| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 573843) 587457) anon42_Then_correct) (=> (= (ControlFlow 0 573843) 573857) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and |$temp_0'bool'@1| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_189928 (|Store__T@[Int]Bool_| (|domain#$Memory_189928| $1_Event_EventHandleGenerator_$memory) $t21 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_189928| $1_Event_EventHandleGenerator_$memory) $t21 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 587469) 587457) anon42_Then_correct) (=> (= (ControlFlow 0 587469) 573857) anon42_Else_correct)))))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_246687 (|Store__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) $t21 false) (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 573829) 587469) anon41_Then_correct) (=> (= (ControlFlow 0 573829) 573843) anon41_Else_correct))))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_246687 (|Store__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) $t21 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) $t21 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 587481) 587469) anon41_Then_correct) (=> (= (ControlFlow 0 587481) 573843) anon41_Else_correct))))))
(let ((anon39_Else_correct  (=> (not $t25) (and (=> (= (ControlFlow 0 573817) 587481) anon40_Then_correct) (=> (= (ControlFlow 0 573817) 573829) anon40_Else_correct)))))
(let ((anon38_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= $t21 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t22 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $t23 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t24 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (=> (= (ControlFlow 0 573811) (- 0 792650)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) $t21))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) $t21)) (and (=> (= (ControlFlow 0 573811) (- 0 792661)) (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (and (=> (= (ControlFlow 0 573811) (- 0 792670)) (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) $t21)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) $t21) (=> (= $t25  (or (or (or (or (= $t21 0) (= $t21 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) $t21)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_30625| _$t2)) 32)))) (and (=> (= (ControlFlow 0 573811) 587587) anon39_Then_correct) (=> (= (ControlFlow 0 573811) 573817) anon39_Else_correct)))))))))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct  (=> (and (and (not $abort_flag@5) (= $abort_flag@6 $abort_flag@5)) (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@1) (= $abort_code@7 $abort_code@6))) (and (=> (= (ControlFlow 0 573541) 587601) anon38_Then_correct) (=> (= (ControlFlow 0 573541) 573811) anon38_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct  (=> (= $abort_flag@6 true) (=> (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@2) (= $abort_code@7 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1)) (and (=> (= (ControlFlow 0 573463) 587601) anon38_Then_correct) (=> (= (ControlFlow 0 573463) 573811) anon38_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory@1)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 $abort_code@6) (= (ControlFlow 0 573555) 573463))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct  (=> (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory) (=> (and (= $abort_flag@5 true) (= $abort_code@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 573607) 573555) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 573607) 573541) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 573605) 573607)) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_235739 (|Store__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1))) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory@0)) (and (= $abort_flag@5 $abort_flag@4) (= $abort_code@6 $abort_code@5))) (and (=> (= (ControlFlow 0 573531) 573555) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 573531) 573541) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct  (=> (and (not $abort_flag@4) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 ($1_VASPDomain_VASPDomains |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1|))) (and (=> (= (ControlFlow 0 573509) 573605) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct) (=> (= (ControlFlow 0 573509) 573531) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct  (=> $abort_flag@4 (=> (and (and (= $abort_code@5 $abort_code@5) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 $abort_code@5) (= (ControlFlow 0 573621) 573463))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((|inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| (Vec_152265 (MapConstVec_137541 DefaultVecElem_137541) 0)) (and (=> (= (ControlFlow 0 573489) 573621) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct) (=> (= (ControlFlow 0 573489) 573509) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct  (=> (and inline$$Not$2$dst@1 (= (ControlFlow 0 573495) 573489)) |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct  (=> (not inline$$Not$2$dst@1) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= (ControlFlow 0 573457) 573463))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 6)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 573441) 573495) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct) (=> (= (ControlFlow 0 573441) 573457) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1)) (= (ControlFlow 0 573401) 573441)) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct  (=> (not inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0) (=> (and (and (|$IsValid'address'| inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0)) (= (ControlFlow 0 573407) 573401))) inline$$Not$2$anon0_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct  (=> (and inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (= 5 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)) (= 3 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)))) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= (ControlFlow 0 573673) 573463))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct  (=> (= inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)))))) (and (=> (= (ControlFlow 0 573345) 573673) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct) (=> (= (ControlFlow 0 573345) 573407) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct))))))
(let ((anon37_Else_correct  (=> (and (and (not $abort_flag@4) (= $t19 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= $t20 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 573677) 573345))) inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct  (=> (not $abort_flag@3) (=> (and (= $abort_code@5 $abort_code@4) (= $abort_flag@4 $abort_flag@3)) (and (=> (= (ControlFlow 0 572538) 587615) anon37_Then_correct) (=> (= (ControlFlow 0 572538) 573677) anon37_Else_correct))))))
(let ((inline$$1_DualAttestation_publish_credential$0$L3_correct  (=> (and (= $abort_code@5 inline$$1_DualAttestation_publish_credential$0$$t11@1) (= $abort_flag@4 true)) (and (=> (= (ControlFlow 0 572242) 587615) anon37_Then_correct) (=> (= (ControlFlow 0 572242) 573677) anon37_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@4) (= (ControlFlow 0 572552) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 572604) 572552) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 572604) 572538) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_203488| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 572602) 572604)) inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_203488| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (= $1_DualAttestation_Credential_$memory@0 ($Memory_203488 (|Store__T@[Int]Bool_| (|domain#$Memory_203488| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_203488| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_DualAttestation_publish_credential$0$$t24@1)))) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 572528) 572552) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 572528) 572538) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct  (=> (and (not $abort_flag@2) (= inline$$1_DualAttestation_publish_credential$0$$t24@1 ($1_DualAttestation_Credential _$t3 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 572506) 572602) inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct) (=> (= (ControlFlow 0 572506) 572528) inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 572618) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 572476) 572618) inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct) (=> (= (ControlFlow 0 572476) 572506) inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 572482) 572476)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 572632) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 572394) 572632) inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct) (=> (= (ControlFlow 0 572394) 572482) inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct  (=> (not $abort_flag@2) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 572400) 572394)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 572646) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (Vec_30625 (MapConstVec_16957 DefaultVecElem_16957) 0)) (and (=> (= (ControlFlow 0 572304) 572646) inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct) (=> (= (ControlFlow 0 572304) 572400) inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 572310) 572304)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 572660) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (Vec_30625 (MapConstVec_16957 DefaultVecElem_16957) 0)) (and (=> (= (ControlFlow 0 572268) 572660) inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct) (=> (= (ControlFlow 0 572268) 572310) inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 572274) 572268)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= inline$$1_DualAttestation_publish_credential$0$$t18@0 inline$$1_DualAttestation_publish_credential$0$$t18@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t18@0) (= (ControlFlow 0 572236) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_DualAttestation_publish_credential$0$$t18@0) (= inline$$1_DualAttestation_publish_credential$0$$t18@0 6)) (and (= inline$$1_DualAttestation_publish_credential$0$$t18@0 inline$$1_DualAttestation_publish_credential$0$$t18@0) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 572220) 572274) inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct) (=> (= (ControlFlow 0 572220) 572236) inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_DualAttestation_publish_credential$0$$t15@1)) (= (ControlFlow 0 572180) 572220)) inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t13@0) (=> (and (and (|$IsValid'address'| inline$$1_DualAttestation_publish_credential$0$$t14@0) (= inline$$1_DualAttestation_publish_credential$0$$t14@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_DualAttestation_publish_credential$0$$t15@1 (|Select__T@[Int]Bool_| (|domain#$Memory_203488| $1_DualAttestation_Credential_$memory) inline$$1_DualAttestation_publish_credential$0$$t14@0)) (= (ControlFlow 0 572186) 572180))) inline$$Not$1$anon0_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t13@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) 1)) (= 3 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (= inline$$1_DualAttestation_publish_credential$0$$t11@0 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t11@0) (= (ControlFlow 0 572732) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t10@0) (=> (and (= inline$$1_DualAttestation_publish_credential$0$$t12@0 (|$addr#$signer| _$t0)) (= inline$$1_DualAttestation_publish_credential$0$$t13@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))) (and (=> (= (ControlFlow 0 572124) 572732) inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct) (=> (= (ControlFlow 0 572124) 572186) inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct))))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t10@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (and (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 2))) (= 3 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (= inline$$1_DualAttestation_publish_credential$0$$t11@0 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t11@0) (= (ControlFlow 0 572788) 572242))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon0_correct  (=> (= inline$$1_DualAttestation_publish_credential$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (and (= inline$$1_DualAttestation_publish_credential$0$$t6@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t5@0))) (= inline$$1_DualAttestation_publish_credential$0$$t7@0 (|$addr#$signer| _$t0))) (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= _$t0 _$t0))) (and (and (= _$t3 _$t3) (= inline$$1_DualAttestation_publish_credential$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_DualAttestation_publish_credential$0$$t9@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0))) (= inline$$1_DualAttestation_publish_credential$0$$t10@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0)) (and (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 2)))))))) (and (=> (= (ControlFlow 0 572066) 572788) inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct) (=> (= (ControlFlow 0 572066) 572124) inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct))))))
(let ((anon36_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= $t16 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t17 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) $t16)))) (and (= $t18 (|$addr#$signer| _$t0)) (= (ControlFlow 0 572792) 572066))) inline$$1_DualAttestation_publish_credential$0$anon0_correct))))
(let ((anon35_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 571073) 587629) anon36_Then_correct) (=> (= (ControlFlow 0 571073) 572792) anon36_Else_correct)))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Else_correct  (=> (and (and (not $abort_flag@1) (= $abort_code@3 $abort_code@2)) (and (= $1_VASP_ParentVASP_$memory@3 $1_VASP_ParentVASP_$memory@1) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 570824) 587643) anon35_Then_correct) (=> (= (ControlFlow 0 570824) 571073) anon35_Else_correct)))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct  (=> (= $abort_code@3 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1) (=> (and (= $1_VASP_ParentVASP_$memory@3 $1_VASP_ParentVASP_$memory@2) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 570778) 587643) anon35_Then_correct) (=> (= (ControlFlow 0 570778) 571073) anon35_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Then_correct  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@1)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 $abort_code@2) (= (ControlFlow 0 570838) 570778))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 570890) 570838) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Then_correct) (=> (= (ControlFlow 0 570890) 570824) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 570888) 570890)) inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then$1_correct)))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_VASP_ParentVASP_$memory@0 ($Memory_237259 (|Store__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_237259| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_VASP_publish_parent_vasp_credential$0$$t20@1))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 570814) 570838) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Then_correct) (=> (= (ControlFlow 0 570814) 570824) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (|$IsValid'u64'| 0) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t20@1 ($1_VASP_ParentVASP 0))) (and (=> (= (ControlFlow 0 570792) 570888) inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then_correct) (=> (= (ControlFlow 0 570792) 570814) inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Else_correct  (=> (not inline$$Not$0$dst@1) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= (ControlFlow 0 570772) 570778))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0 6)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 570756) 570792) inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Then_correct) (=> (= (ControlFlow 0 570756) 570772) inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_VASP_publish_parent_vasp_credential$0$$t15@0)) (= (ControlFlow 0 570720) 570756)) inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else$1_correct)))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else_correct  (=> (and (not inline$$1_VASP_publish_parent_vasp_credential$0$$t13@0) (|$IsValid'address'| inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0)) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t15@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0) (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0))) (= (ControlFlow 0 570726) 570720))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Then_correct  (=> (and inline$$1_VASP_publish_parent_vasp_credential$0$$t13@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) (= 5 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) 5)) (= 3 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)))) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= (ControlFlow 0 570942) 570778))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Else_correct  (=> (not inline$$1_VASP_publish_parent_vasp_credential$0$$t11@0) (=> (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t13@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) 5))))) (and (=> (= (ControlFlow 0 570646) 570942) inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Then_correct) (=> (= (ControlFlow 0 570646) 570726) inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Then_correct  (=> (and inline$$1_VASP_publish_parent_vasp_credential$0$$t11@0 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) (= 5 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) 1)) (= 3 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)))) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= (ControlFlow 0 571014) 570778))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Else_correct  (=> (not inline$$1_VASP_publish_parent_vasp_credential$0$$t8@0) (=> (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0 (|$addr#$signer| _$t0)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t11@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))) (and (=> (= (ControlFlow 0 570600) 571014) inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Then_correct) (=> (= (ControlFlow 0 570600) 570646) inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Then_correct  (=> inline$$1_VASP_publish_parent_vasp_credential$0$$t8@0 (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= (ControlFlow 0 571040) 570778))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct)))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon0_correct  (=> (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t6@0 (|$addr#$signer| _$t0))) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t7@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= _$t0 _$t0) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t8@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 570542) 571040) inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Then_correct) (=> (= (ControlFlow 0 570542) 570600) inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Else_correct))))))
(let ((anon34_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t13 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t14 (|$addr#$signer| _$t0))) (and (= $t15 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 571044) 570542))) inline$$1_VASP_publish_parent_vasp_credential$0$anon0_correct))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)) (and (=> (= (ControlFlow 0 569704) 587657) anon34_Then_correct) (=> (= (ControlFlow 0 569704) 571044) anon34_Else_correct))))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon9_Then_correct  (=> inline$$1_Roles_new_parent_vasp_role$0$$t9@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)) (and (= inline$$1_Roles_new_parent_vasp_role$0$$t6@0 inline$$1_Roles_new_parent_vasp_role$0$$t6@0) (= (ControlFlow 0 569698) 569704))) inline$$1_Roles_new_parent_vasp_role$0$L2_correct))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon8_Then_correct  (=> (and (and inline$$1_Roles_new_parent_vasp_role$0$$t5@0 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) (= 5 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) 1)) (= 3 inline$$1_Roles_new_parent_vasp_role$0$$t6@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)))) (and (= inline$$1_Roles_new_parent_vasp_role$0$$t6@0 inline$$1_Roles_new_parent_vasp_role$0$$t6@0) (= (ControlFlow 0 569776) 569704))) inline$$1_Roles_new_parent_vasp_role$0$L2_correct)))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon7_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 5) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 569656) 587657) anon34_Then_correct) (=> (= (ControlFlow 0 569656) 571044) anon34_Else_correct))))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon10_Else_correct  (=> (and (and (not |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_197973 (|Store__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_197973| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 569630) 569656))) inline$$1_Roles_new_parent_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon10_Then_correct  (=> (and (and |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_197973 (|Store__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 569670) 569656))) inline$$1_Roles_new_parent_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon9_Else_correct  (=> (not inline$$1_Roles_new_parent_vasp_role$0$$t9@0) (and (=> (= (ControlFlow 0 569616) 569670) inline$$1_Roles_new_parent_vasp_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 569616) 569630) inline$$1_Roles_new_parent_vasp_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon8_Else_correct  (=> (and (not inline$$1_Roles_new_parent_vasp_role$0$$t5@0) (|$IsValid'u64'| 5)) (=> (and (and (= inline$$1_Roles_new_parent_vasp_role$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 5 0) (= inline$$1_Roles_new_parent_vasp_role$0$$t8@0 173345816))) (and (=> (= 5 1) (= inline$$1_Roles_new_parent_vasp_role$0$$t8@0 186537453)) (= inline$$1_Roles_new_parent_vasp_role$0$$t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 569610) 569698) inline$$1_Roles_new_parent_vasp_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 569610) 569616) inline$$1_Roles_new_parent_vasp_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon0_correct  (=> (and (= inline$$1_Roles_new_parent_vasp_role$0$$t2@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_parent_vasp_role$0$$t3@0 (|$addr#$signer| _$t0))) (=> (and (and (= _$t0 _$t0) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_Roles_new_parent_vasp_role$0$$t4@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_parent_vasp_role$0$$t5@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))) (and (=> (= (ControlFlow 0 569544) 569776) inline$$1_Roles_new_parent_vasp_role$0$anon8_Then_correct) (=> (= (ControlFlow 0 569544) 569610) inline$$1_Roles_new_parent_vasp_role$0$anon8_Else_correct))))))
(let ((anon33_Else_correct  (=> (not false) (=> (and (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= $t11 (|$addr#$signer| _$t0))) (and (= $t12 (|$addr#$signer| _$t0)) (= (ControlFlow 0 569780) 569544))) inline$$1_Roles_new_parent_vasp_role$0$anon0_correct))))
(let ((anon33_Then_correct true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer _$t1)) (and (=> (= (ControlFlow 0 568973) 587671) anon33_Then_correct) (=> (= (ControlFlow 0 568973) 569780) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not $t8) (= (ControlFlow 0 568979) 568973)) inline$$1_DiemAccount_create_signer$0$anon0_correct)))
(let ((anon0$1_correct  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@3)) 0)) (= addr@@3 173345816)))
 :qid |AccountFreezingbpl.30369:20|
 :skolemid |1071|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@4)) 1)) (= addr@@4 186537453)))
 :qid |AccountFreezingbpl.30377:20|
 :skolemid |1072|
)))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |AccountFreezingbpl.30385:20|
 :skolemid |1073|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |AccountFreezingbpl.30389:20|
 :skolemid |1074|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@7)) 2))))))
 :qid |AccountFreezingbpl.30393:20|
 :skolemid |1075|
)))) (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |AccountFreezingbpl.30397:20|
 :skolemid |1076|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |AccountFreezingbpl.30401:20|
 :skolemid |1077|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@10)) 2)))))
 :qid |AccountFreezingbpl.30405:20|
 :skolemid |1078|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |AccountFreezingbpl.30409:20|
 :skolemid |1079|
))))) (and (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_203150| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@12)) 4))))
 :qid |AccountFreezingbpl.30413:20|
 :skolemid |1080|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_202755| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |AccountFreezingbpl.30417:20|
 :skolemid |1081|
))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_202755| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |AccountFreezingbpl.30421:20|
 :skolemid |1082|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_202755| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (not (= (|l#Vec_151569| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_202755| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |AccountFreezingbpl.30425:20|
 :skolemid |1083|
)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198160| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198160| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198253| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_198339| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198412| $1_DiemSystem_CapabilityHolder_$memory) 173345816))))))) (and (and (and (and (let (($range_0 ($Range 0 (|l#Vec_151781| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_198339| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_198339| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_198339| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i1)))) 3))))
 :qid |AccountFreezingbpl.30445:151|
 :skolemid |1084|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198483| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_217809| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_217809| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |AccountFreezingbpl.30454:104|
 :skolemid |1085|
))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@0 Int) (mint_cap_owner2@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@0) (=> (|$IsValid'address'| mint_cap_owner2@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_217873| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_217873| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner2@@0)) (= mint_cap_owner1@@0 mint_cap_owner2@@0))))
 :qid |AccountFreezingbpl.30458:104|
 :skolemid |1086|
))))) (and (and (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_217809| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |AccountFreezingbpl.30462:20|
 :skolemid |1087|
)) (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_217873| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |AccountFreezingbpl.30466:20|
 :skolemid |1088|
))) (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_223969| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountFreezingbpl.30470:20|
 :skolemid |1089|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224050| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountFreezingbpl.30474:20|
 :skolemid |1090|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198651| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198722| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198890| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_237195| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |AccountFreezingbpl.30498:20|
 :skolemid |1091|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198961| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199058| $1_DualAttestation_Limit_$memory) 173345816))))))) (=> (and (and (and (and (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_203488| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |AccountFreezingbpl.30510:20|
 :skolemid |1092|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199142| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199226| $1_ChainId_ChainId_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199297| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199297| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@20) (or (= (|l#Vec_151608| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0) (and (not (= (|l#Vec_151608| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0)) (= addr@@20 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0)))))))
 :qid |AccountFreezingbpl.30538:20|
 :skolemid |1093|
))))) (and (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@21) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@21) (= (|l#Vec_151647| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (and (not (= (|l#Vec_151647| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (= addr@@21 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)))))))
 :qid |AccountFreezingbpl.30542:20|
 :skolemid |1094|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199611| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@22)))
 :qid |AccountFreezingbpl.30554:20|
 :skolemid |1095|
)))) (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@23)  (and (= addr@@23 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@23))))
 :qid |AccountFreezingbpl.30558:20|
 :skolemid |1096|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_199611| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@24)  (and (= addr@@24 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@24))))
 :qid |AccountFreezingbpl.30562:20|
 :skolemid |1097|
))) (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_235803| $1_VASPDomain_VASPDomainManager_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@25)) 1))))
 :qid |AccountFreezingbpl.30566:20|
 :skolemid |1098|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) addr@@26)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@26)) 5))))
 :qid |AccountFreezingbpl.30570:20|
 :skolemid |1099|
)))))) (and (and (and (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@27)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@27)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@27)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@27)) 2)))))
 :qid |AccountFreezingbpl.30574:20|
 :skolemid |1100|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (= (|Select__T@[Int]Bool_| (|domain#$Memory_244160| $1_DesignatedDealer_Dealer_$memory) addr@@28)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@28)) 2))))
 :qid |AccountFreezingbpl.30578:20|
 :skolemid |1101|
))) (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (= (|Select__T@[Int]Bool_| (|domain#$Memory_203488| $1_DualAttestation_Credential_$memory) addr@@29)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@29)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@29)) 5)))))
 :qid |AccountFreezingbpl.30582:20|
 :skolemid |1102|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) addr@@30)))
 :qid |AccountFreezingbpl.30586:20|
 :skolemid |1103|
)))) (and (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) addr@@31)))
 :qid |AccountFreezingbpl.30590:20|
 :skolemid |1104|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@32)))
 :qid |AccountFreezingbpl.30594:20|
 :skolemid |1105|
))) (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) addr@@33)))
 :qid |AccountFreezingbpl.30598:20|
 :skolemid |1106|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (= (|Select__T@[Int]Bool_| (|domain#$Memory_198160| $1_SlidingNonce_SlidingNonce_$memory) addr@@34)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@34)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@34)) 1)))))
 :qid |AccountFreezingbpl.30602:20|
 :skolemid |1107|
))))) (and (and (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (= (|Select__T@[Int]Bool_| (|domain#$Memory_202755| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@35)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@35)) 3))))
 :qid |AccountFreezingbpl.30606:20|
 :skolemid |1108|
)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_203150| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@36)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@36)) 4))))
 :qid |AccountFreezingbpl.30610:20|
 :skolemid |1109|
))) (and (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (= (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) addr@@37)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@37)) 5))))
 :qid |AccountFreezingbpl.30614:20|
 :skolemid |1110|
)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (= (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) addr@@38)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) addr@@38)) 6))))
 :qid |AccountFreezingbpl.30618:20|
 :skolemid |1111|
)))) (and (and (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262630| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@39) (or (|Select__T@[Int]Bool_| (|domain#$Memory_237259| $1_VASP_ParentVASP_$memory) addr@@39) (|Select__T@[Int]Bool_| (|domain#$Memory_237195| $1_VASP_ChildVASP_$memory) addr@@39))))
 :qid |AccountFreezingbpl.30622:20|
 :skolemid |1112|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199682| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_199766| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_197844| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))))))) (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))) (and (and (and (|$IsValid'vec'u8''| _$t3) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |AccountFreezingbpl.30665:20|
 :skolemid |1113|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_197291| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |AccountFreezingbpl.30669:20|
 :skolemid |1114|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1) 10000000000))))
 :qid |AccountFreezingbpl.30673:20|
 :skolemid |1115|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_198567| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1))
)))) (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@2) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2) 10000000000))))
 :qid |AccountFreezingbpl.30677:20|
 :skolemid |1116|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@3)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@3) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@3)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@3) 10000000000))))
 :qid |AccountFreezingbpl.30681:20|
 :skolemid |1117|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_198806| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) $a_0@@4)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@4) (and (and (let (($range_1 ($Range 0 (|l#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@122 $i_2))
(<= (|l#Vec_30625| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)) i@@122))) 63)))
 :qid |AccountFreezingbpl.30686:140|
 :skolemid |1118|
))) (let (($range_3 ($Range 0 (|l#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@123 $i_4))
(let (($range_5 ($Range (+ i@@123 1) (|l#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@39 $i_6))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)) i@@123)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)) j@@39))))))
 :qid |AccountFreezingbpl.30688:98|
 :skolemid |1119|
)))))
 :qid |AccountFreezingbpl.30687:202|
 :skolemid |1120|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))
(forall (($i_8 Int) ) (!  (=> (InRangeVec_137521 $range_7 $i_8) (let (($elem (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| $range_7) $i_8)))
(<= (|l#Vec_30625| (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |AccountFreezingbpl.30689:229|
 :skolemid |1121|
))))))
 :qid |AccountFreezingbpl.30685:20|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_235739| $1_VASPDomain_VASPDomains_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_237195| $1_VASP_ChildVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@5))
 :qid |AccountFreezingbpl.30693:20|
 :skolemid |1123|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_237195| $1_VASP_ChildVASP_$memory) $a_0@@5))
)))))) (and (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_237259| $1_VASP_ParentVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@6))
 :qid |AccountFreezingbpl.30697:20|
 :skolemid |1124|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_237259| $1_VASP_ParentVASP_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_203488| $1_DualAttestation_Credential_$memory) $a_0@@7)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@7))
 :qid |AccountFreezingbpl.30701:20|
 :skolemid |1125|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_203488| $1_DualAttestation_Credential_$memory) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@8))
 :qid |AccountFreezingbpl.30705:20|
 :skolemid |1126|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_199368| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) $a_0@@9)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@9) (and (<= (|l#Vec_151647| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1) (<= (|l#Vec_151608| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1))))
 :qid |AccountFreezingbpl.30709:20|
 :skolemid |1127|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246687| $1_DiemAccount_DiemAccount_$memory) $a_0@@9))
)))) (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@10)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@10))
 :qid |AccountFreezingbpl.30713:20|
 :skolemid |1128|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_199540| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@11))
 :qid |AccountFreezingbpl.30717:20|
 :skolemid |1129|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_203603| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@11))
))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@12)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@12))
 :qid |AccountFreezingbpl.30721:20|
 :skolemid |1130|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@13)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@13))
 :qid |AccountFreezingbpl.30725:20|
 :skolemid |1131|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_203663| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@13))
))))) (and (and (and (= $t6 (|$addr#$signer| _$t0)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2))) (and (and (= _$t3 _$t3) (= _$t4 _$t4)) (and (= $t7 (|$addr#$signer| _$t0)) (= $t8  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_197973| $1_Roles_RoleId_$memory) $t7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_197973| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))))))) (and (=> (= (ControlFlow 0 568935) 587743) anon32_Then_correct) (=> (= (ControlFlow 0 568935) 568979) anon32_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_151483| stream@@4) 0) (forall ((v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| stream@@4) v@@63) 0)
 :qid |AccountFreezingbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountFreezingbpl.3311:13|
 :skolemid |119|
))) (= (ControlFlow 0 566785) 568935)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 786723) 566785) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_189928 0)) ((($Memory_189928 (|domain#$Memory_189928| |T@[Int]Bool|) (|contents#$Memory_189928| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_153493 0)) (((Vec_153493 (|v#Vec_153493| |T@[Int]#0|) (|l#Vec_153493| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_199682 0)) ((($Memory_199682 (|domain#$Memory_199682| |T@[Int]Bool|) (|contents#$Memory_199682| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_199611 0)) ((($Memory_199611 (|domain#$Memory_199611| |T@[Int]Bool|) (|contents#$Memory_199611| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_199368 0)) ((($Memory_199368 (|domain#$Memory_199368| |T@[Int]Bool|) (|contents#$Memory_199368| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_199297 0)) ((($Memory_199297 (|domain#$Memory_199297| |T@[Int]Bool|) (|contents#$Memory_199297| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_199226 0)) ((($Memory_199226 (|domain#$Memory_199226| |T@[Int]Bool|) (|contents#$Memory_199226| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_244160 0)) ((($Memory_244160 (|domain#$Memory_244160| |T@[Int]Bool|) (|contents#$Memory_244160| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_199058 0)) ((($Memory_199058 (|domain#$Memory_199058| |T@[Int]Bool|) (|contents#$Memory_199058| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_237259 0)) ((($Memory_237259 (|domain#$Memory_237259| |T@[Int]Bool|) (|contents#$Memory_237259| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_237195 0)) ((($Memory_237195 (|domain#$Memory_237195| |T@[Int]Bool|) (|contents#$Memory_237195| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_235803 0)) ((($Memory_235803 (|domain#$Memory_235803| |T@[Int]Bool|) (|contents#$Memory_235803| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_177709 0)) (((Vec_177709 (|v#Vec_177709| |T@[Int]$1_XDX_XDX|) (|l#Vec_177709| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_180389 0)) (((Vec_180389 (|v#Vec_180389| |T@[Int]$1_XUS_XUS|) (|l#Vec_180389| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_232243 0)) ((($Memory_232243 (|domain#$Memory_232243| |T@[Int]Bool|) (|contents#$Memory_232243| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_231956 0)) ((($Memory_231956 (|domain#$Memory_231956| |T@[Int]Bool|) (|contents#$Memory_231956| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_198890 0)) ((($Memory_198890 (|domain#$Memory_198890| |T@[Int]Bool|) (|contents#$Memory_198890| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_198651 0)) ((($Memory_198651 (|domain#$Memory_198651| |T@[Int]Bool|) (|contents#$Memory_198651| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_199540 0)) ((($Memory_199540 (|domain#$Memory_199540| |T@[Int]Bool|) (|contents#$Memory_199540| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_217937 0)) ((($Memory_217937 (|domain#$Memory_217937| |T@[Int]Bool|) (|contents#$Memory_217937| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_217873 0)) ((($Memory_217873 (|domain#$Memory_217873| |T@[Int]Bool|) (|contents#$Memory_217873| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_217809 0)) ((($Memory_217809 (|domain#$Memory_217809| |T@[Int]Bool|) (|contents#$Memory_217809| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_218304 0)) ((($Memory_218304 (|domain#$Memory_218304| |T@[Int]Bool|) (|contents#$Memory_218304| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_218217 0)) ((($Memory_218217 (|domain#$Memory_218217| |T@[Int]Bool|) (|contents#$Memory_218217| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_256753 0)) ((($Memory_256753 (|domain#$Memory_256753| |T@[Int]Bool|) (|contents#$Memory_256753| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_224131 0)) ((($Memory_224131 (|domain#$Memory_224131| |T@[Int]Bool|) (|contents#$Memory_224131| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_203663 0)) ((($Memory_203663 (|domain#$Memory_203663| |T@[Int]Bool|) (|contents#$Memory_203663| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_224050 0)) ((($Memory_224050 (|domain#$Memory_224050| |T@[Int]Bool|) (|contents#$Memory_224050| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_198722 0)) ((($Memory_198722 (|domain#$Memory_198722| |T@[Int]Bool|) (|contents#$Memory_198722| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_203603 0)) ((($Memory_203603 (|domain#$Memory_203603| |T@[Int]Bool|) (|contents#$Memory_203603| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_223969 0)) ((($Memory_223969 (|domain#$Memory_223969| |T@[Int]Bool|) (|contents#$Memory_223969| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_198961 0)) ((($Memory_198961 (|domain#$Memory_198961| |T@[Int]Bool|) (|contents#$Memory_198961| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_213403 0)) ((($Memory_213403 (|domain#$Memory_213403| |T@[Int]Bool|) (|contents#$Memory_213403| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_213316 0)) ((($Memory_213316 (|domain#$Memory_213316| |T@[Int]Bool|) (|contents#$Memory_213316| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_213229 0)) ((($Memory_213229 (|domain#$Memory_213229| |T@[Int]Bool|) (|contents#$Memory_213229| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_213142 0)) ((($Memory_213142 (|domain#$Memory_213142| |T@[Int]Bool|) (|contents#$Memory_213142| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_213055 0)) ((($Memory_213055 (|domain#$Memory_213055| |T@[Int]Bool|) (|contents#$Memory_213055| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_212968 0)) ((($Memory_212968 (|domain#$Memory_212968| |T@[Int]Bool|) (|contents#$Memory_212968| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_198412 0)) ((($Memory_198412 (|domain#$Memory_198412| |T@[Int]Bool|) (|contents#$Memory_198412| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_211895 0)) ((($Memory_211895 (|domain#$Memory_211895| |T@[Int]Bool|) (|contents#$Memory_211895| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_198253 0)) ((($Memory_198253 (|domain#$Memory_198253| |T@[Int]Bool|) (|contents#$Memory_198253| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_197844 0)) ((($Memory_197844 (|domain#$Memory_197844| |T@[Int]Bool|) (|contents#$Memory_197844| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_198160 0)) ((($Memory_198160 (|domain#$Memory_198160| |T@[Int]Bool|) (|contents#$Memory_198160| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_151647 0)) (((Vec_151647 (|v#Vec_151647| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_151647| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_151647) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_151608 0)) (((Vec_151608 (|v#Vec_151608| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_151608| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_151608) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_262630 0)) ((($Memory_262630 (|domain#$Memory_262630| |T@[Int]Bool|) (|contents#$Memory_262630| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_151608) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_30625 0)) (((Vec_30625 (|v#Vec_30625| |T@[Int]Int|) (|l#Vec_30625| Int) ) ) ))
(declare-sort |T@[Int]Vec_30625| 0)
(declare-datatypes ((T@Vec_151838 0)) (((Vec_151838 (|v#Vec_151838| |T@[Int]Vec_30625|) (|l#Vec_151838| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_151838) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_199142 0)) ((($Memory_199142 (|domain#$Memory_199142| |T@[Int]Bool|) (|contents#$Memory_199142| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_151838) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_198483 0)) ((($Memory_198483 (|domain#$Memory_198483| |T@[Int]Bool|) (|contents#$Memory_198483| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30625) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30625) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_199766 0)) ((($Memory_199766 (|domain#$Memory_199766| |T@[Int]Bool|) (|contents#$Memory_199766| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_30625) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_211762 0)) ((($Memory_211762 (|domain#$Memory_211762| |T@[Int]Bool|) (|contents#$Memory_211762| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_30625) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_246687 0)) ((($Memory_246687 (|domain#$Memory_246687| |T@[Int]Bool|) (|contents#$Memory_246687| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_30625) (|$base_url#$1_DualAttestation_Credential| T@Vec_30625) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_30625) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_203488 0)) ((($Memory_203488 (|domain#$Memory_203488| |T@[Int]Bool|) (|contents#$Memory_203488| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_152265 0)) (((Vec_152265 (|v#Vec_152265| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_152265| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_152265) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_235739 0)) ((($Memory_235739 (|domain#$Memory_235739| |T@[Int]Bool|) (|contents#$Memory_235739| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_152123 0)) (((Vec_152123 (|v#Vec_152123| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_152123| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_152123) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_224615 0)) ((($Memory_224615 (|domain#$Memory_224615| |T@[Int]Bool|) (|contents#$Memory_224615| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_152084 0)) (((Vec_152084 (|v#Vec_152084| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_152084| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_152084) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_224498 0)) ((($Memory_224498 (|domain#$Memory_224498| |T@[Int]Bool|) (|contents#$Memory_224498| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_152045 0)) (((Vec_152045 (|v#Vec_152045| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_152045| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_152045) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_224381 0)) ((($Memory_224381 (|domain#$Memory_224381| |T@[Int]Bool|) (|contents#$Memory_224381| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_30625) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_217508 0)) ((($Memory_217508 (|domain#$Memory_217508| |T@[Int]Bool|) (|contents#$Memory_217508| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_30625) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_198806 0)) ((($Memory_198806 (|domain#$Memory_198806| |T@[Int]Bool|) (|contents#$Memory_198806| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_30625) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_198567 0)) ((($Memory_198567 (|domain#$Memory_198567| |T@[Int]Bool|) (|contents#$Memory_198567| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_30625) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_30625) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_151569 0)) (((Vec_151569 (|v#Vec_151569| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_151569| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_151569) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_151781 0)) (((Vec_151781 (|v#Vec_151781| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_151781| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_151781) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_198339 0)) ((($Memory_198339 (|domain#$Memory_198339| |T@[Int]Bool|) (|contents#$Memory_198339| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_202755 0)) ((($Memory_202755 (|domain#$Memory_202755| |T@[Int]Bool|) (|contents#$Memory_202755| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_30625) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_203150 0)) ((($Memory_203150 (|domain#$Memory_203150| |T@[Int]Bool|) (|contents#$Memory_203150| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_197973 0)) ((($Memory_197973 (|domain#$Memory_197973| |T@[Int]Bool|) (|contents#$Memory_197973| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_197291 0)) ((($Memory_197291 (|domain#$Memory_197291| |T@[Int]Bool|) (|contents#$Memory_197291| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_30625) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_30625) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_30625) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_30625) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_30625) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_30625) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_30625) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_30625) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30625) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_30625) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_151483 0)) (((Multiset_151483 (|v#Multiset_151483| |T@[$EventRep]Int|) (|l#Multiset_151483| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_151483| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_151483|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_360449 0)) ((($Mutation_360449 (|l#$Mutation_360449| T@$Location) (|p#$Mutation_360449| T@Vec_30625) (|v#$Mutation_360449| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_360404 0)) ((($Mutation_360404 (|l#$Mutation_360404| T@$Location) (|p#$Mutation_360404| T@Vec_30625) (|v#$Mutation_360404| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_248057 0)) ((($Mutation_248057 (|l#$Mutation_248057| T@$Location) (|p#$Mutation_248057| T@Vec_30625) (|v#$Mutation_248057| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_248014 0)) ((($Mutation_248014 (|l#$Mutation_248014| T@$Location) (|p#$Mutation_248014| T@Vec_30625) (|v#$Mutation_248014| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_237578 0)) ((($Mutation_237578 (|l#$Mutation_237578| T@$Location) (|p#$Mutation_237578| T@Vec_30625) (|v#$Mutation_237578| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_46432 0)) ((($Mutation_46432 (|l#$Mutation_46432| T@$Location) (|p#$Mutation_46432| T@Vec_30625) (|v#$Mutation_46432| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_230109 0)) ((($Mutation_230109 (|l#$Mutation_230109| T@$Location) (|p#$Mutation_230109| T@Vec_30625) (|v#$Mutation_230109| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_216080 0)) ((($Mutation_216080 (|l#$Mutation_216080| T@$Location) (|p#$Mutation_216080| T@Vec_30625) (|v#$Mutation_216080| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_197786 0)) ((($Mutation_197786 (|l#$Mutation_197786| T@$Location) (|p#$Mutation_197786| T@Vec_30625) (|v#$Mutation_197786| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_190559 0)) ((($Mutation_190559 (|l#$Mutation_190559| T@$Location) (|p#$Mutation_190559| T@Vec_30625) (|v#$Mutation_190559| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_30625) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_184816 0)) ((($Mutation_184816 (|l#$Mutation_184816| T@$Location) (|p#$Mutation_184816| T@Vec_30625) (|v#$Mutation_184816| T@Vec_30625) ) ) ))
(declare-datatypes ((T@$Mutation_183728 0)) ((($Mutation_183728 (|l#$Mutation_183728| T@$Location) (|p#$Mutation_183728| T@Vec_30625) (|v#$Mutation_183728| T@Vec_151838) ) ) ))
(declare-datatypes ((T@$Mutation_182019 0)) ((($Mutation_182019 (|l#$Mutation_182019| T@$Location) (|p#$Mutation_182019| T@Vec_30625) (|v#$Mutation_182019| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_181032 0)) ((($Mutation_181032 (|l#$Mutation_181032| T@$Location) (|p#$Mutation_181032| T@Vec_30625) (|v#$Mutation_181032| T@Vec_180389) ) ) ))
(declare-datatypes ((T@$Mutation_179339 0)) ((($Mutation_179339 (|l#$Mutation_179339| T@$Location) (|p#$Mutation_179339| T@Vec_30625) (|v#$Mutation_179339| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_178352 0)) ((($Mutation_178352 (|l#$Mutation_178352| T@$Location) (|p#$Mutation_178352| T@Vec_30625) (|v#$Mutation_178352| T@Vec_177709) ) ) ))
(declare-datatypes ((T@$Mutation_176659 0)) ((($Mutation_176659 (|l#$Mutation_176659| T@$Location) (|p#$Mutation_176659| T@Vec_30625) (|v#$Mutation_176659| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_175672 0)) ((($Mutation_175672 (|l#$Mutation_175672| T@$Location) (|p#$Mutation_175672| T@Vec_30625) (|v#$Mutation_175672| T@Vec_151569) ) ) ))
(declare-datatypes ((T@$Mutation_174017 0)) ((($Mutation_174017 (|l#$Mutation_174017| T@$Location) (|p#$Mutation_174017| T@Vec_30625) (|v#$Mutation_174017| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_173030 0)) ((($Mutation_173030 (|l#$Mutation_173030| T@$Location) (|p#$Mutation_173030| T@Vec_30625) (|v#$Mutation_173030| T@Vec_152265) ) ) ))
(declare-datatypes ((T@$Mutation_171352 0)) ((($Mutation_171352 (|l#$Mutation_171352| T@$Location) (|p#$Mutation_171352| T@Vec_30625) (|v#$Mutation_171352| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_170365 0)) ((($Mutation_170365 (|l#$Mutation_170365| T@$Location) (|p#$Mutation_170365| T@Vec_30625) (|v#$Mutation_170365| T@Vec_152045) ) ) ))
(declare-datatypes ((T@$Mutation_168656 0)) ((($Mutation_168656 (|l#$Mutation_168656| T@$Location) (|p#$Mutation_168656| T@Vec_30625) (|v#$Mutation_168656| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_167669 0)) ((($Mutation_167669 (|l#$Mutation_167669| T@$Location) (|p#$Mutation_167669| T@Vec_30625) (|v#$Mutation_167669| T@Vec_152084) ) ) ))
(declare-datatypes ((T@$Mutation_165960 0)) ((($Mutation_165960 (|l#$Mutation_165960| T@$Location) (|p#$Mutation_165960| T@Vec_30625) (|v#$Mutation_165960| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_164973 0)) ((($Mutation_164973 (|l#$Mutation_164973| T@$Location) (|p#$Mutation_164973| T@Vec_30625) (|v#$Mutation_164973| T@Vec_152123) ) ) ))
(declare-datatypes ((T@$Mutation_163264 0)) ((($Mutation_163264 (|l#$Mutation_163264| T@$Location) (|p#$Mutation_163264| T@Vec_30625) (|v#$Mutation_163264| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_162277 0)) ((($Mutation_162277 (|l#$Mutation_162277| T@$Location) (|p#$Mutation_162277| T@Vec_30625) (|v#$Mutation_162277| T@Vec_151781) ) ) ))
(declare-datatypes ((T@$Mutation_160477 0)) ((($Mutation_160477 (|l#$Mutation_160477| T@$Location) (|p#$Mutation_160477| T@Vec_30625) (|v#$Mutation_160477| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_159490 0)) ((($Mutation_159490 (|l#$Mutation_159490| T@$Location) (|p#$Mutation_159490| T@Vec_30625) (|v#$Mutation_159490| T@Vec_151647) ) ) ))
(declare-datatypes ((T@$Mutation_157825 0)) ((($Mutation_157825 (|l#$Mutation_157825| T@$Location) (|p#$Mutation_157825| T@Vec_30625) (|v#$Mutation_157825| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_156838 0)) ((($Mutation_156838 (|l#$Mutation_156838| T@$Location) (|p#$Mutation_156838| T@Vec_30625) (|v#$Mutation_156838| T@Vec_151608) ) ) ))
(declare-datatypes ((T@$Mutation_155125 0)) ((($Mutation_155125 (|l#$Mutation_155125| T@$Location) (|p#$Mutation_155125| T@Vec_30625) (|v#$Mutation_155125| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_154138 0)) ((($Mutation_154138 (|l#$Mutation_154138| T@$Location) (|p#$Mutation_154138| T@Vec_30625) (|v#$Mutation_154138| T@Vec_153493) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_153493 T@Vec_153493) Bool)
(declare-fun InRangeVec_136114 (T@Vec_153493 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_153493) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_153493 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_151608 T@Vec_151608) Bool)
(declare-fun InRangeVec_136315 (T@Vec_151608 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_151608) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_151608 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_151647 T@Vec_151647) Bool)
(declare-fun InRangeVec_136516 (T@Vec_151647 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_151647) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_151647 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_151781 T@Vec_151781) Bool)
(declare-fun InRangeVec_136717 (T@Vec_151781 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_30625 T@Vec_30625) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_151781) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_151781 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_152123 T@Vec_152123) Bool)
(declare-fun InRangeVec_136918 (T@Vec_152123 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_152123) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_152123 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_152084 T@Vec_152084) Bool)
(declare-fun InRangeVec_137119 (T@Vec_152084 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_152084) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_152084 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_152045 T@Vec_152045) Bool)
(declare-fun InRangeVec_137320 (T@Vec_152045 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_152045) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_152045 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_152265 T@Vec_152265) Bool)
(declare-fun InRangeVec_137521 (T@Vec_152265 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_152265) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_152265 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_151569 T@Vec_151569) Bool)
(declare-fun InRangeVec_137722 (T@Vec_151569 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_151569) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_151569 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_177709 T@Vec_177709) Bool)
(declare-fun InRangeVec_137923 (T@Vec_177709 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_177709) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_177709 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_180389 T@Vec_180389) Bool)
(declare-fun InRangeVec_138124 (T@Vec_180389 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_180389) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_180389 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_151838 T@Vec_151838) Bool)
(declare-fun InRangeVec_183151 (T@Vec_151838 Int) Bool)
(declare-fun |Select__T@[Int]Vec_30625_| (|T@[Int]Vec_30625| Int) T@Vec_30625)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_151838) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_30625) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_151838 T@Vec_30625) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_30625 T@Vec_30625) Bool)
(declare-fun InRangeVec_16728 (T@Vec_30625 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_30625) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_30625 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_30625 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_30625) T@Vec_30625)
(declare-fun $1_Hash_sha3 (T@Vec_30625) T@Vec_30625)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_30625) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_30625 T@Vec_30625 T@Vec_30625) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_151483_| (|T@[$1_Event_EventHandle]Multiset_151483| T@$1_Event_EventHandle) T@Multiset_151483)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_Balance'#0''| (|T@$1_DiemAccount_Balance'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_30625 (T@Vec_30625 Int) Int)
(declare-fun IndexOfVec_151569 (T@Vec_151569 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_151608 (T@Vec_151608 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_151647 (T@Vec_151647 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_151781 (T@Vec_151781 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_151838 (T@Vec_151838 T@Vec_30625) Int)
(declare-fun IndexOfVec_152045 (T@Vec_152045 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_152084 (T@Vec_152084 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_152123 (T@Vec_152123 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_152265 (T@Vec_152265 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_153493 (T@Vec_153493 |T@#0|) Int)
(declare-fun IndexOfVec_177709 (T@Vec_177709 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_180389 (T@Vec_180389 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_151483| |T@[$1_Event_EventHandle]Multiset_151483|) |T@[$1_Event_EventHandle]Multiset_151483|)
(declare-fun |lambda#42| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#28| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#30| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#31| (Int Int |T@[Int]$1_XDX_XDX| Int Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#34| (Int Int |T@[Int]$1_XUS_XUS| Int Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_30625| |T@[Int]Vec_30625| Int T@Vec_30625) |T@[Int]Vec_30625|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_30625| Int Int T@Vec_30625) |T@[Int]Vec_30625|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_30625| |T@[Int]Vec_30625| Int T@Vec_30625) |T@[Int]Vec_30625|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountFreezingbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountFreezingbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountFreezingbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountFreezingbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountFreezingbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountFreezingbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_153493) (v2 T@Vec_153493) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_153493| v1) (|l#Vec_153493| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_136114 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_153493| v2) i@@0)))
 :qid |AccountFreezingbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountFreezingbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_153493) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_153493| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_136114 v@@4 i@@1) true)
 :qid |AccountFreezingbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountFreezingbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_153493) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_136114 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@5) i@@3) e))
 :qid |AccountFreezingbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_136114 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@5) j) e)))
 :qid |AccountFreezingbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountFreezingbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_151608) (v2@@0 T@Vec_151608) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_151608| v1@@0) (|l#Vec_151608| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_136315 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v2@@0) i@@4)))
 :qid |AccountFreezingbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountFreezingbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_151608) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_151608| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_136315 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@6) i@@5)))
 :qid |AccountFreezingbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountFreezingbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_151608) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_136315 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@7) i@@7) e@@0))
 :qid |AccountFreezingbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_136315 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@7) j@@0) e@@0)))
 :qid |AccountFreezingbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountFreezingbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_151647) (v2@@1 T@Vec_151647) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_151647| v1@@1) (|l#Vec_151647| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_136516 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v2@@1) i@@8)))
 :qid |AccountFreezingbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountFreezingbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_151647) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_151647| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_136516 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@8) i@@9)))
 :qid |AccountFreezingbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountFreezingbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_151647) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_136516 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@9) i@@11) e@@1))
 :qid |AccountFreezingbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_136516 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@9) j@@1) e@@1)))
 :qid |AccountFreezingbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountFreezingbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_151781) (v2@@2 T@Vec_151781) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_151781| v1@@2) (|l#Vec_151781| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_136717 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v2@@2) i@@12)))))
 :qid |AccountFreezingbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountFreezingbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_151781) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_151781| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_136717 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@10) i@@13)))
 :qid |AccountFreezingbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountFreezingbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_151781) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_136717 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |AccountFreezingbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_136717 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |AccountFreezingbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountFreezingbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_152123) (v2@@3 T@Vec_152123) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_152123| v1@@3) (|l#Vec_152123| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_136918 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v2@@3) i@@16)))))
 :qid |AccountFreezingbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountFreezingbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_152123) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_152123| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_136918 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@12) i@@17)))
 :qid |AccountFreezingbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountFreezingbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_152123) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_136918 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |AccountFreezingbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_136918 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |AccountFreezingbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountFreezingbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_152084) (v2@@4 T@Vec_152084) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_152084| v1@@4) (|l#Vec_152084| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_137119 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v2@@4) i@@20)))))
 :qid |AccountFreezingbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountFreezingbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_152084) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_152084| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_137119 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@14) i@@21)))
 :qid |AccountFreezingbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountFreezingbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_152084) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_137119 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |AccountFreezingbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_137119 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |AccountFreezingbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountFreezingbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_152045) (v2@@5 T@Vec_152045) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_152045| v1@@5) (|l#Vec_152045| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_137320 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v2@@5) i@@24)))))
 :qid |AccountFreezingbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountFreezingbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_152045) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_152045| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_137320 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@16) i@@25)))
 :qid |AccountFreezingbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountFreezingbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_152045) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_137320 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |AccountFreezingbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_137320 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |AccountFreezingbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountFreezingbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_152265) (v2@@6 T@Vec_152265) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_152265| v1@@6) (|l#Vec_152265| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_137521 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v2@@6) i@@28))))
 :qid |AccountFreezingbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountFreezingbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_152265) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_152265| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_137521 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@18) i@@29)))
 :qid |AccountFreezingbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountFreezingbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_152265) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_137521 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |AccountFreezingbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_137521 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |AccountFreezingbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountFreezingbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_151569) (v2@@7 T@Vec_151569) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_151569| v1@@7) (|l#Vec_151569| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_137722 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v2@@7) i@@32)))))
 :qid |AccountFreezingbpl.2063:13|
 :skolemid |73|
))))
 :qid |AccountFreezingbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_151569) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_151569| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_137722 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@20) i@@33)))
 :qid |AccountFreezingbpl.2069:13|
 :skolemid |75|
))))
 :qid |AccountFreezingbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_151569) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_137722 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |AccountFreezingbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_137722 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |AccountFreezingbpl.2082:17|
 :skolemid |78|
)))))
 :qid |AccountFreezingbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_177709) (v2@@8 T@Vec_177709) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_177709| v1@@8) (|l#Vec_177709| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_137923 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v2@@8) i@@36)))
 :qid |AccountFreezingbpl.2244:13|
 :skolemid |80|
))))
 :qid |AccountFreezingbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_177709) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_177709| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_137923 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@22) i@@37)))
 :qid |AccountFreezingbpl.2250:13|
 :skolemid |82|
))))
 :qid |AccountFreezingbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_177709) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_137923 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@23) i@@39) e@@8))
 :qid |AccountFreezingbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_137923 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@23) j@@8) e@@8)))
 :qid |AccountFreezingbpl.2263:17|
 :skolemid |85|
)))))
 :qid |AccountFreezingbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_180389) (v2@@9 T@Vec_180389) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_180389| v1@@9) (|l#Vec_180389| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_138124 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v2@@9) i@@40)))
 :qid |AccountFreezingbpl.2425:13|
 :skolemid |87|
))))
 :qid |AccountFreezingbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_180389) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_180389| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_138124 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@24) i@@41)))
 :qid |AccountFreezingbpl.2431:13|
 :skolemid |89|
))))
 :qid |AccountFreezingbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_180389) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_138124 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@25) i@@43) e@@9))
 :qid |AccountFreezingbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_138124 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@25) j@@9) e@@9)))
 :qid |AccountFreezingbpl.2444:17|
 :skolemid |92|
)))))
 :qid |AccountFreezingbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_151838) (v2@@10 T@Vec_151838) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_151838| v1@@10) (|l#Vec_151838| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_183151 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v1@@10) i@@44) (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v2@@10) i@@44)))
 :qid |AccountFreezingbpl.2606:13|
 :skolemid |94|
))))
 :qid |AccountFreezingbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_151838) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_151838| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_183151 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@26) i@@45)))
 :qid |AccountFreezingbpl.2612:13|
 :skolemid |96|
))))
 :qid |AccountFreezingbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_151838) (e@@10 T@Vec_30625) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_183151 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@27) i@@47) e@@10))
 :qid |AccountFreezingbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_183151 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@27) j@@10) e@@10)))
 :qid |AccountFreezingbpl.2625:17|
 :skolemid |99|
)))))
 :qid |AccountFreezingbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_30625) (v2@@11 T@Vec_30625) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_30625| v1@@11) (|l#Vec_30625| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_30625| v2@@11) i@@48)))
 :qid |AccountFreezingbpl.2787:13|
 :skolemid |101|
))))
 :qid |AccountFreezingbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_30625) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_30625| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_30625| v@@28) i@@49)))
 :qid |AccountFreezingbpl.2793:13|
 :skolemid |103|
))))
 :qid |AccountFreezingbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_30625) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@29) i@@51) e@@11))
 :qid |AccountFreezingbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@29) j@@11) e@@11)))
 :qid |AccountFreezingbpl.2806:17|
 :skolemid |106|
)))))
 :qid |AccountFreezingbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_30625) (v2@@12 T@Vec_30625) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_30625| v1@@12) (|l#Vec_30625| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_30625| v2@@12) i@@52)))
 :qid |AccountFreezingbpl.2968:13|
 :skolemid |108|
))))
 :qid |AccountFreezingbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_30625) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_30625| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_30625| v@@30) i@@53)))
 :qid |AccountFreezingbpl.2974:13|
 :skolemid |110|
))))
 :qid |AccountFreezingbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_30625) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@31) i@@55) e@@12))
 :qid |AccountFreezingbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@31) j@@12) e@@12)))
 :qid |AccountFreezingbpl.2987:17|
 :skolemid |113|
)))))
 :qid |AccountFreezingbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_30625) (v2@@13 T@Vec_30625) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |AccountFreezingbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_30625) (v2@@14 T@Vec_30625) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |AccountFreezingbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_30625) (k2 T@Vec_30625) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountFreezingbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_30625) (s2 T@Vec_30625) (k1@@0 T@Vec_30625) (k2@@0 T@Vec_30625) (m1 T@Vec_30625) (m2 T@Vec_30625) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountFreezingbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_151483| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_151483| stream) v@@32) 0)
 :qid |AccountFreezingbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountFreezingbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountFreezingbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |AccountFreezingbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountFreezingbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |AccountFreezingbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountFreezingbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |AccountFreezingbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountFreezingbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |AccountFreezingbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountFreezingbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |AccountFreezingbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountFreezingbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |AccountFreezingbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountFreezingbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |AccountFreezingbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountFreezingbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |AccountFreezingbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountFreezingbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |AccountFreezingbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountFreezingbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |AccountFreezingbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountFreezingbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |AccountFreezingbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountFreezingbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |AccountFreezingbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountFreezingbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |AccountFreezingbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountFreezingbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |AccountFreezingbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountFreezingbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |AccountFreezingbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountFreezingbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |AccountFreezingbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountFreezingbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |AccountFreezingbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountFreezingbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountFreezingbpl.5153:36|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountFreezingbpl.7033:71|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountFreezingbpl.7402:46|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountFreezingbpl.7414:64|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountFreezingbpl.7426:75|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountFreezingbpl.7438:72|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountFreezingbpl.7471:55|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountFreezingbpl.7494:46|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountFreezingbpl.7776:49|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountFreezingbpl.7861:71|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountFreezingbpl.7874:91|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountFreezingbpl.7887:113|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |AccountFreezingbpl.7900:89|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |AccountFreezingbpl.7913:75|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |AccountFreezingbpl.7926:73|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |AccountFreezingbpl.7946:48|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |AccountFreezingbpl.7963:57|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |AccountFreezingbpl.7977:83|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |AccountFreezingbpl.7991:103|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |AccountFreezingbpl.8005:125|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |AccountFreezingbpl.8019:101|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |AccountFreezingbpl.8033:87|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |AccountFreezingbpl.8047:85|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |AccountFreezingbpl.8061:48|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |AccountFreezingbpl.8082:45|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |AccountFreezingbpl.8096:51|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |AccountFreezingbpl.8119:48|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |AccountFreezingbpl.8413:49|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |AccountFreezingbpl.8426:65|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |AccountFreezingbpl.8967:45|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |AccountFreezingbpl.8980:45|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |AccountFreezingbpl.8993:37|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |AccountFreezingbpl.9006:55|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |AccountFreezingbpl.9020:55|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |AccountFreezingbpl.9040:38|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |AccountFreezingbpl.9062:44|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |AccountFreezingbpl.9114:53|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |AccountFreezingbpl.9187:53|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |AccountFreezingbpl.9260:45|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |AccountFreezingbpl.9297:55|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |AccountFreezingbpl.9311:55|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |AccountFreezingbpl.9325:47|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |AccountFreezingbpl.9342:38|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |AccountFreezingbpl.9356:48|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |AccountFreezingbpl.9370:48|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |AccountFreezingbpl.9384:40|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |AccountFreezingbpl.9404:41|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |AccountFreezingbpl.9420:53|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |AccountFreezingbpl.9433:53|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |AccountFreezingbpl.9446:45|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |AccountFreezingbpl.9462:60|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |AccountFreezingbpl.9479:60|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |AccountFreezingbpl.9496:52|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |AccountFreezingbpl.9513:57|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |AccountFreezingbpl.11686:68|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |AccountFreezingbpl.11708:66|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |AccountFreezingbpl.11734:66|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))))
 :qid |AccountFreezingbpl.11763:56|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))))
 :qid |AccountFreezingbpl.11793:56|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@59) true)
 :qid |AccountFreezingbpl.12227:31|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@60) true)
 :qid |AccountFreezingbpl.12557:31|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@60))
)))
(assert (forall ((s@@61 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@61)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@61)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@61))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@61))))
 :qid |AccountFreezingbpl.12576:35|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@62)))
 :qid |AccountFreezingbpl.12990:45|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@63))))
 :qid |AccountFreezingbpl.13008:50|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@64)))
 :qid |AccountFreezingbpl.13024:52|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@65)))
 :qid |AccountFreezingbpl.13037:46|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@66) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@66)))
 :qid |AccountFreezingbpl.13418:38|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@67) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@67)))
 :qid |AccountFreezingbpl.13432:39|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@67))
)))
(assert (forall ((s@@68 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68))))
 :qid |AccountFreezingbpl.14119:65|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@69))))
 :qid |AccountFreezingbpl.14492:60|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70))))
 :qid |AccountFreezingbpl.14509:66|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@71)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@71))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@71))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@71))))
 :qid |AccountFreezingbpl.14538:50|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@72) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@72)))
 :qid |AccountFreezingbpl.14561:45|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@73)) true))
 :qid |AccountFreezingbpl.15134:87|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@74)))
 :qid |AccountFreezingbpl.15335:47|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@75)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@75))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@75))))
 :qid |AccountFreezingbpl.15354:58|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@76) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@76)))
 :qid |AccountFreezingbpl.15370:39|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@77))))
 :qid |AccountFreezingbpl.15397:58|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78))))
 :qid |AccountFreezingbpl.15414:58|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79) true)
 :qid |AccountFreezingbpl.15429:51|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80))))
 :qid |AccountFreezingbpl.15446:60|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@81)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@81))))
 :qid |AccountFreezingbpl.17905:47|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@82))))
 :qid |AccountFreezingbpl.17931:63|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@83)))
 :qid |AccountFreezingbpl.17946:57|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@84)))
 :qid |AccountFreezingbpl.17959:55|
 :skolemid |361|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@85)))
 :qid |AccountFreezingbpl.17973:55|
 :skolemid |362|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@86)))
 :qid |AccountFreezingbpl.17987:47|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@87)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@87))))
 :qid |AccountFreezingbpl.18004:54|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@88)))
 :qid |AccountFreezingbpl.18018:55|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@89)))
 :qid |AccountFreezingbpl.18031:57|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@90))))
 :qid |AccountFreezingbpl.18053:56|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@91))))
 :qid |AccountFreezingbpl.18080:52|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@92)))
 :qid |AccountFreezingbpl.18098:54|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@93)))
 :qid |AccountFreezingbpl.35122:55|
 :skolemid |1317|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@94)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@94))))
 :qid |AccountFreezingbpl.35143:47|
 :skolemid |1318|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@95)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@95))))
 :qid |AccountFreezingbpl.35167:47|
 :skolemid |1319|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@96)))
 :qid |AccountFreezingbpl.35401:63|
 :skolemid |1320|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |AccountFreezingbpl.35736:49|
 :skolemid |1321|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |AccountFreezingbpl.35778:49|
 :skolemid |1322|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |AccountFreezingbpl.35807:48|
 :skolemid |1323|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |AccountFreezingbpl.36092:47|
 :skolemid |1324|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@33 T@Vec_153493) (i@@56 Int) ) (! (= (InRangeVec_136114 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_153493| v@@33))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136114 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_151608) (i@@57 Int) ) (! (= (InRangeVec_136315 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_151608| v@@34))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136315 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_151647) (i@@58 Int) ) (! (= (InRangeVec_136516 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_151647| v@@35))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136516 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_151781) (i@@59 Int) ) (! (= (InRangeVec_136717 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_151781| v@@36))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136717 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_152123) (i@@60 Int) ) (! (= (InRangeVec_136918 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_152123| v@@37))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136918 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_152084) (i@@61 Int) ) (! (= (InRangeVec_137119 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_152084| v@@38))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137119 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_152045) (i@@62 Int) ) (! (= (InRangeVec_137320 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_152045| v@@39))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137320 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_152265) (i@@63 Int) ) (! (= (InRangeVec_137521 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_152265| v@@40))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137521 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_151569) (i@@64 Int) ) (! (= (InRangeVec_137722 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_151569| v@@41))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137722 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_177709) (i@@65 Int) ) (! (= (InRangeVec_137923 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_177709| v@@42))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_137923 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_180389) (i@@66 Int) ) (! (= (InRangeVec_138124 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_180389| v@@43))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_138124 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_151838) (i@@67 Int) ) (! (= (InRangeVec_183151 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_151838| v@@44))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183151 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_30625) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_30625| v@@45))))
 :qid |AccountFreezingbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_30625) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_30625 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@46) i@@70) e@@13))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30625| v@@46) j@@13) e@@13)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_30625 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_151569) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_151569 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_137722 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@47) i@@72) e@@14))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_137722 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_151569| v@@47) j@@14) e@@14)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151569 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_151608) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_151608 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_136315 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@48) i@@74) e@@15))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_136315 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_151608| v@@48) j@@15) e@@15)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151608 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_151647) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_151647 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_136516 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@49) i@@76) e@@16))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_136516 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_151647| v@@49) j@@16) e@@16)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151647 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_151781) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_151781 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_136717 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@50) i@@78) e@@17))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_136717 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_151781| v@@50) j@@17) e@@17)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151781 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_151838) (e@@18 T@Vec_30625) ) (! (let ((i@@79 (IndexOfVec_151838 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_183151 v@@51 i@@80) (= (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@51) i@@80) e@@18))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_183151 v@@51 i@@79) (= (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_30625_| (|v#Vec_151838| v@@51) j@@18) e@@18)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151838 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_152045) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_152045 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_137320 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@52) i@@82) e@@19))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_137320 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_152045| v@@52) j@@19) e@@19)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152045 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_152084) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_152084 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_137119 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@53) i@@84) e@@20))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_137119 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_152084| v@@53) j@@20) e@@20)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152084 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_152123) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_152123 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_136918 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@54) i@@86) e@@21))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_136918 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_152123| v@@54) j@@21) e@@21)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152123 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_152265) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_152265 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_137521 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@55) i@@88) e@@22))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_137521 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_152265| v@@55) j@@22) e@@22)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152265 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_153493) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_153493 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_136114 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@56) i@@90) e@@23))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_136114 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_153493| v@@56) j@@23) e@@23)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_153493 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_177709) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_177709 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_137923 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@57) i@@92) e@@24))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_137923 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_177709| v@@57) j@@24) e@@24)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177709 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_180389) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_180389 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_138124 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@58) i@@94) e@@25))
 :qid |AccountFreezingbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_138124 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_180389| v@@58) j@@25) e@@25)))
 :qid |AccountFreezingbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountFreezingbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_180389 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |AccountFreezingbpl.275:54|
 :skolemid |1415|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_151483|) (|l#1| |T@[$1_Event_EventHandle]Multiset_151483|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#1| handle@@0))))
(Multiset_151483 (|lambda#42| (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#0@@0| handle@@0)) (|v#Multiset_151483| (|Select__T@[$1_Event_EventHandle]Multiset_151483_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountFreezingbpl.3321:13|
 :skolemid |1416|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_151483_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1417|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1418|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1419|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1420|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1421|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1422|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1423|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1424|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1425|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1426|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1427|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1428|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1429|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1430|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1431|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1432|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1433|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1434|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1435|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1436|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1437|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1438|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1439|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1440|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1441|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1442|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1443|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1444|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1445|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1446|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1447|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1448|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1449|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_30625|) (|l#4@@32| |T@[Int]Vec_30625|) (|l#5@@32| Int) (|l#6@@21| T@Vec_30625) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_30625_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_30625_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_30625_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1450|
 :pattern ( (|Select__T@[Int]Vec_30625_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_30625|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_30625) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_30625_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_30625_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1451|
 :pattern ( (|Select__T@[Int]Vec_30625_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_30625|) (|l#4@@34| |T@[Int]Vec_30625|) (|l#5@@34| Int) (|l#6@@22| T@Vec_30625) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_30625_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_30625_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_30625_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1452|
 :pattern ( (|Select__T@[Int]Vec_30625_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |AccountFreezingbpl.73:19|
 :skolemid |1453|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |AccountFreezingbpl.82:30|
 :skolemid |1454|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |AccountFreezingbpl.63:20|
 :skolemid |1455|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |AccountFreezingbpl.154:29|
 :skolemid |1456|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid

