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
(declare-datatypes ((T@$Memory_162243 0)) ((($Memory_162243 (|domain#$Memory_162243| |T@[Int]Bool|) (|contents#$Memory_162243| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_125808 0)) (((Vec_125808 (|v#Vec_125808| |T@[Int]#0|) (|l#Vec_125808| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_225005 0)) ((($Memory_225005 (|domain#$Memory_225005| |T@[Int]Bool|) (|contents#$Memory_225005| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_200211 0)) ((($Memory_200211 (|domain#$Memory_200211| |T@[Int]Bool|) (|contents#$Memory_200211| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_197239 0)) ((($Memory_197239 (|domain#$Memory_197239| |T@[Int]Bool|) (|contents#$Memory_197239| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_197617 0)) ((($Memory_197617 (|domain#$Memory_197617| |T@[Int]Bool|) (|contents#$Memory_197617| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_197206 0)) ((($Memory_197206 (|domain#$Memory_197206| |T@[Int]Bool|) (|contents#$Memory_197206| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_196986 0)) ((($Memory_196986 (|domain#$Memory_196986| |T@[Int]Bool|) (|contents#$Memory_196986| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_194736 0)) ((($Memory_194736 (|domain#$Memory_194736| |T@[Int]Bool|) (|contents#$Memory_194736| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_191672 0)) ((($Memory_191672 (|domain#$Memory_191672| |T@[Int]Bool|) (|contents#$Memory_191672| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_191608 0)) ((($Memory_191608 (|domain#$Memory_191608| |T@[Int]Bool|) (|contents#$Memory_191608| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_191004 0)) ((($Memory_191004 (|domain#$Memory_191004| |T@[Int]Bool|) (|contents#$Memory_191004| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_150024 0)) (((Vec_150024 (|v#Vec_150024| |T@[Int]$1_XDX_XDX|) (|l#Vec_150024| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_152704 0)) (((Vec_152704 (|v#Vec_152704| |T@[Int]$1_XUS_XUS|) (|l#Vec_152704| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_187222 0)) ((($Memory_187222 (|domain#$Memory_187222| |T@[Int]Bool|) (|contents#$Memory_187222| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_187158 0)) ((($Memory_187158 (|domain#$Memory_187158| |T@[Int]Bool|) (|contents#$Memory_187158| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_187094 0)) ((($Memory_187094 (|domain#$Memory_187094| |T@[Int]Bool|) (|contents#$Memory_187094| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_188202 0)) ((($Memory_188202 (|domain#$Memory_188202| |T@[Int]Bool|) (|contents#$Memory_188202| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_187746 0)) ((($Memory_187746 (|domain#$Memory_187746| |T@[Int]Bool|) (|contents#$Memory_187746| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_187290 0)) ((($Memory_187290 (|domain#$Memory_187290| |T@[Int]Bool|) (|contents#$Memory_187290| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_198906 0)) ((($Memory_198906 (|domain#$Memory_198906| |T@[Int]Bool|) (|contents#$Memory_198906| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_179778 0)) ((($Memory_179778 (|domain#$Memory_179778| |T@[Int]Bool|) (|contents#$Memory_179778| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_179714 0)) ((($Memory_179714 (|domain#$Memory_179714| |T@[Int]Bool|) (|contents#$Memory_179714| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_179650 0)) ((($Memory_179650 (|domain#$Memory_179650| |T@[Int]Bool|) (|contents#$Memory_179650| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_180058 0)) ((($Memory_180058 (|domain#$Memory_180058| |T@[Int]Bool|) (|contents#$Memory_180058| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_197950 0)) ((($Memory_197950 (|domain#$Memory_197950| |T@[Int]Bool|) (|contents#$Memory_197950| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_185885 0)) ((($Memory_185885 (|domain#$Memory_185885| |T@[Int]Bool|) (|contents#$Memory_185885| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_197867 0)) ((($Memory_197867 (|domain#$Memory_197867| |T@[Int]Bool|) (|contents#$Memory_197867| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_185804 0)) ((($Memory_185804 (|domain#$Memory_185804| |T@[Int]Bool|) (|contents#$Memory_185804| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_190428 0)) ((($Memory_190428 (|domain#$Memory_190428| |T@[Int]Bool|) (|contents#$Memory_190428| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_197784 0)) ((($Memory_197784 (|domain#$Memory_197784| |T@[Int]Bool|) (|contents#$Memory_197784| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_185723 0)) ((($Memory_185723 (|domain#$Memory_185723| |T@[Int]Bool|) (|contents#$Memory_185723| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_194284 0)) ((($Memory_194284 (|domain#$Memory_194284| |T@[Int]Bool|) (|contents#$Memory_194284| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_178216 0)) ((($Memory_178216 (|domain#$Memory_178216| |T@[Int]Bool|) (|contents#$Memory_178216| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_178471 0)) ((($Memory_178471 (|domain#$Memory_178471| |T@[Int]Bool|) (|contents#$Memory_178471| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_177044 0)) ((($Memory_177044 (|domain#$Memory_177044| |T@[Int]Bool|) (|contents#$Memory_177044| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_177335 0)) ((($Memory_177335 (|domain#$Memory_177335| |T@[Int]Bool|) (|contents#$Memory_177335| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_176491 0)) ((($Memory_176491 (|domain#$Memory_176491| |T@[Int]Bool|) (|contents#$Memory_176491| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_123982 0)) (((Vec_123982 (|v#Vec_123982| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_123982| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_123982) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_123943 0)) (((Vec_123943 (|v#Vec_123943| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_123943| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_123943) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_222009 0)) ((($Memory_222009 (|domain#$Memory_222009| |T@[Int]Bool|) (|contents#$Memory_222009| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_123943) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_26904 0)) (((Vec_26904 (|v#Vec_26904| |T@[Int]Int|) (|l#Vec_26904| Int) ) ) ))
(declare-sort |T@[Int]Vec_26904| 0)
(declare-datatypes ((T@Vec_124150 0)) (((Vec_124150 (|v#Vec_124150| |T@[Int]Vec_26904|) (|l#Vec_124150| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_124150) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_177207 0)) ((($Memory_177207 (|domain#$Memory_177207| |T@[Int]Bool|) (|contents#$Memory_177207| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_124150) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_177143 0)) ((($Memory_177143 (|domain#$Memory_177143| |T@[Int]Bool|) (|contents#$Memory_177143| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_26904) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_26904) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_177271 0)) ((($Memory_177271 (|domain#$Memory_177271| |T@[Int]Bool|) (|contents#$Memory_177271| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_26904) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_198033 0)) ((($Memory_198033 (|domain#$Memory_198033| |T@[Int]Bool|) (|contents#$Memory_198033| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_26904) (|$base_url#$1_DualAttestation_Credential| T@Vec_26904) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_26904) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_194463 0)) ((($Memory_194463 (|domain#$Memory_194463| |T@[Int]Bool|) (|contents#$Memory_194463| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_124587 0)) (((Vec_124587 (|v#Vec_124587| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_124587| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_124587) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_190693 0)) ((($Memory_190693 (|domain#$Memory_190693| |T@[Int]Bool|) (|contents#$Memory_190693| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_124432 0)) (((Vec_124432 (|v#Vec_124432| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_124432| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_124432) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_186369 0)) ((($Memory_186369 (|domain#$Memory_186369| |T@[Int]Bool|) (|contents#$Memory_186369| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_124393 0)) (((Vec_124393 (|v#Vec_124393| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_124393| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_124393) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_186252 0)) ((($Memory_186252 (|domain#$Memory_186252| |T@[Int]Bool|) (|contents#$Memory_186252| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_124354 0)) (((Vec_124354 (|v#Vec_124354| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_124354| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_124354) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_186135 0)) ((($Memory_186135 (|domain#$Memory_186135| |T@[Int]Bool|) (|contents#$Memory_186135| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_26904) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_179096 0)) ((($Memory_179096 (|domain#$Memory_179096| |T@[Int]Bool|) (|contents#$Memory_179096| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_26904) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_178977 0)) ((($Memory_178977 (|domain#$Memory_178977| |T@[Int]Bool|) (|contents#$Memory_178977| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_26904) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_178858 0)) ((($Memory_178858 (|domain#$Memory_178858| |T@[Int]Bool|) (|contents#$Memory_178858| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_26904) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_26904) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_123904 0)) (((Vec_123904 (|v#Vec_123904| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_123904| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_123904) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_124093 0)) (((Vec_124093 (|v#Vec_124093| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_124093| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_124093) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_176963 0)) ((($Memory_176963 (|domain#$Memory_176963| |T@[Int]Bool|) (|contents#$Memory_176963| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_175015 0)) ((($Memory_175015 (|domain#$Memory_175015| |T@[Int]Bool|) (|contents#$Memory_175015| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_173389 0)) ((($Memory_173389 (|domain#$Memory_173389| |T@[Int]Bool|) (|contents#$Memory_173389| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_169787 0)) ((($Memory_169787 (|domain#$Memory_169787| |T@[Int]Bool|) (|contents#$Memory_169787| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_169606 0)) ((($Memory_169606 (|domain#$Memory_169606| |T@[Int]Bool|) (|contents#$Memory_169606| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_26904) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_26904) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_26904) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_26904) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_26904) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_26904) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_26904) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_26904) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_26904) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_26904) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_123818 0)) (((Multiset_123818 (|v#Multiset_123818| |T@[$EventRep]Int|) (|l#Multiset_123818| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_123818| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_123818|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_192188 0)) ((($Mutation_192188 (|l#$Mutation_192188| T@$Location) (|p#$Mutation_192188| T@Vec_26904) (|v#$Mutation_192188| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_162874 0)) ((($Mutation_162874 (|l#$Mutation_162874| T@$Location) (|p#$Mutation_162874| T@Vec_26904) (|v#$Mutation_162874| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_26904) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_157131 0)) ((($Mutation_157131 (|l#$Mutation_157131| T@$Location) (|p#$Mutation_157131| T@Vec_26904) (|v#$Mutation_157131| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$Mutation_156043 0)) ((($Mutation_156043 (|l#$Mutation_156043| T@$Location) (|p#$Mutation_156043| T@Vec_26904) (|v#$Mutation_156043| T@Vec_124150) ) ) ))
(declare-datatypes ((T@$Mutation_154334 0)) ((($Mutation_154334 (|l#$Mutation_154334| T@$Location) (|p#$Mutation_154334| T@Vec_26904) (|v#$Mutation_154334| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_153347 0)) ((($Mutation_153347 (|l#$Mutation_153347| T@$Location) (|p#$Mutation_153347| T@Vec_26904) (|v#$Mutation_153347| T@Vec_152704) ) ) ))
(declare-datatypes ((T@$Mutation_151654 0)) ((($Mutation_151654 (|l#$Mutation_151654| T@$Location) (|p#$Mutation_151654| T@Vec_26904) (|v#$Mutation_151654| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_150667 0)) ((($Mutation_150667 (|l#$Mutation_150667| T@$Location) (|p#$Mutation_150667| T@Vec_26904) (|v#$Mutation_150667| T@Vec_150024) ) ) ))
(declare-datatypes ((T@$Mutation_148974 0)) ((($Mutation_148974 (|l#$Mutation_148974| T@$Location) (|p#$Mutation_148974| T@Vec_26904) (|v#$Mutation_148974| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_147987 0)) ((($Mutation_147987 (|l#$Mutation_147987| T@$Location) (|p#$Mutation_147987| T@Vec_26904) (|v#$Mutation_147987| T@Vec_123904) ) ) ))
(declare-datatypes ((T@$Mutation_146332 0)) ((($Mutation_146332 (|l#$Mutation_146332| T@$Location) (|p#$Mutation_146332| T@Vec_26904) (|v#$Mutation_146332| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_145345 0)) ((($Mutation_145345 (|l#$Mutation_145345| T@$Location) (|p#$Mutation_145345| T@Vec_26904) (|v#$Mutation_145345| T@Vec_124587) ) ) ))
(declare-datatypes ((T@$Mutation_143667 0)) ((($Mutation_143667 (|l#$Mutation_143667| T@$Location) (|p#$Mutation_143667| T@Vec_26904) (|v#$Mutation_143667| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_142680 0)) ((($Mutation_142680 (|l#$Mutation_142680| T@$Location) (|p#$Mutation_142680| T@Vec_26904) (|v#$Mutation_142680| T@Vec_124354) ) ) ))
(declare-datatypes ((T@$Mutation_140971 0)) ((($Mutation_140971 (|l#$Mutation_140971| T@$Location) (|p#$Mutation_140971| T@Vec_26904) (|v#$Mutation_140971| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_139984 0)) ((($Mutation_139984 (|l#$Mutation_139984| T@$Location) (|p#$Mutation_139984| T@Vec_26904) (|v#$Mutation_139984| T@Vec_124393) ) ) ))
(declare-datatypes ((T@$Mutation_138275 0)) ((($Mutation_138275 (|l#$Mutation_138275| T@$Location) (|p#$Mutation_138275| T@Vec_26904) (|v#$Mutation_138275| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_137288 0)) ((($Mutation_137288 (|l#$Mutation_137288| T@$Location) (|p#$Mutation_137288| T@Vec_26904) (|v#$Mutation_137288| T@Vec_124432) ) ) ))
(declare-datatypes ((T@$Mutation_135579 0)) ((($Mutation_135579 (|l#$Mutation_135579| T@$Location) (|p#$Mutation_135579| T@Vec_26904) (|v#$Mutation_135579| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_134592 0)) ((($Mutation_134592 (|l#$Mutation_134592| T@$Location) (|p#$Mutation_134592| T@Vec_26904) (|v#$Mutation_134592| T@Vec_124093) ) ) ))
(declare-datatypes ((T@$Mutation_132792 0)) ((($Mutation_132792 (|l#$Mutation_132792| T@$Location) (|p#$Mutation_132792| T@Vec_26904) (|v#$Mutation_132792| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_131805 0)) ((($Mutation_131805 (|l#$Mutation_131805| T@$Location) (|p#$Mutation_131805| T@Vec_26904) (|v#$Mutation_131805| T@Vec_123982) ) ) ))
(declare-datatypes ((T@$Mutation_130140 0)) ((($Mutation_130140 (|l#$Mutation_130140| T@$Location) (|p#$Mutation_130140| T@Vec_26904) (|v#$Mutation_130140| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_129153 0)) ((($Mutation_129153 (|l#$Mutation_129153| T@$Location) (|p#$Mutation_129153| T@Vec_26904) (|v#$Mutation_129153| T@Vec_123943) ) ) ))
(declare-datatypes ((T@$Mutation_127440 0)) ((($Mutation_127440 (|l#$Mutation_127440| T@$Location) (|p#$Mutation_127440| T@Vec_26904) (|v#$Mutation_127440| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_126453 0)) ((($Mutation_126453 (|l#$Mutation_126453| T@$Location) (|p#$Mutation_126453| T@Vec_26904) (|v#$Mutation_126453| T@Vec_125808) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_125808 T@Vec_125808) Bool)
(declare-fun InRangeVec_110384 (T@Vec_125808 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_125808) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_125808 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_123943 T@Vec_123943) Bool)
(declare-fun InRangeVec_110585 (T@Vec_123943 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_123943) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_123943 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_123982 T@Vec_123982) Bool)
(declare-fun InRangeVec_110786 (T@Vec_123982 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_123982) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_123982 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_124093 T@Vec_124093) Bool)
(declare-fun InRangeVec_110987 (T@Vec_124093 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_26904 T@Vec_26904) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_124093) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_124093 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_124432 T@Vec_124432) Bool)
(declare-fun InRangeVec_111188 (T@Vec_124432 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_124432) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_124432 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_124393 T@Vec_124393) Bool)
(declare-fun InRangeVec_111389 (T@Vec_124393 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_124393) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_124393 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_124354 T@Vec_124354) Bool)
(declare-fun InRangeVec_111590 (T@Vec_124354 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_124354) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_124354 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_124587 T@Vec_124587) Bool)
(declare-fun InRangeVec_111791 (T@Vec_124587 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_124587) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_124587 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_123904 T@Vec_123904) Bool)
(declare-fun InRangeVec_111992 (T@Vec_123904 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_123904) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_123904 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_150024 T@Vec_150024) Bool)
(declare-fun InRangeVec_112193 (T@Vec_150024 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_150024) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_150024 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_152704 T@Vec_152704) Bool)
(declare-fun InRangeVec_112394 (T@Vec_152704 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_152704) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_152704 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_124150 T@Vec_124150) Bool)
(declare-fun InRangeVec_155466 (T@Vec_124150 Int) Bool)
(declare-fun |Select__T@[Int]Vec_26904_| (|T@[Int]Vec_26904| Int) T@Vec_26904)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_124150) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_26904) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_124150 T@Vec_26904) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_26904 T@Vec_26904) Bool)
(declare-fun InRangeVec_16728 (T@Vec_26904 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_26904) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_26904 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_26904 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_26904) T@Vec_26904)
(declare-fun $1_Hash_sha3 (T@Vec_26904) T@Vec_26904)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_26904) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_26904 T@Vec_26904 T@Vec_26904) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_123818_| (|T@[$1_Event_EventHandle]Multiset_123818| T@$1_Event_EventHandle) T@Multiset_123818)
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
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
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
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
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
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'#0''| (|T@$1_AccountLimits_LimitsDefinition'#0'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_26904 Int) T@Vec_26904)
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
(declare-fun IndexOfVec_26904 (T@Vec_26904 Int) Int)
(declare-fun IndexOfVec_123904 (T@Vec_123904 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_123943 (T@Vec_123943 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_123982 (T@Vec_123982 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_124093 (T@Vec_124093 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_124150 (T@Vec_124150 T@Vec_26904) Int)
(declare-fun IndexOfVec_124354 (T@Vec_124354 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_124393 (T@Vec_124393 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_124432 (T@Vec_124432 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_124587 (T@Vec_124587 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_125808 (T@Vec_125808 |T@#0|) Int)
(declare-fun IndexOfVec_150024 (T@Vec_150024 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_152704 (T@Vec_152704 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_123818| |T@[$1_Event_EventHandle]Multiset_123818|) |T@[$1_Event_EventHandle]Multiset_123818|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_26904| |T@[Int]Vec_26904| Int T@Vec_26904) |T@[Int]Vec_26904|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_26904| Int Int T@Vec_26904) |T@[Int]Vec_26904|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_26904| |T@[Int]Vec_26904| Int T@Vec_26904) |T@[Int]Vec_26904|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountCreationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountCreationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountCreationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountCreationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountCreationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountCreationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountCreationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountCreationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_125808) (v2 T@Vec_125808) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_125808| v1) (|l#Vec_125808| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_110384 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_125808| v2) i@@0)))
 :qid |AccountCreationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountCreationScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_125808) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_125808| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_110384 v@@4 i@@1) true)
 :qid |AccountCreationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountCreationScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_125808) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_110384 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@5) i@@3) e))
 :qid |AccountCreationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_110384 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@5) j) e)))
 :qid |AccountCreationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountCreationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_123943) (v2@@0 T@Vec_123943) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_123943| v1@@0) (|l#Vec_123943| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_110585 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v2@@0) i@@4)))
 :qid |AccountCreationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountCreationScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_123943) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_123943| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_110585 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@6) i@@5)))
 :qid |AccountCreationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountCreationScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_123943) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_110585 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@7) i@@7) e@@0))
 :qid |AccountCreationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_110585 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@7) j@@0) e@@0)))
 :qid |AccountCreationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountCreationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_123982) (v2@@1 T@Vec_123982) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_123982| v1@@1) (|l#Vec_123982| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_110786 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v2@@1) i@@8)))
 :qid |AccountCreationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountCreationScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_123982) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_123982| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_110786 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@8) i@@9)))
 :qid |AccountCreationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountCreationScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_123982) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_110786 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@9) i@@11) e@@1))
 :qid |AccountCreationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_110786 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@9) j@@1) e@@1)))
 :qid |AccountCreationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountCreationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_124093) (v2@@2 T@Vec_124093) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_124093| v1@@2) (|l#Vec_124093| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_110987 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))))
 :qid |AccountCreationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountCreationScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_124093) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_124093| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_110987 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@10) i@@13)))
 :qid |AccountCreationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountCreationScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_124093) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_110987 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |AccountCreationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_110987 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |AccountCreationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountCreationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_124432) (v2@@3 T@Vec_124432) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_124432| v1@@3) (|l#Vec_124432| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_111188 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v2@@3) i@@16)))))
 :qid |AccountCreationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountCreationScriptsbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_124432) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_124432| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_111188 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@12) i@@17)))
 :qid |AccountCreationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountCreationScriptsbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_124432) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_111188 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |AccountCreationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_111188 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |AccountCreationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountCreationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_124393) (v2@@4 T@Vec_124393) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_124393| v1@@4) (|l#Vec_124393| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_111389 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v2@@4) i@@20)))))
 :qid |AccountCreationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountCreationScriptsbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_124393) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_124393| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_111389 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@14) i@@21)))
 :qid |AccountCreationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountCreationScriptsbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_124393) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_111389 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |AccountCreationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_111389 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |AccountCreationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountCreationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_124354) (v2@@5 T@Vec_124354) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_124354| v1@@5) (|l#Vec_124354| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_111590 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v2@@5) i@@24)))))
 :qid |AccountCreationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountCreationScriptsbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_124354) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_124354| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_111590 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@16) i@@25)))
 :qid |AccountCreationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountCreationScriptsbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_124354) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_111590 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |AccountCreationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_111590 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |AccountCreationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountCreationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_124587) (v2@@6 T@Vec_124587) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_124587| v1@@6) (|l#Vec_124587| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_111791 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v2@@6) i@@28))))
 :qid |AccountCreationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountCreationScriptsbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_124587) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_124587| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_111791 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@18) i@@29)))
 :qid |AccountCreationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountCreationScriptsbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_124587) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_111791 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |AccountCreationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_111791 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |AccountCreationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountCreationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_123904) (v2@@7 T@Vec_123904) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_123904| v1@@7) (|l#Vec_123904| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_111992 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v2@@7) i@@32)))))
 :qid |AccountCreationScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |AccountCreationScriptsbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_123904) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_123904| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_111992 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@20) i@@33)))
 :qid |AccountCreationScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |AccountCreationScriptsbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_123904) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_111992 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |AccountCreationScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_111992 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |AccountCreationScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |AccountCreationScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_150024) (v2@@8 T@Vec_150024) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_150024| v1@@8) (|l#Vec_150024| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_112193 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v2@@8) i@@36)))
 :qid |AccountCreationScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |AccountCreationScriptsbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_150024) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_150024| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_112193 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@22) i@@37)))
 :qid |AccountCreationScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |AccountCreationScriptsbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_150024) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_112193 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@23) i@@39) e@@8))
 :qid |AccountCreationScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_112193 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@23) j@@8) e@@8)))
 :qid |AccountCreationScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |AccountCreationScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_152704) (v2@@9 T@Vec_152704) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_152704| v1@@9) (|l#Vec_152704| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_112394 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v2@@9) i@@40)))
 :qid |AccountCreationScriptsbpl.2425:13|
 :skolemid |87|
))))
 :qid |AccountCreationScriptsbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_152704) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_152704| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_112394 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@24) i@@41)))
 :qid |AccountCreationScriptsbpl.2431:13|
 :skolemid |89|
))))
 :qid |AccountCreationScriptsbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_152704) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_112394 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@25) i@@43) e@@9))
 :qid |AccountCreationScriptsbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_112394 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@25) j@@9) e@@9)))
 :qid |AccountCreationScriptsbpl.2444:17|
 :skolemid |92|
)))))
 :qid |AccountCreationScriptsbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_124150) (v2@@10 T@Vec_124150) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_124150| v1@@10) (|l#Vec_124150| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_155466 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v1@@10) i@@44) (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v2@@10) i@@44)))
 :qid |AccountCreationScriptsbpl.2606:13|
 :skolemid |94|
))))
 :qid |AccountCreationScriptsbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_124150) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_124150| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_155466 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@26) i@@45)))
 :qid |AccountCreationScriptsbpl.2612:13|
 :skolemid |96|
))))
 :qid |AccountCreationScriptsbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_124150) (e@@10 T@Vec_26904) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_155466 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@27) i@@47) e@@10))
 :qid |AccountCreationScriptsbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_155466 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@27) j@@10) e@@10)))
 :qid |AccountCreationScriptsbpl.2625:17|
 :skolemid |99|
)))))
 :qid |AccountCreationScriptsbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_26904) (v2@@11 T@Vec_26904) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_26904| v1@@11) (|l#Vec_26904| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_26904| v2@@11) i@@48)))
 :qid |AccountCreationScriptsbpl.2787:13|
 :skolemid |101|
))))
 :qid |AccountCreationScriptsbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_26904) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_26904| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_26904| v@@28) i@@49)))
 :qid |AccountCreationScriptsbpl.2793:13|
 :skolemid |103|
))))
 :qid |AccountCreationScriptsbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_26904) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@29) i@@51) e@@11))
 :qid |AccountCreationScriptsbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@29) j@@11) e@@11)))
 :qid |AccountCreationScriptsbpl.2806:17|
 :skolemid |106|
)))))
 :qid |AccountCreationScriptsbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_26904) (v2@@12 T@Vec_26904) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_26904| v1@@12) (|l#Vec_26904| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_26904| v2@@12) i@@52)))
 :qid |AccountCreationScriptsbpl.2968:13|
 :skolemid |108|
))))
 :qid |AccountCreationScriptsbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_26904) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_26904| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_26904| v@@30) i@@53)))
 :qid |AccountCreationScriptsbpl.2974:13|
 :skolemid |110|
))))
 :qid |AccountCreationScriptsbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_26904) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@31) i@@55) e@@12))
 :qid |AccountCreationScriptsbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@31) j@@12) e@@12)))
 :qid |AccountCreationScriptsbpl.2987:17|
 :skolemid |113|
)))))
 :qid |AccountCreationScriptsbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_26904) (v2@@13 T@Vec_26904) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |AccountCreationScriptsbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_26904) (v2@@14 T@Vec_26904) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |AccountCreationScriptsbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_26904) (k2 T@Vec_26904) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountCreationScriptsbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_26904) (s2 T@Vec_26904) (k1@@0 T@Vec_26904) (k2@@0 T@Vec_26904) (m1 T@Vec_26904) (m2 T@Vec_26904) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountCreationScriptsbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_123818| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| stream) v@@32) 0)
 :qid |AccountCreationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountCreationScriptsbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountCreationScriptsbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |AccountCreationScriptsbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountCreationScriptsbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |AccountCreationScriptsbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountCreationScriptsbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |AccountCreationScriptsbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountCreationScriptsbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |AccountCreationScriptsbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountCreationScriptsbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |AccountCreationScriptsbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountCreationScriptsbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |AccountCreationScriptsbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountCreationScriptsbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |AccountCreationScriptsbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountCreationScriptsbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |AccountCreationScriptsbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountCreationScriptsbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |AccountCreationScriptsbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountCreationScriptsbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |AccountCreationScriptsbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountCreationScriptsbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |AccountCreationScriptsbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountCreationScriptsbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |AccountCreationScriptsbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountCreationScriptsbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |AccountCreationScriptsbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountCreationScriptsbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |AccountCreationScriptsbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountCreationScriptsbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |AccountCreationScriptsbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountCreationScriptsbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |AccountCreationScriptsbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountCreationScriptsbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |AccountCreationScriptsbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountCreationScriptsbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountCreationScriptsbpl.4397:36|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountCreationScriptsbpl.5555:71|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountCreationScriptsbpl.5934:46|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountCreationScriptsbpl.5946:64|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountCreationScriptsbpl.5958:75|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountCreationScriptsbpl.5970:72|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountCreationScriptsbpl.5998:55|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountCreationScriptsbpl.6021:46|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountCreationScriptsbpl.6296:15|
 :skolemid |164|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountCreationScriptsbpl.6309:49|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountCreationScriptsbpl.6507:71|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountCreationScriptsbpl.6520:91|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountCreationScriptsbpl.6533:113|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountCreationScriptsbpl.6546:75|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountCreationScriptsbpl.6559:73|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountCreationScriptsbpl.6579:48|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |AccountCreationScriptsbpl.6596:83|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |AccountCreationScriptsbpl.6610:48|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |AccountCreationScriptsbpl.6631:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |AccountCreationScriptsbpl.6645:51|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |AccountCreationScriptsbpl.6668:48|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |AccountCreationScriptsbpl.6691:49|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |AccountCreationScriptsbpl.6704:65|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |AccountCreationScriptsbpl.6866:45|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |AccountCreationScriptsbpl.6879:45|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@24)))
 :qid |AccountCreationScriptsbpl.6892:37|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25) true)
 :qid |AccountCreationScriptsbpl.6905:55|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@26))))
 :qid |AccountCreationScriptsbpl.6925:38|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@27))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@27))))
 :qid |AccountCreationScriptsbpl.6947:44|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))))
 :qid |AccountCreationScriptsbpl.6999:53|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))))
 :qid |AccountCreationScriptsbpl.7072:53|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@30))))
 :qid |AccountCreationScriptsbpl.7145:45|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31) true)
 :qid |AccountCreationScriptsbpl.7182:55|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32) true)
 :qid |AccountCreationScriptsbpl.7196:55|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@33) true)
 :qid |AccountCreationScriptsbpl.7210:47|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@34)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@34))))
 :qid |AccountCreationScriptsbpl.7227:38|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@35)))
 :qid |AccountCreationScriptsbpl.7241:48|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@36)))
 :qid |AccountCreationScriptsbpl.7255:48|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@37) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@37)))
 :qid |AccountCreationScriptsbpl.7269:40|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@38))))
 :qid |AccountCreationScriptsbpl.7289:41|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@39) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@39)))
 :qid |AccountCreationScriptsbpl.7305:53|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@40) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@40)))
 :qid |AccountCreationScriptsbpl.7318:53|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@41)))
 :qid |AccountCreationScriptsbpl.7331:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@42)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@42)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@42))))
 :qid |AccountCreationScriptsbpl.7347:60|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@43))))
 :qid |AccountCreationScriptsbpl.7364:60|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@44))))
 :qid |AccountCreationScriptsbpl.7381:52|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |AccountCreationScriptsbpl.7398:57|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |AccountCreationScriptsbpl.7778:68|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |AccountCreationScriptsbpl.7800:66|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |AccountCreationScriptsbpl.7826:66|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@49))))
 :qid |AccountCreationScriptsbpl.7852:58|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |AccountCreationScriptsbpl.7881:56|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |AccountCreationScriptsbpl.7911:56|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@52))))
 :qid |AccountCreationScriptsbpl.7941:48|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@53) true)
 :qid |AccountCreationScriptsbpl.7959:31|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@54) true)
 :qid |AccountCreationScriptsbpl.7977:31|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@55)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@55)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@55))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@55))))
 :qid |AccountCreationScriptsbpl.7996:35|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@56)))
 :qid |AccountCreationScriptsbpl.8017:45|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@57))))
 :qid |AccountCreationScriptsbpl.8035:50|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@58)))
 :qid |AccountCreationScriptsbpl.8051:52|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@59) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@59)))
 :qid |AccountCreationScriptsbpl.8064:46|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@60) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@60)))
 :qid |AccountCreationScriptsbpl.8295:38|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@61) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@61)))
 :qid |AccountCreationScriptsbpl.8309:39|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@61))
)))
(assert (forall ((s@@62 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62))))
 :qid |AccountCreationScriptsbpl.8996:65|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62))
)))
(assert (forall ((payer Int) (metadata T@Vec_26904) (deposit_value Int) ) (! (let (($$res@@0 ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountCreationScriptsbpl.9047:15|
 :skolemid |220|
)))
(assert (forall ((s@@63 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@63))))
 :qid |AccountCreationScriptsbpl.9075:60|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64))))
 :qid |AccountCreationScriptsbpl.9092:66|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@65)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@65))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@65))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@65))))
 :qid |AccountCreationScriptsbpl.9121:50|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@66) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@66)))
 :qid |AccountCreationScriptsbpl.9144:45|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@67)) true))
 :qid |AccountCreationScriptsbpl.9427:87|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@68)))
 :qid |AccountCreationScriptsbpl.9441:47|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@69)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@69))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@69))))
 :qid |AccountCreationScriptsbpl.9460:58|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@70) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@70)))
 :qid |AccountCreationScriptsbpl.9476:39|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@71))))
 :qid |AccountCreationScriptsbpl.9508:58|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72))))
 :qid |AccountCreationScriptsbpl.9525:58|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73) true)
 :qid |AccountCreationScriptsbpl.9540:51|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74))))
 :qid |AccountCreationScriptsbpl.9557:60|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@75)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@75))))
 :qid |AccountCreationScriptsbpl.9716:47|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@76))))
 :qid |AccountCreationScriptsbpl.9742:63|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@77)))
 :qid |AccountCreationScriptsbpl.9757:57|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@78)))
 :qid |AccountCreationScriptsbpl.9770:55|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78))
)))
(assert (forall ((s@@79 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@79)))
 :qid |AccountCreationScriptsbpl.9784:55|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79))
)))
(assert (forall ((s@@80 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@80) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@80)))
 :qid |AccountCreationScriptsbpl.9798:47|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@81)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@81)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@81))))
 :qid |AccountCreationScriptsbpl.9815:54|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@82) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@82)))
 :qid |AccountCreationScriptsbpl.9829:55|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@83)))
 :qid |AccountCreationScriptsbpl.9842:57|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@84)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@84)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@84))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@84))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@84))))
 :qid |AccountCreationScriptsbpl.9864:56|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@85)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@85))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@85))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@85))))
 :qid |AccountCreationScriptsbpl.9891:52|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@86) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@86)))
 :qid |AccountCreationScriptsbpl.9909:54|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@86))
)))
(assert (forall ((s@@87 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@87) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@87)))
 :qid |AccountCreationScriptsbpl.15455:55|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@88)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@88)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@88))))
 :qid |AccountCreationScriptsbpl.24468:47|
 :skolemid |902|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@89)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@89))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@89))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@89))))
 :qid |AccountCreationScriptsbpl.24492:47|
 :skolemid |903|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@90) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@90)))
 :qid |AccountCreationScriptsbpl.24510:49|
 :skolemid |904|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@91)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@91)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@91))))
 :qid |AccountCreationScriptsbpl.24552:49|
 :skolemid |905|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@92)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@92)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@92))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@92))))
 :qid |AccountCreationScriptsbpl.24581:48|
 :skolemid |906|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@93) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@93)))
 :qid |AccountCreationScriptsbpl.24597:47|
 :skolemid |907|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@93))
)))
(assert (forall ((v@@33 T@Vec_125808) (i@@56 Int) ) (! (= (InRangeVec_110384 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_125808| v@@33))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110384 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_123943) (i@@57 Int) ) (! (= (InRangeVec_110585 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_123943| v@@34))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110585 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_123982) (i@@58 Int) ) (! (= (InRangeVec_110786 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_123982| v@@35))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110786 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_124093) (i@@59 Int) ) (! (= (InRangeVec_110987 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_124093| v@@36))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110987 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_124432) (i@@60 Int) ) (! (= (InRangeVec_111188 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_124432| v@@37))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111188 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_124393) (i@@61 Int) ) (! (= (InRangeVec_111389 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_124393| v@@38))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111389 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_124354) (i@@62 Int) ) (! (= (InRangeVec_111590 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_124354| v@@39))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111590 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_124587) (i@@63 Int) ) (! (= (InRangeVec_111791 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_124587| v@@40))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111791 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_123904) (i@@64 Int) ) (! (= (InRangeVec_111992 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_123904| v@@41))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111992 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_150024) (i@@65 Int) ) (! (= (InRangeVec_112193 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_150024| v@@42))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_112193 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_152704) (i@@66 Int) ) (! (= (InRangeVec_112394 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_152704| v@@43))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_112394 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_124150) (i@@67 Int) ) (! (= (InRangeVec_155466 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_124150| v@@44))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_155466 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_26904) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_26904| v@@45))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_26904) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_26904 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@46) i@@70) e@@13))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@46) j@@13) e@@13)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_26904 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_123904) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_123904 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_111992 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@47) i@@72) e@@14))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_111992 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@47) j@@14) e@@14)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_123904 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_123943) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_123943 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_110585 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@48) i@@74) e@@15))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_110585 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@48) j@@15) e@@15)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_123943 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_123982) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_123982 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_110786 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@49) i@@76) e@@16))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_110786 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@49) j@@16) e@@16)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_123982 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_124093) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_124093 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_110987 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@50) i@@78) e@@17))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_110987 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@50) j@@17) e@@17)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124093 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_124150) (e@@18 T@Vec_26904) ) (! (let ((i@@79 (IndexOfVec_124150 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_155466 v@@51 i@@80) (= (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@51) i@@80) e@@18))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_155466 v@@51 i@@79) (= (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@51) j@@18) e@@18)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124150 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_124354) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_124354 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_111590 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@52) i@@82) e@@19))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_111590 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@52) j@@19) e@@19)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124354 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_124393) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_124393 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_111389 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@53) i@@84) e@@20))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_111389 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@53) j@@20) e@@20)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124393 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_124432) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_124432 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_111188 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@54) i@@86) e@@21))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_111188 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@54) j@@21) e@@21)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124432 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_124587) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_124587 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_111791 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@55) i@@88) e@@22))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_111791 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@55) j@@22) e@@22)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124587 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_125808) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_125808 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_110384 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@56) i@@90) e@@23))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_110384 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@56) j@@23) e@@23)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_125808 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_150024) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_150024 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_112193 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@57) i@@92) e@@24))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_112193 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@57) j@@24) e@@24)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150024 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_152704) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_152704 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_112394 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@58) i@@94) e@@25))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_112394 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@58) j@@25) e@@25)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152704 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |AccountCreationScriptsbpl.275:54|
 :skolemid |908|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_123818|) (|l#1| |T@[$1_Event_EventHandle]Multiset_123818|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#1| handle@@0))))
(Multiset_123818 (|lambda#42| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#0@@0| handle@@0)) (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountCreationScriptsbpl.3321:13|
 :skolemid |909|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |910|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |911|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |912|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |913|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |914|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |915|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |916|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |917|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |918|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |919|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |920|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |921|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |922|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |923|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |924|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |925|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |926|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |927|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |928|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |929|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |930|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |931|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |932|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |933|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |934|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |935|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |936|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |937|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |938|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |939|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |940|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |941|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |942|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_26904|) (|l#4@@32| |T@[Int]Vec_26904|) (|l#5@@32| Int) (|l#6@@21| T@Vec_26904) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_26904_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_26904_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_26904_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |943|
 :pattern ( (|Select__T@[Int]Vec_26904_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_26904|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_26904) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_26904_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_26904_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |944|
 :pattern ( (|Select__T@[Int]Vec_26904_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_26904|) (|l#4@@34| |T@[Int]Vec_26904|) (|l#5@@34| Int) (|l#6@@22| T@Vec_26904) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_26904_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_26904_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_26904_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |945|
 :pattern ( (|Select__T@[Int]Vec_26904_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |946|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |947|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |948|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |AccountCreationScriptsbpl.154:29|
 :skolemid |949|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_176491)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_169787)
(declare-fun _$t2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_196986)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_169606)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t5 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_178858)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_186135)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_185723)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_197784)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_197867)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_178977)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_197239)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_198906)
(declare-fun _$t3 () T@Vec_26904)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $abort_flag@62 () Bool)
(declare-fun $abort_code@54 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t10 () T@$1_Event_EventHandle)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@4 () T@$Memory_198906)
(declare-fun $t11 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_Roles_RoleId_$memory@5 () T@$Memory_169787)
(declare-fun $1_DesignatedDealer_Dealer_$memory@4 () T@$Memory_196986)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4 () T@$Memory_198033)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13| () T@$Memory_197784)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| () T@$Memory_197867)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_123818_| (|T@[$1_Event_EventHandle]Multiset_123818| T@$1_Event_EventHandle T@Multiset_123818) |T@[$1_Event_EventHandle]Multiset_123818|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_123818|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_123818)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|Store__T@[$1_Event_EventHandle]Multiset_123818_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_123818|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_123818)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|Store__T@[$1_Event_EventHandle]Multiset_123818_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_123818_| ?x0 ?y1))) :weight 0)))
(declare-fun $es@1 () T@$EventStore)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@3 () T@$Memory_198906)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3 () T@$Memory_198033)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| () T@$Memory_197867)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| () Int)
(declare-fun $1_Roles_RoleId_$memory@4 () T@$Memory_169787)
(declare-fun $1_DesignatedDealer_Dealer_$memory@3 () T@$Memory_196986)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| () T@$Memory_197784)
(declare-fun $abort_flag@61 () Bool)
(declare-fun $abort_code@53 () Int)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_198033)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_198906)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| () T@$Memory_197867)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@11| () T@$Memory_197784)
(declare-fun $1_DesignatedDealer_Dealer_$memory@2 () T@$Memory_196986)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_169787)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t25@0| () Bool)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_198033)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t17@0| () Bool)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t15@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t7@0| () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| () T@$Memory_197867)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t6@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@10| () T@$Memory_197784)
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| () T@$Memory_197784)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_197867)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| () T@$Memory_197784)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_197784)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| () T@$Memory_197867)
(declare-fun $abort_code@52 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9| () T@$Memory_197784)
(declare-fun $abort_flag@60 () Bool)
(declare-fun $abort_flag@59 () Bool)
(declare-fun $abort_code@51 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| () T@$Memory_197867)
(declare-fun $abort_flag@57 () Bool)
(declare-fun $abort_code@49 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_197867)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_197867)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_197867)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@48 () Int)
(declare-fun $abort_flag@56 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@55 () Bool)
(declare-fun $abort_code@47 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$4$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t4@1 () Int)
(declare-fun $abort_flag@53 () Bool)
(declare-fun $abort_code@45 () Int)
(declare-fun $abort_flag@48 () Bool)
(declare-fun $abort_code@41 () Int)
(declare-fun $abort_flag@44 () Bool)
(declare-fun $abort_code@38 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t2@1 () Bool)
(declare-fun $abort_flag@54 () Bool)
(declare-fun $abort_code@46 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@52 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@50 () Bool)
(declare-fun $abort_code@43 () Int)
(declare-fun inline$$1_Roles_has_role$5$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t2@1 () Bool)
(declare-fun $abort_flag@51 () Bool)
(declare-fun $abort_code@44 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@42 () Int)
(declare-fun $abort_flag@49 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@47 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@45 () Bool)
(declare-fun $abort_code@39 () Int)
(declare-fun inline$$1_Roles_has_role$4$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t2@1 () Bool)
(declare-fun $abort_code@40 () Int)
(declare-fun $abort_flag@46 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@43 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@41 () Bool)
(declare-fun $abort_code@36 () Int)
(declare-fun inline$$1_Roles_has_role$3$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t2@1 () Bool)
(declare-fun $abort_flag@42 () Bool)
(declare-fun $abort_code@37 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@35 () Int)
(declare-fun $abort_flag@40 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t12@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t10@1| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t4@0| () Int)
(declare-fun $abort_flag@38 () Bool)
(declare-fun $abort_code@33 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| () T@$Memory_197784)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| () T@$Memory_197784)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| () T@$Memory_197784)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t23@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@32 () Int)
(declare-fun $abort_flag@37 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@36 () Bool)
(declare-fun $abort_code@31 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$5$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t4@1 () Int)
(declare-fun $abort_flag@34 () Bool)
(declare-fun $abort_code@29 () Int)
(declare-fun $abort_flag@29 () Bool)
(declare-fun $abort_code@25 () Int)
(declare-fun $abort_flag@25 () Bool)
(declare-fun $abort_code@22 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t2@1 () Bool)
(declare-fun $abort_flag@35 () Bool)
(declare-fun $abort_code@30 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@33 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@31 () Bool)
(declare-fun $abort_code@27 () Int)
(declare-fun inline$$1_Roles_has_role$8$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t2@1 () Bool)
(declare-fun $abort_flag@32 () Bool)
(declare-fun $abort_code@28 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@26 () Int)
(declare-fun $abort_flag@30 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@28 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@26 () Bool)
(declare-fun $abort_code@23 () Int)
(declare-fun inline$$1_Roles_has_role$7$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t2@1 () Bool)
(declare-fun $abort_code@24 () Int)
(declare-fun $abort_flag@27 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@24 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@22 () Bool)
(declare-fun $abort_code@20 () Int)
(declare-fun inline$$1_Roles_has_role$6$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t2@1 () Bool)
(declare-fun $abort_flag@23 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t8@0| () Int)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t7@1| () Bool)
(declare-fun $abort_flag@20 () Bool)
(declare-fun $abort_code@18 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_197784)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_197784)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_197784)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@17 () Int)
(declare-fun $abort_flag@19 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@18 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun $abort_flag@11 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@17 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@15 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@13 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1 () Bool)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@13 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@10 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t3@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t5@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t26@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t27@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t28@0| () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_197239)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t22@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t29@0| () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t30@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t31@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@8| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_198906)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_198906)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_AccountOperationsCapability'@1| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@7| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_197239)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_197239)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_AccountFreezing_FreezingBit'@1| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@6| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@3 () T@$Memory_162243)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_162243)
(declare-fun $1_Event_EventHandleGenerator_$memory@2 () T@$Memory_162243)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Event_EventHandleGenerator'@2| () T@$1_Event_EventHandleGenerator)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@5| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_198033)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_198033)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t23@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t24@0| () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t11@1 () Int)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_194463)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_194463)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t24@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t4 () T@Vec_26904)
(declare-fun |inline$$1_Vector_empty'u8'$0$v@1| () T@Vec_26904)
(declare-fun |inline$$1_Vector_empty'u8'$1$v@1| () T@Vec_26904)
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
(declare-fun inline$$Not$0$dst@1 () Bool)
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
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t18@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t19@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@4| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@3| () T@$Memory_186135)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| () T@$Memory_186135)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@2| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@3| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_186135)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_186135)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_162243)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_162243)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Event_EventHandleGenerator'@1| () T@$1_Event_EventHandleGenerator)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_196986)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_196986)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_DesignatedDealer_Dealer'@1| () T@$1_DesignatedDealer_Dealer)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t6@0 () Int)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t9@0 () Bool)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t5@0 () Bool)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t4@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_169787)
(declare-fun |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_169787)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_169787)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t8@0 () Int)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t3@0 () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t12@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t6@0| () Int)
(declare-fun $t9 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2 () T@$Memory_176491)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_176491)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_176491)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_173389)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_175015)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_177044)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_176963)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_178471)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_177143)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_179650)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_179714)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_185804)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_187290)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_190428)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_187746)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_194284)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_194736)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_177207)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_197206)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_197617)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_200211)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_191004)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_190693)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_191672)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_191608)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_225005)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_177271)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_177335)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_AccountCreationScripts_create_designated_dealer$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 648589) (let ((L2_correct  (and (=> (= (ControlFlow 0 453437) (- 0 662505)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) _$t2)) (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) _$t2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (and _$t5 (let ((addr 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr)))))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t5) (let ((addr@@0 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@0)))))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t2 0)) (= _$t2 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) _$t2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_26904| _$t3)) 32))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) _$t2)) (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) _$t2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (and _$t5 (let ((addr@@1 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@1)))))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t5) (let ((addr@@2 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@2) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@2)))))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t2 0)) (= _$t2 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) _$t2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_26904| _$t3)) 32))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (=> (= (ControlFlow 0 453437) (- 0 662786)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (= 5 $t8@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)) (= 7 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) _$t2) (= 6 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) _$t2) (= 6 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t6)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t8@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t8@0))) (and (and _$t5 (let ((addr@@3 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@3))))) (= 7 $t8@0))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2)) (= 6 $t8@0))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2)) (= 1 $t8@0))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t8@0))) (and (and (not _$t5) (let ((addr@@4 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@4) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@4))))) (= 7 $t8@0))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2)) (= 6 $t8@0))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2)) (= 1 $t8@0))) (and (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t8@0))) (and (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t8@0))) (and (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t8@0))) (and (= _$t2 0) (= 7 $t8@0))) (and (= _$t2 1) (= 7 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) _$t2) (= 6 $t8@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t8@0))) (and (not (= (+ 16 (|l#Vec_26904| _$t3)) 32)) (= 7 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t7)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t7)) 1)) (= 3 $t8@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t8@0))) (= 7 $t8@0)) (= 2 $t8@0)) (= 5 $t8@0)) (= 6 $t8@0)) (= 3 $t8@0)))))))
(let ((anon7_Then_correct  (=> (and (and $abort_flag@62 (= $abort_code@54 $abort_code@54)) (and (= $t8@0 $abort_code@54) (= (ControlFlow 0 452509) 453437))) L2_correct)))
(let ((anon6_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t8@0 $abort_code@1) (= (ControlFlow 0 453451) 453437))) L2_correct)))
(let ((anon7_Else_correct  (=> (not $abort_flag@62) (=> (and (= $t10 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (= $t11 ($1_DiemAccount_CreateAccountEvent _$t2 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@5) _$t2))))) (and (=> (= (ControlFlow 0 452495) (- 0 661960)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0)))) (and (=> (= (ControlFlow 0 452495) (- 0 661973)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (and (=> (= (ControlFlow 0 452495) (- 0 661988)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) _$t2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) _$t2)) (and (=> (= (ControlFlow 0 452495) (- 0 661997)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) _$t2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) _$t2)) (and (=> (= (ControlFlow 0 452495) (- 0 662006)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 452495) (- 0 662016)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 452495) (- 0 662028)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 452495) (- 0 662046)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 452495) (- 0 662060)) (not (and _$t5 (let ((addr@@5 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@5))))))) (=> (not (and _$t5 (let ((addr@@6 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6)))))) (and (=> (= (ControlFlow 0 452495) (- 0 662071)) (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2)))) (=> (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 452495) (- 0 662083)) (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2)))) (=> (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 452495) (- 0 662095)) (not (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 452495) (- 0 662108)) (not (and (not _$t5) (let ((addr@@7 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@7))))))) (=> (not (and (not _$t5) (let ((addr@@8 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@8)))))) (and (=> (= (ControlFlow 0 452495) (- 0 662121)) (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2)))) (=> (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 452495) (- 0 662135)) (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2)))) (=> (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 452495) (- 0 662149)) (not (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 452495) (- 0 662161)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 452495) (- 0 662168)) (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 452495) (- 0 662186)) (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 452495) (- 0 662207)) (not (= _$t2 0))) (=> (not (= _$t2 0)) (and (=> (= (ControlFlow 0 452495) (- 0 662217)) (not (= _$t2 1))) (=> (not (= _$t2 1)) (and (=> (= (ControlFlow 0 452495) (- 0 662227)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) _$t2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) _$t2)) (and (=> (= (ControlFlow 0 452495) (- 0 662236)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 452495) (- 0 662253)) (not (not (= (+ 16 (|l#Vec_26904| _$t3)) 32)))) (=> (not (not (= (+ 16 (|l#Vec_26904| _$t3)) 32))) (and (=> (= (ControlFlow 0 452495) (- 0 662271)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 452495) (- 0 662283)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $t7)) 1))) (and (=> (= (ControlFlow 0 452495) (- 0 662301)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 452495) (- 0 662315)) (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory@4) _$t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory@4) _$t2) (and (=> (= (ControlFlow 0 452495) (- 0 662322)) (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@4) _$t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@4) _$t2) (and (=> (= (ControlFlow 0 452495) (- 0 662329)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@5) _$t2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@5) _$t2)) 2))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@5) _$t2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@5) _$t2)) 2)) (and (=> (= (ControlFlow 0 452495) (- 0 662336)) (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2) (and (=> (= (ControlFlow 0 452495) (- 0 662343)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (=> (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (and (=> (= (ControlFlow 0 452495) (- 0 662358)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2)) (and (=> (= (ControlFlow 0 452495) (- 0 662376)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13|) _$t2) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (and (=> (= (ControlFlow 0 452495) (- 0 662402)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2)) (and (=> (= (ControlFlow 0 452495) (- 0 662420)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (and (=> (= (ControlFlow 0 452495) (- 0 662446)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new (let ((len (|l#Multiset_123818| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11))))
(Multiset_123818 (|Store__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| expected) handle@@1)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| actual) handle@@1)) v@@60))
 :qid |AccountCreationScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |AccountCreationScriptsbpl.3327:13|
 :skolemid |120|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_123818| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11))))
(Multiset_123818 (|Store__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| expected@@0) handle@@2)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| actual@@0) handle@@2)) v@@61))
 :qid |AccountCreationScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |AccountCreationScriptsbpl.3327:13|
 :skolemid |120|
))))) (=> (= (ControlFlow 0 452495) (- 0 662471)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_123818| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11))))
(Multiset_123818 (|Store__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@62 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| actual@@1) handle@@3)) v@@62) (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| expected@@1) handle@@3)) v@@62))
 :qid |AccountCreationScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |AccountCreationScriptsbpl.3327:13|
 :skolemid |120|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|  (=> (= $es@2 $es@1) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@3) (= $1_DiemAccount_DiemAccount_$memory@4 $1_DiemAccount_DiemAccount_$memory@3)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8|) (= $abort_flag@62 true))) (and (and (= $abort_code@54 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1|) (= $1_Roles_RoleId_$memory@5 $1_Roles_RoleId_$memory@4)) (and (= $1_DesignatedDealer_Dealer_$memory@4 $1_DesignatedDealer_Dealer_$memory@3) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12|)))) (and (=> (= (ControlFlow 0 451211) 452509) anon7_Then_correct) (=> (= (ControlFlow 0 451211) 452495) anon7_Else_correct))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon59_Then_correct|  (=> $abort_flag@61 (=> (and (= $abort_code@53 $abort_code@53) (= $es@1 $es@0)) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@2) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory@2)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@11|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| $abort_code@53) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory@2)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 451205) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon54_Then_correct|  (=> (and (and |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t25@0| (or (or (or (or (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| 0) (= 7 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|)) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| 1) (= 7 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|) (= 6 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (not (= (+ 16 (|l#Vec_26904| _$t3)) 32)) (= 7 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|)))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $es@1 $es))) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory@2)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 451365) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon53_Then_correct|  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= $es@1 $es)) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| $abort_code@4) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory@2)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 451379) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon48_Then_correct|  (=> (and (and |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t17@0| (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t15@0|)) (= 5 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t15@0|)) 1)) (= 3 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t16@0|)) (= 5 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t16@0|)) 2)) (= 3 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|) (= 6 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and _$t5 (let ((addr@@9 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@9) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@9))))) (= 7 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|)) (= 6 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|)) (= 1 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and (not _$t5) (let ((addr@@10 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@10) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@10))))) (= 7 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|)) (= 6 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|)) (= 1 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|)))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $es@1 $es))) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 451721) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon47_Then_correct|  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= $es@1 $es)) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| $abort_code@2) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 451735) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon46_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= $es@1 $es)) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| $abort_code@1) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory) (= (ControlFlow 0 451749) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon45_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= $es@1 $es)) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| $abort_code@1) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory) (= (ControlFlow 0 451763) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon44_Then_correct|  (=> (and (and |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t10@0| (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t9@0|)) (= 5 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t9@0|)) 1)) (= 3 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|)))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $es@1 $es))) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory) (= (ControlFlow 0 451835) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon43_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t7@0| (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|)) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $es@1 $es))) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@12| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@1| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t8@0|) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory) (= (ControlFlow 0 451861) 451211)))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon59_Else_correct|  (=> (and (not $abort_flag@61) (= $es@2 $es@0)) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@2) (= $1_DiemAccount_DiemAccount_$memory@4 $1_DiemAccount_DiemAccount_$memory@2)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) (= $abort_flag@62 $abort_flag@61))) (and (and (= $abort_code@54 $abort_code@53) (= $1_Roles_RoleId_$memory@5 $1_Roles_RoleId_$memory@3)) (and (= $1_DesignatedDealer_Dealer_$memory@4 $1_DesignatedDealer_Dealer_$memory@2) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@13| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@11|)))) (and (=> (= (ControlFlow 0 451191) 452509) anon7_Then_correct) (=> (= (ControlFlow 0 451191) 452495) anon7_Else_correct))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L12_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6|) (= $abort_code@53 |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t6@1|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@11| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@10|) (= $abort_flag@61 true))) (and (=> (= (ControlFlow 0 447241) 451205) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon59_Then_correct|) (=> (= (ControlFlow 0 447241) 451191) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon59_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon21_Then_correct|  (=> (and $abort_flag@39 (= $abort_code@34 $abort_code@34)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t6@1| $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@10| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) (= (ControlFlow 0 451163) 447241))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon23_Then_correct|  (=> (and $abort_flag@58 (= $abort_code@50 $abort_code@50)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t6@1| $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@10| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8|) (= (ControlFlow 0 447235) 447241))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and $abort_flag@21 (= $abort_code@19 $abort_code@19)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t6@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@10| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 451177) 447241))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L10_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|) (= $abort_code@53 $abort_code@52)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@11| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) (= $abort_flag@61 $abort_flag@60))) (and (=> (= (ControlFlow 0 443205) 451205) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon59_Then_correct|) (=> (= (ControlFlow 0 443205) 451191) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon59_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L9_correct|  (=> (= $abort_flag@60 $abort_flag@59) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8|) (= $abort_code@52 $abort_code@51)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4|) (= (ControlFlow 0 443315) 443205))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (not $abort_flag@58) (=> (and (and (= $abort_code@51 $abort_code@50) (= $abort_flag@59 $abort_flag@58)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 447221) 443315))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@57) (= $abort_code@50 $abort_code@49)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@58 $abort_flag@57))) (and (=> (= (ControlFlow 0 447075) 447235) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 447075) 447221) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon23_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@50 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@58 true)) (and (=> (= (ControlFlow 0 444156) 447235) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 444156) 447221) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@57 (=> (and (and (= $abort_code@49 $abort_code@49) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@49)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 447089) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@49 $EXEC_FAILURE_CODE) (= $abort_flag@57 true)) (and (=> (= (ControlFlow 0 447141) 447089) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 447141) 447075) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 447139) 447141)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_197867 (|Store__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@49 $abort_code@48) (= $abort_flag@57 $abort_flag@56))) (and (=> (= (ControlFlow 0 447065) 447089) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 447065) 447075) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@56) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 447043) 447139) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 447043) 447065) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@56 (=> (and (and (= $abort_code@48 $abort_code@48) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@48)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 447155) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@56 $abort_flag@55)) (and (= $abort_code@48 $abort_code@47) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 446995) 447155) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 446995) 447043) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@56 true)) (and (= $abort_code@48 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 447025) 447155) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 447025) 447043) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 446967) 447025) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 446967) 446995) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$4$dst@1 (= (ControlFlow 0 447031) 446967)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 446814) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= inline$$Not$4$dst@1 inline$$Not$4$dst@1))) (and (=> (= (ControlFlow 0 446798) 447031) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 446798) 446814) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$4$anon0_correct  (=> (and (= inline$$Not$4$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1|)) (= (ControlFlow 0 446758) 446798)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$1$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= (ControlFlow 0 446764) 446758)) inline$$Not$4$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$1$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 446718) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@55) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@1))) (and (=> (= (ControlFlow 0 446702) 446764) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 446702) 446718) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@55 (=> (and (and (= $abort_code@47 $abort_code@47) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@47)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 447169) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$1$L9_correct  (=> (= $abort_flag@55 true) (=> (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@0) (= $abort_code@47 inline$$1_Roles_can_hold_balance$1$$t4@1)) (and (=> (= (ControlFlow 0 446592) 447169) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 446592) 446702) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Then_correct  (=> (and (and $abort_flag@53 (= $abort_code@45 $abort_code@45)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@45) (= (ControlFlow 0 446586) 446592))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Then_correct  (=> (and (and $abort_flag@48 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@41) (= (ControlFlow 0 446624) 446592))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Then_correct  (=> (and (and $abort_flag@44 (= $abort_code@38 $abort_code@38)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@38) (= (ControlFlow 0 446656) 446592))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_flag@55 $abort_flag@54)) (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_code@47 $abort_code@46))) (and (=> (= (ControlFlow 0 446572) 447169) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 446572) 446702) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Else_correct  (=> (and (not $abort_flag@53) (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1) (= $abort_code@46 $abort_code@45)) (and (= $abort_flag@54 $abort_flag@53) (= (ControlFlow 0 446560) 446572))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@52) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1) (= $abort_flag@53 $abort_flag@52))) (and (=> (= (ControlFlow 0 446518) 446586) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 446518) 446560) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct  (=> (and (and $abort_flag@52 (= $abort_code@45 $abort_code@45)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@0) (= $abort_flag@53 true))) (and (=> (= (ControlFlow 0 446536) 446586) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 446536) 446560) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Then_correct  (=> $abort_flag@50 (=> (and (and (= $abort_code@43 $abort_code@43) (= $abort_flag@52 true)) (and (= $abort_code@45 $abort_code@43) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@0))) (and (=> (= (ControlFlow 0 446442) 446536) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 446442) 446518) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t2@1) (= $abort_flag@52 $abort_flag@51)) (and (= $abort_code@45 $abort_code@44) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$t2@1))) (and (=> (= (ControlFlow 0 446378) 446536) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 446378) 446518) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Else_correct  (=> (and (and (and (not $abort_flag@50) (= inline$$1_Roles_has_role$5$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$5$$t6@2))) (and (= inline$$1_Roles_has_role$5$$t9@1 (= inline$$1_Roles_has_role$5$$t8@1 2)) (= inline$$1_Roles_has_role$5$$t9@1 inline$$1_Roles_has_role$5$$t9@1))) (and (and (= $abort_flag@51 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t9@1)) (and (= $abort_code@44 $abort_code@43) (= (ControlFlow 0 446424) 446378)))) inline$$1_Roles_has_role$5$L3_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Then$1_correct  (=> (= $abort_code@43 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@50 true) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@0)) (and (=> (= (ControlFlow 0 446494) 446442) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 446494) 446424) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= (ControlFlow 0 446492) 446494)) inline$$1_Roles_has_role$5$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$5$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= $abort_code@43 $abort_code@42)) (and (= $abort_flag@50 $abort_flag@49) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@1))) (and (=> (= (ControlFlow 0 446396) 446442) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 446396) 446424) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon9_Then_correct  (=> inline$$1_Roles_has_role$5$$t5@1 (and (=> (= (ControlFlow 0 446382) 446492) inline$$1_Roles_has_role$5$anon10_Then_correct) (=> (= (ControlFlow 0 446382) 446396) inline$$1_Roles_has_role$5$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$5$$t5@1) (= false false)) (=> (and (and (= $abort_flag@51 $abort_flag@49) (= inline$$1_Roles_has_role$5$$t2@1 false)) (and (= $abort_code@44 $abort_code@42) (= (ControlFlow 0 446366) 446378))) inline$$1_Roles_has_role$5$L3_correct))))
(let ((inline$$1_Roles_has_role$5$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$5$$t4@0 inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)))) (and (=> (= (ControlFlow 0 446346) 446382) inline$$1_Roles_has_role$5$anon9_Then_correct) (=> (= (ControlFlow 0 446346) 446366) inline$$1_Roles_has_role$5$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 446500) 446346)) inline$$1_Roles_has_role$5$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$1$$t1@1) (= (ControlFlow 0 446542) 446500)) inline$$1_Roles_has_designated_dealer_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$1$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 true) (= $abort_code@46 $abort_code@42)) (and (= $abort_flag@54 $abort_flag@49) (= (ControlFlow 0 446610) 446572))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Else_correct  (=> (not $abort_flag@48) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1) (= inline$$1_Roles_can_hold_balance$1$$t1@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1)) (and (= $abort_flag@49 $abort_flag@48) (= $abort_code@42 $abort_code@41))) (and (=> (= (ControlFlow 0 445860) 446610) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 445860) 446542) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@47) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1) (= $abort_flag@48 $abort_flag@47))) (and (=> (= (ControlFlow 0 445818) 446624) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 445818) 445860) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@47 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@0) (= $abort_flag@48 true))) (and (=> (= (ControlFlow 0 445836) 446624) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 445836) 445860) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Then_correct  (=> $abort_flag@45 (=> (and (and (= $abort_code@39 $abort_code@39) (= $abort_code@41 $abort_code@39)) (and (= $abort_flag@47 true) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@0))) (and (=> (= (ControlFlow 0 445742) 445836) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 445742) 445818) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t2@1) (= $abort_code@41 $abort_code@40)) (and (= $abort_flag@47 $abort_flag@46) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$t2@1))) (and (=> (= (ControlFlow 0 445678) 445836) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 445678) 445818) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Else_correct  (=> (and (and (and (not $abort_flag@45) (= inline$$1_Roles_has_role$4$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$4$$t6@2))) (and (= inline$$1_Roles_has_role$4$$t9@1 (= inline$$1_Roles_has_role$4$$t8@1 6)) (= inline$$1_Roles_has_role$4$$t9@1 inline$$1_Roles_has_role$4$$t9@1))) (and (and (= $abort_code@40 $abort_code@39) (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t9@1)) (and (= $abort_flag@46 $abort_flag@45) (= (ControlFlow 0 445724) 445678)))) inline$$1_Roles_has_role$4$L3_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Then$1_correct  (=> (= $abort_flag@45 true) (=> (and (= $abort_code@39 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@0)) (and (=> (= (ControlFlow 0 445794) 445742) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 445794) 445724) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= (ControlFlow 0 445792) 445794)) inline$$1_Roles_has_role$4$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$4$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= $abort_flag@45 $abort_flag@44)) (and (= $abort_code@39 $abort_code@38) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@1))) (and (=> (= (ControlFlow 0 445696) 445742) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 445696) 445724) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon9_Then_correct  (=> inline$$1_Roles_has_role$4$$t5@1 (and (=> (= (ControlFlow 0 445682) 445792) inline$$1_Roles_has_role$4$anon10_Then_correct) (=> (= (ControlFlow 0 445682) 445696) inline$$1_Roles_has_role$4$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$4$$t5@1) (= false false)) (=> (and (and (= $abort_code@40 $abort_code@38) (= inline$$1_Roles_has_role$4$$t2@1 false)) (and (= $abort_flag@46 $abort_flag@44) (= (ControlFlow 0 445666) 445678))) inline$$1_Roles_has_role$4$L3_correct))))
(let ((inline$$1_Roles_has_role$4$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$4$$t4@0 inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)))) (and (=> (= (ControlFlow 0 445646) 445682) inline$$1_Roles_has_role$4$anon9_Then_correct) (=> (= (ControlFlow 0 445646) 445666) inline$$1_Roles_has_role$4$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 445800) 445646)) inline$$1_Roles_has_role$4$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$1$$ret0@1) (= (ControlFlow 0 445842) 445800)) inline$$1_Roles_has_child_VASP_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$1$$t1@1 true)) (and (= $abort_flag@49 $abort_flag@44) (= $abort_code@42 $abort_code@38))) (and (=> (= (ControlFlow 0 446642) 446610) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 446642) 446542) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Else_correct  (=> (not $abort_flag@44) (and (=> (= (ControlFlow 0 445162) 446642) inline$$1_Roles_can_hold_balance$1$anon14_Then_correct) (=> (= (ControlFlow 0 445162) 445842) inline$$1_Roles_can_hold_balance$1$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@43) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1) (= $abort_flag@44 $abort_flag@43))) (and (=> (= (ControlFlow 0 445130) 446656) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 445130) 445162) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@43 (= $abort_code@38 $abort_code@38)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_parent_VASP_role$1$$ret0@0) (= $abort_flag@44 true))) (and (=> (= (ControlFlow 0 445148) 446656) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 445148) 445162) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Then_correct  (=> $abort_flag@41 (=> (and (and (= $abort_code@36 $abort_code@36) (= $abort_flag@43 true)) (and (= $abort_code@38 $abort_code@36) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@0))) (and (=> (= (ControlFlow 0 445054) 445148) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 445054) 445130) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t2@1) (= $abort_flag@43 $abort_flag@42)) (and (= $abort_code@38 $abort_code@37) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$t2@1))) (and (=> (= (ControlFlow 0 444990) 445148) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 444990) 445130) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Else_correct  (=> (and (and (and (not $abort_flag@41) (= inline$$1_Roles_has_role$3$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$3$$t6@2))) (and (= inline$$1_Roles_has_role$3$$t9@1 (= inline$$1_Roles_has_role$3$$t8@1 5)) (= inline$$1_Roles_has_role$3$$t9@1 inline$$1_Roles_has_role$3$$t9@1))) (and (and (= $abort_flag@42 $abort_flag@41) (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t9@1)) (and (= $abort_code@37 $abort_code@36) (= (ControlFlow 0 445036) 444990)))) inline$$1_Roles_has_role$3$L3_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Then$1_correct  (=> (= $abort_code@36 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@41 true) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@0)) (and (=> (= (ControlFlow 0 445106) 445054) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 445106) 445036) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= (ControlFlow 0 445104) 445106)) inline$$1_Roles_has_role$3$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$3$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= $abort_code@36 $abort_code@35)) (and (= $abort_flag@41 $abort_flag@40) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@1))) (and (=> (= (ControlFlow 0 445008) 445054) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 445008) 445036) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon9_Then_correct  (=> inline$$1_Roles_has_role$3$$t5@1 (and (=> (= (ControlFlow 0 444994) 445104) inline$$1_Roles_has_role$3$anon10_Then_correct) (=> (= (ControlFlow 0 444994) 445008) inline$$1_Roles_has_role$3$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$3$$t5@1) (= false false)) (=> (and (and (= $abort_flag@42 $abort_flag@40) (= inline$$1_Roles_has_role$3$$t2@1 false)) (and (= $abort_code@37 $abort_code@35) (= (ControlFlow 0 444978) 444990))) inline$$1_Roles_has_role$3$L3_correct))))
(let ((inline$$1_Roles_has_role$3$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$3$$t4@0 inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)))) (and (=> (= (ControlFlow 0 444958) 444994) inline$$1_Roles_has_role$3$anon9_Then_correct) (=> (= (ControlFlow 0 444958) 444978) inline$$1_Roles_has_role$3$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 445112) 444958)) inline$$1_Roles_has_role$3$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 445154) 445112)) inline$$1_Roles_has_parent_VASP_role$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$1$$t1@1 (= (ControlFlow 0 446662) 445154)) inline$$1_Roles_can_hold_balance$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$1$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 444150) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not $abort_flag@40) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 444134) 446662) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 444134) 444150) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|  (=> $abort_flag@40 (=> (and (and (= $abort_code@35 $abort_code@35) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@35)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 447183) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 444092) 447183) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 444092) 444134) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= (ControlFlow 0 444098) 444092)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 447209) 444156))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 443987) 447209) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 443987) 444098) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon22_Then_correct|  (=> inline$$Not$3$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t12@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 447213) 443987)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon22_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= $abort_code@51 $abort_code@35) (= $abort_flag@59 $abort_flag@40)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 443313) 443315))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L9_correct|))))
(let ((inline$$Not$3$anon0_correct  (=> (= inline$$Not$3$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t10@1|)) (and (=> (= (ControlFlow 0 443297) 447213) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 443297) 443313) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon22_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L5_correct|  (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t4@0|)) (= (ControlFlow 0 443303) 443297)) inline$$Not$3$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon21_Else_correct|  (=> (not $abort_flag@39) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) (= $abort_code@35 $abort_code@34)) (and (= $abort_flag@40 $abort_flag@39) (= (ControlFlow 0 451149) 443303))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L5_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon31_Else_correct|  (=> (and (and (not $abort_flag@38) (= $abort_flag@39 $abort_flag@38)) (and (= $abort_code@34 $abort_code@33) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|))) (and (=> (= (ControlFlow 0 451001) 451163) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 451001) 451149) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon21_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|  (=> (= $abort_flag@39 true) (=> (and (= $abort_code@34 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6|)) (and (=> (= (ControlFlow 0 448082) 451163) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 448082) 451149) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon21_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon31_Then_correct|  (=> $abort_flag@38 (=> (and (and (= $abort_code@33 $abort_code@33) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| $abort_code@33)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|) (= (ControlFlow 0 451015) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (=> (and (= $abort_code@33 $EXEC_FAILURE_CODE) (= $abort_flag@38 true)) (and (=> (= (ControlFlow 0 451067) 451015) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon31_Then_correct|) (=> (= (ControlFlow 0 451067) 451001) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 451065) 451067)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| ($Memory_197784 (|Store__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|)) (and (= $abort_code@33 $abort_code@32) (= $abort_flag@38 $abort_flag@37))) (and (=> (= (ControlFlow 0 450991) 451015) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon31_Then_correct|) (=> (= (ControlFlow 0 450991) 451001) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon29_Else_correct|  (=> (and (not $abort_flag@37) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t23@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1|))) (and (=> (= (ControlFlow 0 450969) 451065) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon30_Then_correct|) (=> (= (ControlFlow 0 450969) 450991) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon29_Then_correct|  (=> $abort_flag@37 (=> (and (and (= $abort_code@32 $abort_code@32) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| $abort_code@32)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 451081) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1|) (= $abort_flag@37 $abort_flag@36)) (and (= $abort_code@32 $abort_code@31) (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1|))) (and (=> (= (ControlFlow 0 450921) 451081) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon29_Then_correct|) (=> (= (ControlFlow 0 450921) 450969) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0|) (= $abort_flag@37 true)) (and (= $abort_code@32 |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@0|))) (and (=> (= (ControlFlow 0 450951) 451081) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon29_Then_correct|) (=> (= (ControlFlow 0 450951) 450969) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$1$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 450893) 450951) |inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 450893) 450921) |inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon28_Then_correct|  (=> (and inline$$Not$5$dst@1 (= (ControlFlow 0 450957) 450893)) |inline$$1_Diem_zero'$1_XUS_XUS'$1$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon28_Else_correct|  (=> (not inline$$Not$5$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 450740) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t21@0|) (= inline$$Not$5$dst@1 inline$$Not$5$dst@1))) (and (=> (= (ControlFlow 0 450724) 450957) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon28_Then_correct|) (=> (= (ControlFlow 0 450724) 450740) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon28_Else_correct|))))))
(let ((inline$$Not$5$anon0_correct  (=> (and (= inline$$Not$5$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t18@1|)) (= (ControlFlow 0 450684) 450724)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$2$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0|)) (= (ControlFlow 0 450690) 450684)) inline$$Not$5$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$2$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 450644) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon26_Else_correct|  (=> (and (not $abort_flag@36) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t17@0|) (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@1))) (and (=> (= (ControlFlow 0 450628) 450690) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon27_Then_correct|) (=> (= (ControlFlow 0 450628) 450644) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon26_Then_correct|  (=> $abort_flag@36 (=> (and (and (= $abort_code@31 $abort_code@31) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| $abort_code@31)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 451095) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$2$L9_correct  (=> (= $abort_flag@36 true) (=> (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@0) (= $abort_code@31 inline$$1_Roles_can_hold_balance$2$$t4@1)) (and (=> (= (ControlFlow 0 450518) 451095) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon26_Then_correct|) (=> (= (ControlFlow 0 450518) 450628) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Then_correct  (=> (and (and $abort_flag@34 (= $abort_code@29 $abort_code@29)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@29) (= (ControlFlow 0 450512) 450518))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@25) (= (ControlFlow 0 450550) 450518))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Then_correct  (=> (and (and $abort_flag@25 (= $abort_code@22 $abort_code@22)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@22) (= (ControlFlow 0 450582) 450518))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_flag@36 $abort_flag@35)) (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_code@31 $abort_code@30))) (and (=> (= (ControlFlow 0 450498) 451095) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon26_Then_correct|) (=> (= (ControlFlow 0 450498) 450628) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Else_correct  (=> (and (not $abort_flag@34) (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1) (= $abort_code@30 $abort_code@29)) (and (= $abort_flag@35 $abort_flag@34) (= (ControlFlow 0 450486) 450498))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@33) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1) (= $abort_flag@34 $abort_flag@33))) (and (=> (= (ControlFlow 0 450444) 450512) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 450444) 450486) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct  (=> (and (and $abort_flag@33 (= $abort_code@29 $abort_code@29)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@0) (= $abort_flag@34 true))) (and (=> (= (ControlFlow 0 450462) 450512) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 450462) 450486) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Then_correct  (=> $abort_flag@31 (=> (and (and (= $abort_code@27 $abort_code@27) (= $abort_flag@33 true)) (and (= $abort_code@29 $abort_code@27) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@0))) (and (=> (= (ControlFlow 0 450368) 450462) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 450368) 450444) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t2@1) (= $abort_flag@33 $abort_flag@32)) (and (= $abort_code@29 $abort_code@28) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$t2@1))) (and (=> (= (ControlFlow 0 450304) 450462) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 450304) 450444) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Else_correct  (=> (and (and (and (not $abort_flag@31) (= inline$$1_Roles_has_role$8$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$8$$t6@2))) (and (= inline$$1_Roles_has_role$8$$t9@1 (= inline$$1_Roles_has_role$8$$t8@1 2)) (= inline$$1_Roles_has_role$8$$t9@1 inline$$1_Roles_has_role$8$$t9@1))) (and (and (= $abort_flag@32 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t9@1)) (and (= $abort_code@28 $abort_code@27) (= (ControlFlow 0 450350) 450304)))) inline$$1_Roles_has_role$8$L3_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Then$1_correct  (=> (= $abort_code@27 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@31 true) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@0)) (and (=> (= (ControlFlow 0 450420) 450368) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 450420) 450350) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= (ControlFlow 0 450418) 450420)) inline$$1_Roles_has_role$8$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$8$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= $abort_code@27 $abort_code@26)) (and (= $abort_flag@31 $abort_flag@30) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@1))) (and (=> (= (ControlFlow 0 450322) 450368) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 450322) 450350) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon9_Then_correct  (=> inline$$1_Roles_has_role$8$$t5@1 (and (=> (= (ControlFlow 0 450308) 450418) inline$$1_Roles_has_role$8$anon10_Then_correct) (=> (= (ControlFlow 0 450308) 450322) inline$$1_Roles_has_role$8$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$8$$t5@1) (= false false)) (=> (and (and (= $abort_flag@32 $abort_flag@30) (= inline$$1_Roles_has_role$8$$t2@1 false)) (and (= $abort_code@28 $abort_code@26) (= (ControlFlow 0 450292) 450304))) inline$$1_Roles_has_role$8$L3_correct))))
(let ((inline$$1_Roles_has_role$8$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$8$$t4@0 inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)))) (and (=> (= (ControlFlow 0 450272) 450308) inline$$1_Roles_has_role$8$anon9_Then_correct) (=> (= (ControlFlow 0 450272) 450292) inline$$1_Roles_has_role$8$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 450426) 450272)) inline$$1_Roles_has_role$8$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$2$$t1@1) (= (ControlFlow 0 450468) 450426)) inline$$1_Roles_has_designated_dealer_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$2$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 true) (= $abort_code@30 $abort_code@26)) (and (= $abort_flag@35 $abort_flag@30) (= (ControlFlow 0 450536) 450498))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Else_correct  (=> (not $abort_flag@29) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1) (= inline$$1_Roles_can_hold_balance$2$$t1@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1)) (and (= $abort_flag@30 $abort_flag@29) (= $abort_code@26 $abort_code@25))) (and (=> (= (ControlFlow 0 449786) 450536) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 449786) 450468) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@28) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1) (= $abort_flag@29 $abort_flag@28))) (and (=> (= (ControlFlow 0 449744) 450550) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 449744) 449786) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@28 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@0) (= $abort_flag@29 true))) (and (=> (= (ControlFlow 0 449762) 450550) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 449762) 449786) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Then_correct  (=> $abort_flag@26 (=> (and (and (= $abort_code@23 $abort_code@23) (= $abort_code@25 $abort_code@23)) (and (= $abort_flag@28 true) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@0))) (and (=> (= (ControlFlow 0 449668) 449762) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 449668) 449744) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t2@1) (= $abort_code@25 $abort_code@24)) (and (= $abort_flag@28 $abort_flag@27) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$t2@1))) (and (=> (= (ControlFlow 0 449604) 449762) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 449604) 449744) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Else_correct  (=> (and (and (and (not $abort_flag@26) (= inline$$1_Roles_has_role$7$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$7$$t6@2))) (and (= inline$$1_Roles_has_role$7$$t9@1 (= inline$$1_Roles_has_role$7$$t8@1 6)) (= inline$$1_Roles_has_role$7$$t9@1 inline$$1_Roles_has_role$7$$t9@1))) (and (and (= $abort_code@24 $abort_code@23) (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t9@1)) (and (= $abort_flag@27 $abort_flag@26) (= (ControlFlow 0 449650) 449604)))) inline$$1_Roles_has_role$7$L3_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Then$1_correct  (=> (= $abort_flag@26 true) (=> (and (= $abort_code@23 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@0)) (and (=> (= (ControlFlow 0 449720) 449668) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 449720) 449650) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= (ControlFlow 0 449718) 449720)) inline$$1_Roles_has_role$7$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$7$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= $abort_flag@26 $abort_flag@25)) (and (= $abort_code@23 $abort_code@22) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@1))) (and (=> (= (ControlFlow 0 449622) 449668) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 449622) 449650) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon9_Then_correct  (=> inline$$1_Roles_has_role$7$$t5@1 (and (=> (= (ControlFlow 0 449608) 449718) inline$$1_Roles_has_role$7$anon10_Then_correct) (=> (= (ControlFlow 0 449608) 449622) inline$$1_Roles_has_role$7$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$7$$t5@1) (= false false)) (=> (and (and (= $abort_code@24 $abort_code@22) (= inline$$1_Roles_has_role$7$$t2@1 false)) (and (= $abort_flag@27 $abort_flag@25) (= (ControlFlow 0 449592) 449604))) inline$$1_Roles_has_role$7$L3_correct))))
(let ((inline$$1_Roles_has_role$7$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$7$$t4@0 inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)))) (and (=> (= (ControlFlow 0 449572) 449608) inline$$1_Roles_has_role$7$anon9_Then_correct) (=> (= (ControlFlow 0 449572) 449592) inline$$1_Roles_has_role$7$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 449726) 449572)) inline$$1_Roles_has_role$7$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$2$$ret0@1) (= (ControlFlow 0 449768) 449726)) inline$$1_Roles_has_child_VASP_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$2$$t1@1 true)) (and (= $abort_flag@30 $abort_flag@25) (= $abort_code@26 $abort_code@22))) (and (=> (= (ControlFlow 0 450568) 450536) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 450568) 450468) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Else_correct  (=> (not $abort_flag@25) (and (=> (= (ControlFlow 0 449088) 450568) inline$$1_Roles_can_hold_balance$2$anon14_Then_correct) (=> (= (ControlFlow 0 449088) 449768) inline$$1_Roles_can_hold_balance$2$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@24) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1) (= $abort_flag@25 $abort_flag@24))) (and (=> (= (ControlFlow 0 449056) 450582) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 449056) 449088) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@24 (= $abort_code@22 $abort_code@22)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_parent_VASP_role$2$$ret0@0) (= $abort_flag@25 true))) (and (=> (= (ControlFlow 0 449074) 450582) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 449074) 449088) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Then_correct  (=> $abort_flag@22 (=> (and (and (= $abort_code@20 $abort_code@20) (= $abort_flag@24 true)) (and (= $abort_code@22 $abort_code@20) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@0))) (and (=> (= (ControlFlow 0 448980) 449074) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 448980) 449056) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t2@1) (= $abort_flag@24 $abort_flag@23)) (and (= $abort_code@22 $abort_code@21) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$t2@1))) (and (=> (= (ControlFlow 0 448916) 449074) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 448916) 449056) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Else_correct  (=> (and (and (and (not $abort_flag@22) (= inline$$1_Roles_has_role$6$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$6$$t6@2))) (and (= inline$$1_Roles_has_role$6$$t9@1 (= inline$$1_Roles_has_role$6$$t8@1 5)) (= inline$$1_Roles_has_role$6$$t9@1 inline$$1_Roles_has_role$6$$t9@1))) (and (and (= $abort_flag@23 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t9@1)) (and (= $abort_code@21 $abort_code@20) (= (ControlFlow 0 448962) 448916)))) inline$$1_Roles_has_role$6$L3_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Then$1_correct  (=> (= $abort_code@20 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@22 true) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@0)) (and (=> (= (ControlFlow 0 449032) 448980) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 449032) 448962) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= (ControlFlow 0 449030) 449032)) inline$$1_Roles_has_role$6$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$6$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= $abort_code@20 $abort_code@19)) (and (= $abort_flag@22 $abort_flag@21) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@1))) (and (=> (= (ControlFlow 0 448934) 448980) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 448934) 448962) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon9_Then_correct  (=> inline$$1_Roles_has_role$6$$t5@1 (and (=> (= (ControlFlow 0 448920) 449030) inline$$1_Roles_has_role$6$anon10_Then_correct) (=> (= (ControlFlow 0 448920) 448934) inline$$1_Roles_has_role$6$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$6$$t5@1) (= false false)) (=> (and (and (= $abort_flag@23 $abort_flag@21) (= inline$$1_Roles_has_role$6$$t2@1 false)) (and (= $abort_code@21 $abort_code@19) (= (ControlFlow 0 448904) 448916))) inline$$1_Roles_has_role$6$L3_correct))))
(let ((inline$$1_Roles_has_role$6$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$6$$t4@0 inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)))) (and (=> (= (ControlFlow 0 448884) 448920) inline$$1_Roles_has_role$6$anon9_Then_correct) (=> (= (ControlFlow 0 448884) 448904) inline$$1_Roles_has_role$6$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 449038) 448884)) inline$$1_Roles_has_role$6$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 449080) 449038)) inline$$1_Roles_has_parent_VASP_role$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= (ControlFlow 0 450588) 449080)) inline$$1_Roles_can_hold_balance$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$2$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 448076) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon24_Else_correct|  (=> (and (not $abort_flag@21) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t14@0|) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 448060) 450588) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon25_Then_correct|) (=> (= (ControlFlow 0 448060) 448076) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon24_Then_correct|  (=> $abort_flag@21 (=> (and (and (= $abort_code@19 $abort_code@19) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 451109) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0|)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 448018) 451109) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon24_Then_correct|) (=> (= (ControlFlow 0 448018) 448060) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t10@0|) (= (ControlFlow 0 448024) 448018)) inline$$1_DiemAccount_exists_at$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 451135) 448082))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 447913) 451135) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon23_Then_correct|) (=> (= (ControlFlow 0 447913) 448024) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon20_Then_correct|  (=> inline$$Not$2$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 451139) 447913)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$1$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon20_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= $abort_code@35 $abort_code@19)) (and (= $abort_flag@40 $abort_flag@21) (= (ControlFlow 0 443259) 443303))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L5_correct|))))
(let ((inline$$Not$2$anon0_correct  (=> (= inline$$Not$2$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t7@1|)) (and (=> (= (ControlFlow 0 443245) 451139) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 443245) 443259) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon20_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon19_Then_correct|  (=> _$t5 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t4@0|)) (= (ControlFlow 0 443251) 443245)) inline$$Not$2$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon19_Else_correct|  (=> (and (not _$t5) (= $abort_flag@60 $abort_flag@21)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= $abort_code@52 $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 443201) 443205))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (not $abort_flag@21) (and (=> (= (ControlFlow 0 443193) 443251) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 443193) 443201) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon19_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@20) (= $abort_code@19 $abort_code@18)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@21 $abort_flag@20))) (and (=> (= (ControlFlow 0 443045) 451177) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 443045) 443193) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon18_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@19 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@21 true)) (and (=> (= (ControlFlow 0 440126) 451177) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 440126) 443193) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon18_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@20 (=> (and (and (= $abort_code@18 $abort_code@18) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@18)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 443059) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@18 $EXEC_FAILURE_CODE) (= $abort_flag@20 true)) (and (=> (= (ControlFlow 0 443111) 443059) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 443111) 443045) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 443109) 443111)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_197784 (|Store__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@18 $abort_code@17) (= $abort_flag@20 $abort_flag@19))) (and (=> (= (ControlFlow 0 443035) 443059) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 443035) 443045) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@19) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 443013) 443109) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 443013) 443035) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@19 (=> (and (and (= $abort_code@17 $abort_code@17) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@17)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 443125) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@19 $abort_flag@18)) (and (= $abort_code@17 $abort_code@16) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 442965) 443125) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 442965) 443013) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@19 true)) (and (= $abort_code@17 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 442995) 443125) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 442995) 443013) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 442937) 442995) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 442937) 442965) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 443001) 442937)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 442784) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 442768) 443001) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 442768) 442784) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1|)) (= (ControlFlow 0 442728) 442768)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= (ControlFlow 0 442734) 442728)) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 442688) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@18) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 442672) 442734) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 442672) 442688) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@18 (=> (and (and (= $abort_code@16 $abort_code@16) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@16)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 443139) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@18 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@16 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 442562) 443139) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 442562) 442672) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@16 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@14) (= (ControlFlow 0 442556) 442562))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@10) (= (ControlFlow 0 442594) 442562))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@7) (= (ControlFlow 0 442626) 442562))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@18 $abort_flag@17)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@16 $abort_code@15))) (and (=> (= (ControlFlow 0 442542) 443139) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 442542) 442672) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@16) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@15 $abort_code@14)) (and (= $abort_flag@17 $abort_flag@16) (= (ControlFlow 0 442530) 442542))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@15) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@16 $abort_flag@15))) (and (=> (= (ControlFlow 0 442488) 442556) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 442488) 442530) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@15 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@16 true))) (and (=> (= (ControlFlow 0 442506) 442556) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 442506) 442530) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@13 (=> (and (and (= $abort_code@12 $abort_code@12) (= $abort_flag@15 true)) (and (= $abort_code@14 $abort_code@12) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 442412) 442506) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 442412) 442488) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@15 $abort_flag@14)) (and (= $abort_code@14 $abort_code@13) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 442348) 442506) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 442348) 442488) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@13) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@14 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@13 $abort_code@12) (= (ControlFlow 0 442394) 442348)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@12 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@13 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 442464) 442412) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 442464) 442394) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 442462) 442464)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@12 $abort_code@11)) (and (= $abort_flag@13 $abort_flag@12) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 442366) 442412) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 442366) 442394) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 442352) 442462) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 442352) 442366) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@14 $abort_flag@12) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@13 $abort_code@11) (= (ControlFlow 0 442336) 442348))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 442316) 442352) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 442316) 442336) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 442470) 442316)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 442512) 442470)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@15 $abort_code@11)) (and (= $abort_flag@17 $abort_flag@12) (= (ControlFlow 0 442580) 442542))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@11) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@12 $abort_flag@11) (= $abort_code@11 $abort_code@10))) (and (=> (= (ControlFlow 0 441830) 442580) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 441830) 442512) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@10) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@11 $abort_flag@10))) (and (=> (= (ControlFlow 0 441788) 442594) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 441788) 441830) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@10 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@11 true))) (and (=> (= (ControlFlow 0 441806) 442594) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 441806) 441830) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@8 (=> (and (and (= $abort_code@8 $abort_code@8) (= $abort_code@10 $abort_code@8)) (and (= $abort_flag@10 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 441712) 441806) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 441712) 441788) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@10 $abort_code@9)) (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 441648) 441806) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 441648) 441788) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@8) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@9 $abort_code@8) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@9 $abort_flag@8) (= (ControlFlow 0 441694) 441648)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@8 true) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 441764) 441712) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 441764) 441694) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 441762) 441764)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@8 $abort_code@7) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 441666) 441712) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 441666) 441694) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 441652) 441762) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 441652) 441666) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@9 $abort_code@7) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@9 $abort_flag@7) (= (ControlFlow 0 441636) 441648))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 441616) 441652) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 441616) 441636) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 441770) 441616)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 441812) 441770)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@12 $abort_flag@7) (= $abort_code@11 $abort_code@7))) (and (=> (= (ControlFlow 0 442612) 442580) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 442612) 442512) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 441132) 442612) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 441132) 441812) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@7 $abort_flag@6))) (and (=> (= (ControlFlow 0 441100) 442626) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 441100) 441132) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@7 true))) (and (=> (= (ControlFlow 0 441118) 442626) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 441118) 441132) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@4 (=> (and (and (= $abort_code@5 $abort_code@5) (= $abort_code@7 $abort_code@5)) (and (= $abort_flag@6 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 441024) 441118) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 441024) 441100) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_code@7 $abort_code@6)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 440960) 441118) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 440960) 441100) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@6 $abort_code@5) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@5 $abort_flag@4) (= (ControlFlow 0 441006) 440960)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 441076) 441024) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 441076) 441006) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 441074) 441076)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 440978) 441024) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 440978) 441006) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 440964) 441074) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 440964) 440978) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@6 $abort_code@4) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_flag@5 $abort_flag@3) (= (ControlFlow 0 440948) 440960))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 440928) 440964) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 440928) 440948) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 441082) 440928)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 441124) 441082)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= (ControlFlow 0 442632) 441124)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 440120) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 440104) 442632) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 440104) 440120) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@3 (=> (and (and (= $abort_code@4 $abort_code@4) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@4)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 443153) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 440062) 443153) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 440062) 440104) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 440068) 440062)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 443179) 440126))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 439957) 443179) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 439957) 440068) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon0_correct|  (=> (and (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t3@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= _$t5 _$t5) (|$IsValid'address'| |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t4@0|))) (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t4@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t4@0| |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t4@0|)) (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$$t5@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 443183) 439957)))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon40_correct|  (=> (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t26@0| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (=> (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t27@0| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t28@0| ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|))))) (and (and (= (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t26@0|) (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t22@0|) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t22@0|)))) (= (|$creation_events#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t26@0|) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t22@0|) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t22@0|))))) (and (not (= (|l#Vec_123943| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|)))) 0)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|)))) 0)))))) (and (and (and (not (= (|l#Vec_123982| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|)))) 0)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|)))) 0)))) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t29@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t28@0|)) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t30@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t27@0|) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $es) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t30@0|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_123818| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t29@0|))))
(Multiset_123818 (|Store__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t29@0|) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $es) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t30@0| stream_new@@2)))))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t31@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 451181) 443183))))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XUS_XUS'$0$anon0_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon58_Else_correct|  (=> (and (and (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@8|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_198906 (|Store__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1) (= (ControlFlow 0 438713) 451181))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon40_correct|)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon58_Then_correct|  (=> (and (and |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@8| (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_198906 (|Store__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_AccountOperationsCapability'@1|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0) (= (ControlFlow 0 451223) 451181))) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon40_correct|)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon57_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@7|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_197239 (|Store__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| false) (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 438699) 451223) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon58_Then_correct|) (=> (= (ControlFlow 0 438699) 438713) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon58_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon57_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@7| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_197239 (|Store__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_AccountFreezing_FreezingBit'@1|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 451235) 451223) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon58_Then_correct|) (=> (= (ControlFlow 0 451235) 438713) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon58_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon56_Else_correct|  (=> (and (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@6|) (= $1_Event_EventHandleGenerator_$memory@3 ($Memory_162243 (|Store__T@[Int]Bool_| (|domain#$Memory_162243| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| false) (|contents#$Memory_162243| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 438685) 451235) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon57_Then_correct|) (=> (= (ControlFlow 0 438685) 438699) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon57_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon56_Then_correct|  (=> (and |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@6| (= $1_Event_EventHandleGenerator_$memory@2 ($Memory_162243 (|Store__T@[Int]Bool_| (|domain#$Memory_162243| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_162243| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Event_EventHandleGenerator'@2|)))) (and (=> (= (ControlFlow 0 451247) 451235) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon57_Then_correct|) (=> (= (ControlFlow 0 451247) 438699) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon57_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon55_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@5|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_198033 (|Store__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| false) (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 438671) 451247) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon56_Then_correct|) (=> (= (ControlFlow 0 438671) 438685) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon56_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon55_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@5| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_198033 (|Store__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_DiemAccount'@1|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 451259) 451247) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon56_Then_correct|) (=> (= (ControlFlow 0 451259) 438685) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon56_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon54_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t25@0|) (and (=> (= (ControlFlow 0 438659) 451259) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon55_Then_correct|) (=> (= (ControlFlow 0 438659) 438671) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon55_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon53_Else_correct|  (=> (not $abort_flag@3) (=> (and (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t22@0| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t23@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t24@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|)) (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t25@0|  (or (or (or (or (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| 0) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0| 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t21@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_26904| _$t3)) 32))))))) (and (=> (= (ControlFlow 0 438653) 451365) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon54_Then_correct|) (=> (= (ControlFlow 0 438653) 438659) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon54_Else_correct|))))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct  (=> (not $abort_flag@2) (=> (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2)) (and (=> (= (ControlFlow 0 438269) 451379) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon53_Then_correct|) (=> (= (ControlFlow 0 438269) 438653) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon53_Else_correct|))))))
(let ((inline$$1_DualAttestation_publish_credential$0$L3_correct  (=> (and (= $abort_code@4 inline$$1_DualAttestation_publish_credential$0$$t11@1) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 437973) 451379) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon53_Then_correct|) (=> (= (ControlFlow 0 437973) 438653) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon53_Else_correct|)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 438283) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 438335) 438283) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 438335) 438269) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_194463| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 438333) 438335)) inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_194463| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (= $1_DualAttestation_Credential_$memory@0 ($Memory_194463 (|Store__T@[Int]Bool_| (|domain#$Memory_194463| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_194463| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_DualAttestation_publish_credential$0$$t24@1)))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 438259) 438283) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 438259) 438269) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct  (=> (and (not $abort_flag@1) (= inline$$1_DualAttestation_publish_credential$0$$t24@1 ($1_DualAttestation_Credential _$t4 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 438237) 438333) inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct) (=> (= (ControlFlow 0 438237) 438259) inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@2) (= (ControlFlow 0 438349) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 438207) 438349) inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct) (=> (= (ControlFlow 0 438207) 438237) inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 438213) 438207)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@2) (= (ControlFlow 0 438363) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 438125) 438363) inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct) (=> (= (ControlFlow 0 438125) 438213) inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct  (=> (not $abort_flag@1) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 438131) 438125)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@2) (= (ControlFlow 0 438377) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (Vec_26904 (MapConstVec_16957 DefaultVecElem_16957) 0)) (and (=> (= (ControlFlow 0 438035) 438377) inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct) (=> (= (ControlFlow 0 438035) 438131) inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 438041) 438035)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@2) (= (ControlFlow 0 438391) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (Vec_26904 (MapConstVec_16957 DefaultVecElem_16957) 0)) (and (=> (= (ControlFlow 0 437999) 438391) inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct) (=> (= (ControlFlow 0 437999) 438041) inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 438005) 437999)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DualAttestation_publish_credential$0$$t18@0 inline$$1_DualAttestation_publish_credential$0$$t18@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t18@0) (= (ControlFlow 0 437967) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_DualAttestation_publish_credential$0$$t18@0) (= inline$$1_DualAttestation_publish_credential$0$$t18@0 6)) (and (= inline$$1_DualAttestation_publish_credential$0$$t18@0 inline$$1_DualAttestation_publish_credential$0$$t18@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 437951) 438005) inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct) (=> (= (ControlFlow 0 437951) 437967) inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DualAttestation_publish_credential$0$$t15@1)) (= (ControlFlow 0 437911) 437951)) inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t13@0) (=> (and (and (|$IsValid'address'| inline$$1_DualAttestation_publish_credential$0$$t14@0) (= inline$$1_DualAttestation_publish_credential$0$$t14@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_DualAttestation_publish_credential$0$$t15@1 (|Select__T@[Int]Bool_| (|domain#$Memory_194463| $1_DualAttestation_Credential_$memory) inline$$1_DualAttestation_publish_credential$0$$t14@0)) (= (ControlFlow 0 437917) 437911))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t13@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) 1)) (= 3 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (= inline$$1_DualAttestation_publish_credential$0$$t11@0 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t11@0) (= (ControlFlow 0 438463) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t10@0) (=> (and (= inline$$1_DualAttestation_publish_credential$0$$t12@0 (|$addr#$signer| _$t0)) (= inline$$1_DualAttestation_publish_credential$0$$t13@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))) (and (=> (= (ControlFlow 0 437855) 438463) inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct) (=> (= (ControlFlow 0 437855) 437917) inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct))))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t10@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (and (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 2))) (= 3 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (= inline$$1_DualAttestation_publish_credential$0$$t11@0 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t11@0) (= (ControlFlow 0 438519) 437973))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon0_correct  (=> (= inline$$1_DualAttestation_publish_credential$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (and (= inline$$1_DualAttestation_publish_credential$0$$t6@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t5@0))) (= inline$$1_DualAttestation_publish_credential$0$$t7@0 (|$addr#$signer| _$t0))) (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= _$t0 _$t0))) (and (and (= _$t4 _$t4) (= inline$$1_DualAttestation_publish_credential$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_DualAttestation_publish_credential$0$$t9@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0))) (= inline$$1_DualAttestation_publish_credential$0$$t10@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0)) (and (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 2)))))))) (and (=> (= (ControlFlow 0 437797) 438519) inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct) (=> (= (ControlFlow 0 437797) 437855) inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon24_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|) (=> (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t18@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t19@0| (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t18@0|)))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t20@0| (|$addr#$signer| _$t0)) (= (ControlFlow 0 438523) 437797))) inline$$1_DualAttestation_publish_credential$0$anon0_correct))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon52_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@4|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@3| ($Memory_186135 (|Store__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| false) (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 436804) 438523)) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon24_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon52_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@4| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| ($Memory_186135 (|Store__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@2|))) (= (ControlFlow 0 451391) 438523)) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon24_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon51_Else_correct|  (=> (and (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@3|) (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_186135 (|Store__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| false) (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|)))) (and (=> (= (ControlFlow 0 436790) 451391) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon52_Then_correct|) (=> (= (ControlFlow 0 436790) 436804) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon52_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon51_Then_correct|  (=> (and |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@3| (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_186135 (|Store__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1|)))) (and (=> (= (ControlFlow 0 451403) 451391) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon52_Then_correct|) (=> (= (ControlFlow 0 451403) 436804) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon52_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon50_Else_correct|  (=> (and (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@2|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_162243 (|Store__T@[Int]Bool_| (|domain#$Memory_162243| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| false) (|contents#$Memory_162243| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 436776) 451403) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon51_Then_correct|) (=> (= (ControlFlow 0 436776) 436790) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon51_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon50_Then_correct|  (=> (and |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@2| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_162243 (|Store__T@[Int]Bool_| (|domain#$Memory_162243| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_162243| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_Event_EventHandleGenerator'@1|)))) (and (=> (= (ControlFlow 0 451415) 451403) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon51_Then_correct|) (=> (= (ControlFlow 0 451415) 436790) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon51_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon49_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@1|) (=> (and (= $1_DesignatedDealer_Dealer_$memory@1 ($Memory_196986 (|Store__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| false) (|contents#$Memory_196986| $1_DesignatedDealer_Dealer_$memory))) (= $1_DesignatedDealer_Dealer_$memory@2 $1_DesignatedDealer_Dealer_$memory@1)) (and (=> (= (ControlFlow 0 436762) 451415) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon50_Then_correct|) (=> (= (ControlFlow 0 436762) 436776) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon50_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon49_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'bool'@1| (=> (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_196986 (|Store__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$temp_0'$1_DesignatedDealer_Dealer'@1|))) (= $1_DesignatedDealer_Dealer_$memory@2 $1_DesignatedDealer_Dealer_$memory@0)) (and (=> (= (ControlFlow 0 451427) 451415) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon50_Then_correct|) (=> (= (ControlFlow 0 451427) 436776) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon50_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon48_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t17@0|) (and (=> (= (ControlFlow 0 436750) 451427) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon49_Then_correct|) (=> (= (ControlFlow 0 436750) 436762) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon49_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon47_Else_correct|  (=> (not $abort_flag@1) (=> (and (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t15@0| (|$addr#$signer| _$t0))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t16@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t17@0|  (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t15@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t15@0|)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t16@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t16@0|)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|)) (and _$t5 (let ((addr@@11 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@11) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@11)))))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|))) (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t5) (let ((addr@@12 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@12) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@12)))))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t14@0|))) (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))) (and (=> (= (ControlFlow 0 436744) 451721) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon48_Then_correct|) (=> (= (ControlFlow 0 436744) 436750) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon48_Else_correct|))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_code@2 inline$$1_Roles_new_designated_dealer_role$0$$t6@0) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 436454) 451735) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 436454) 436744) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon47_Else_correct|))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon9_Then_correct  (=> inline$$1_Roles_new_designated_dealer_role$0$$t9@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_new_designated_dealer_role$0$$t6@0)) (and (= inline$$1_Roles_new_designated_dealer_role$0$$t6@0 inline$$1_Roles_new_designated_dealer_role$0$$t6@0) (= (ControlFlow 0 436448) 436454))) inline$$1_Roles_new_designated_dealer_role$0$L2_correct))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon8_Then_correct  (=> (and (and inline$$1_Roles_new_designated_dealer_role$0$$t5@0 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) (= 5 inline$$1_Roles_new_designated_dealer_role$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) 1)) (= 3 inline$$1_Roles_new_designated_dealer_role$0$$t6@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_Roles_new_designated_dealer_role$0$$t6@0)))) (and (= inline$$1_Roles_new_designated_dealer_role$0$$t6@0 inline$$1_Roles_new_designated_dealer_role$0$$t6@0) (= (ControlFlow 0 436526) 436454))) inline$$1_Roles_new_designated_dealer_role$0$L2_correct)))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon7_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 2) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 436406) 451735) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 436406) 436744) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon47_Else_correct|))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon10_Else_correct  (=> (and (and (not |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_169787 (|Store__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_169787| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 436380) 436406))) inline$$1_Roles_new_designated_dealer_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon10_Then_correct  (=> (and (and |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_169787 (|Store__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 436420) 436406))) inline$$1_Roles_new_designated_dealer_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon9_Else_correct  (=> (not inline$$1_Roles_new_designated_dealer_role$0$$t9@0) (and (=> (= (ControlFlow 0 436366) 436420) inline$$1_Roles_new_designated_dealer_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 436366) 436380) inline$$1_Roles_new_designated_dealer_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon8_Else_correct  (=> (and (not inline$$1_Roles_new_designated_dealer_role$0$$t5@0) (|$IsValid'u64'| 2)) (=> (and (and (= inline$$1_Roles_new_designated_dealer_role$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 2 0) (= inline$$1_Roles_new_designated_dealer_role$0$$t8@0 173345816))) (and (=> (= 2 1) (= inline$$1_Roles_new_designated_dealer_role$0$$t8@0 186537453)) (= inline$$1_Roles_new_designated_dealer_role$0$$t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 436360) 436448) inline$$1_Roles_new_designated_dealer_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 436360) 436366) inline$$1_Roles_new_designated_dealer_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon0_correct  (=> (and (= inline$$1_Roles_new_designated_dealer_role$0$$t2@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_designated_dealer_role$0$$t3@0 (|$addr#$signer| _$t0))) (=> (and (and (= _$t0 _$t0) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_Roles_new_designated_dealer_role$0$$t4@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_designated_dealer_role$0$$t5@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))) (and (=> (= (ControlFlow 0 436294) 436526) inline$$1_Roles_new_designated_dealer_role$0$anon8_Then_correct) (=> (= (ControlFlow 0 436294) 436360) inline$$1_Roles_new_designated_dealer_role$0$anon8_Else_correct))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon46_Else_correct|  (=> (and (and (not $abort_flag@0) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t12@0| (|$addr#$signer| _$t0))) (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t13@0| (|$addr#$signer| _$t0)) (= (ControlFlow 0 436530) 436294))) inline$$1_Roles_new_designated_dealer_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon45_Else_correct|  (=> (and (not $abort_flag@0) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 435735) 451749) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon46_Then_correct|) (=> (= (ControlFlow 0 435735) 436530) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon46_Else_correct|)))))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer _$t2)) (and (=> (= (ControlFlow 0 435694) 451763) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon45_Then_correct|) (=> (= (ControlFlow 0 435694) 435735) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon45_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon44_Else_correct|  (=> (and (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 435700) 435694)) inline$$1_DiemAccount_create_signer$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon43_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t7@0|) (=> (and (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t9@0| (|$addr#$signer| _$t0)) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t10@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t9@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t9@0|)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))) (and (=> (= (ControlFlow 0 435656) 451835) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 435656) 435700) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon44_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t6@0| (|$addr#$signer| _$t0)) (=> (and (= _$t0 _$t0) (= _$t2 _$t2)) (=> (and (and (= _$t3 _$t3) (= _$t4 _$t4)) (and (= _$t5 _$t5) (= |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$$t7@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 435598) 451861) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 435598) 435656) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon43_Else_correct|)))))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t9 (|$addr#$signer| _$t0)) (= (ControlFlow 0 451865) 435598)) |inline$$1_DiemAccount_create_designated_dealer'$1_XUS_XUS'$0$anon0_correct|))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1)) (and (=> (= (ControlFlow 0 433526) 453451) anon6_Then_correct) (=> (= (ControlFlow 0 433526) 451865) anon6_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= (ControlFlow 0 433520) 433526))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0) (= (ControlFlow 0 433576) 433526))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 433532) 453451) anon6_Then_correct) (=> (= (ControlFlow 0 433532) 451865) anon6_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct  (=> (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1))) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory@2) (|$addr#$signer| _$t0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1)))) (and (=> (= (ControlFlow 0 433504) 433532) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct) (=> (= (ControlFlow 0 433504) 433520) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct  (=> (and (and (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1|) (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_176491 (|Store__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@1) (= (ControlFlow 0 433438) 433504))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct  (=> (and (and |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_176491 (|Store__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1|)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@0) (= (ControlFlow 0 433546) 433504))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0) (and (=> (= (ControlFlow 0 433424) 433546) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct) (=> (= (ControlFlow 0 433424) 433438) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct  (=> (= _$t0 _$t0) (=> (and (= _$t1 _$t1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))))) (and (=> (= (ControlFlow 0 433418) 433576) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct) (=> (= (ControlFlow 0 433418) 433424) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@13)) 0)) (= addr@@13 173345816)))
 :qid |AccountCreationScriptsbpl.19825:20|
 :skolemid |505|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@14)) 1)) (= addr@@14 186537453)))
 :qid |AccountCreationScriptsbpl.19833:20|
 :skolemid |506|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) 186537453)) 1))))) (and (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@15)) 2))))))
 :qid |AccountCreationScriptsbpl.19841:20|
 :skolemid |507|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@16)) 2))))))
 :qid |AccountCreationScriptsbpl.19845:20|
 :skolemid |508|
))) (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@17)) 2))))))
 :qid |AccountCreationScriptsbpl.19849:20|
 :skolemid |509|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@18)) 2))))))
 :qid |AccountCreationScriptsbpl.19853:20|
 :skolemid |510|
))))) (=> (and (and (and (and (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@19)) 2)))))
 :qid |AccountCreationScriptsbpl.19857:20|
 :skolemid |511|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@20)) 2)))))
 :qid |AccountCreationScriptsbpl.19861:20|
 :skolemid |512|
))) (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@21)) 2)))))
 :qid |AccountCreationScriptsbpl.19865:20|
 :skolemid |513|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173389| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@22)) 4))))
 :qid |AccountCreationScriptsbpl.19869:20|
 :skolemid |514|
)))) (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_175015| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |AccountCreationScriptsbpl.19873:20|
 :skolemid |515|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_175015| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@24)) 3))))
 :qid |AccountCreationScriptsbpl.19877:20|
 :skolemid |516|
))) (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_175015| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25) (not (= (|l#Vec_123904| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_175015| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@25)) 3))))
 :qid |AccountCreationScriptsbpl.19881:20|
 :skolemid |517|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_177044| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_176963| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_178471| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0 ($Range 0 (|l#Vec_124093| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@26 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_176963| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@26))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@27 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_176963| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@27))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@27 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_176963| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@27))))) i1)))) 3))))
 :qid |AccountCreationScriptsbpl.19901:151|
 :skolemid |518|
))))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_177143| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_179650| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_179650| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |AccountCreationScriptsbpl.19910:104|
 :skolemid |519|
)))) (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@0 Int) (mint_cap_owner2@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@0) (=> (|$IsValid'address'| mint_cap_owner2@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_179714| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_179714| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner2@@0)) (= mint_cap_owner1@@0 mint_cap_owner2@@0))))
 :qid |AccountCreationScriptsbpl.19914:104|
 :skolemid |520|
))) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_179650| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |AccountCreationScriptsbpl.19918:20|
 :skolemid |521|
)))))) (and (and (and (and (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_179714| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |AccountCreationScriptsbpl.19922:20|
 :skolemid |522|
)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1) (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr1)) 2))))
 :qid |AccountCreationScriptsbpl.19926:20|
 :skolemid |523|
))) (and (forall ((dd_addr Int) ) (!  (=> (|$IsValid'address'| dd_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr)))))
 :qid |AccountCreationScriptsbpl.19930:20|
 :skolemid |524|
)) (forall ((dd_addr@@0 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@0))))
 :qid |AccountCreationScriptsbpl.19934:20|
 :skolemid |525|
)))) (and (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountCreationScriptsbpl.19938:20|
 :skolemid |526|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_185804| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountCreationScriptsbpl.19942:20|
 :skolemid |527|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_187290| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_190428| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_187746| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_194284| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_194736| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_194463| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr1@@0)) 2)))))
 :qid |AccountCreationScriptsbpl.19974:20|
 :skolemid |528|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_177207| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_197206| $1_ChainId_ChainId_$memory) 173345816))))))) (=> (and (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_197617| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_197617| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)))) (and (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@30) (or (= (|l#Vec_123943| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@30)))) 0) (and (not (= (|l#Vec_123943| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@30)))) 0)) (= addr@@30 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@30)))) 0)))))))
 :qid |AccountCreationScriptsbpl.20002:20|
 :skolemid |529|
)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@31) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@31) (= (|l#Vec_123982| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@31)))) 0)) (and (not (= (|l#Vec_123982| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@31)))) 0)) (= addr@@31 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@31)))) 0)))))))
 :qid |AccountCreationScriptsbpl.20006:20|
 :skolemid |530|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_200211| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))))) (and (and (and (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (= (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@32)))
 :qid |AccountCreationScriptsbpl.20018:20|
 :skolemid |531|
)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (= (|Select__T@[Int]Bool_| (|domain#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@33)  (and (= addr@@33 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@33))))
 :qid |AccountCreationScriptsbpl.20022:20|
 :skolemid |532|
))) (and (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (= (|Select__T@[Int]Bool_| (|domain#$Memory_200211| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@34)  (and (= addr@@34 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@34))))
 :qid |AccountCreationScriptsbpl.20026:20|
 :skolemid |533|
)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (= (|Select__T@[Int]Bool_| (|domain#$Memory_191004| $1_VASPDomain_VASPDomainManager_$memory) addr@@35)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@35)) 1))))
 :qid |AccountCreationScriptsbpl.20030:20|
 :skolemid |534|
)))) (and (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_190693| $1_VASPDomain_VASPDomains_$memory) addr@@36)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@36)) 5))))
 :qid |AccountCreationScriptsbpl.20034:20|
 :skolemid |535|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@37)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@37)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@37)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@37)) 2)))))
 :qid |AccountCreationScriptsbpl.20038:20|
 :skolemid |536|
))) (and (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (= (|Select__T@[Int]Bool_| (|domain#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) addr@@38)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@38)) 2))))
 :qid |AccountCreationScriptsbpl.20042:20|
 :skolemid |537|
)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194463| $1_DualAttestation_Credential_$memory) addr@@39)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@39)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@39)) 5)))))
 :qid |AccountCreationScriptsbpl.20046:20|
 :skolemid |538|
)))))) (and (and (and (and (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (= (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@40) (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) addr@@40)))
 :qid |AccountCreationScriptsbpl.20050:20|
 :skolemid |539|
)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@41) (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) addr@@41)))
 :qid |AccountCreationScriptsbpl.20054:20|
 :skolemid |540|
))) (and (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@42) (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@42)))
 :qid |AccountCreationScriptsbpl.20058:20|
 :skolemid |541|
)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@43)))
 :qid |AccountCreationScriptsbpl.20062:20|
 :skolemid |542|
)))) (and (and (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (= (|Select__T@[Int]Bool_| (|domain#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) addr@@44)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@44)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@44)) 1)))))
 :qid |AccountCreationScriptsbpl.20066:20|
 :skolemid |543|
)) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (= (|Select__T@[Int]Bool_| (|domain#$Memory_175015| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@45)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@45)) 3))))
 :qid |AccountCreationScriptsbpl.20070:20|
 :skolemid |544|
))) (and (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (= (|Select__T@[Int]Bool_| (|domain#$Memory_173389| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@46)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@46)) 4))))
 :qid |AccountCreationScriptsbpl.20074:20|
 :skolemid |545|
)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (= (|Select__T@[Int]Bool_| (|domain#$Memory_191672| $1_VASP_ParentVASP_$memory) addr@@47)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@47)) 5))))
 :qid |AccountCreationScriptsbpl.20078:20|
 :skolemid |546|
))))) (and (and (and (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (= (|Select__T@[Int]Bool_| (|domain#$Memory_191608| $1_VASP_ChildVASP_$memory) addr@@48)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_169787| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) addr@@48)) 6))))
 :qid |AccountCreationScriptsbpl.20082:20|
 :skolemid |547|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_225005| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_177271| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_177335| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0)))))) (and (and (and (and (and (|$IsValid'u64'| _$t1) (|$IsValid'address'| _$t2)) (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4))) (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |AccountCreationScriptsbpl.20115:20|
 :skolemid |548|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |AccountCreationScriptsbpl.20119:20|
 :skolemid |549|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_169787| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@1)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@1))
 :qid |AccountCreationScriptsbpl.20123:20|
 :skolemid |550|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_176491| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@2) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@2)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@2) 10000000000))))
 :qid |AccountCreationScriptsbpl.20127:20|
 :skolemid |551|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@2))
))))) (and (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@3)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@3))
 :qid |AccountCreationScriptsbpl.20131:20|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@4)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@4) (and (<= (|l#Vec_124354| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@4)) 256) (let (($range_1 ($Range 0 (|l#Vec_124354| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@4)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@122 $i_2))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@4)) i@@122)))) 0)))
 :qid |AccountCreationScriptsbpl.20136:223|
 :skolemid |553|
))))))
 :qid |AccountCreationScriptsbpl.20135:20|
 :skolemid |554|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@5) 10000000000))))
 :qid |AccountCreationScriptsbpl.20140:20|
 :skolemid |555|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_178977| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@6) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6) 10000000000))))
 :qid |AccountCreationScriptsbpl.20144:20|
 :skolemid |556|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_178858| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6))
)))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@7)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@7))
 :qid |AccountCreationScriptsbpl.20148:20|
 :skolemid |557|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_185723| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@8) (and (<= (|l#Vec_124354| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8)) 256) (let (($range_1@@0 ($Range 0 (|l#Vec_124354| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@123 $i_2@@0))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8)) i@@123)))) 0)))
 :qid |AccountCreationScriptsbpl.20153:223|
 :skolemid |558|
))))))
 :qid |AccountCreationScriptsbpl.20152:20|
 :skolemid |559|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_186135| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_194463| $1_DualAttestation_Credential_$memory) $a_0@@9)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@9))
 :qid |AccountCreationScriptsbpl.20157:20|
 :skolemid |560|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_194463| $1_DualAttestation_Credential_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) $a_0@@10)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@10))
 :qid |AccountCreationScriptsbpl.20161:20|
 :skolemid |561|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_196986| $1_DesignatedDealer_Dealer_$memory) $a_0@@10))
)))))) (and (and (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) $a_0@@11)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@11))
 :qid |AccountCreationScriptsbpl.20165:20|
 :skolemid |562|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) $a_0@@12)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@12) (and (<= (|l#Vec_123982| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@12))) 1) (<= (|l#Vec_123943| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@12))) 1))))
 :qid |AccountCreationScriptsbpl.20169:20|
 :skolemid |563|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) $a_0@@12))
))) (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@13)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@13))
 :qid |AccountCreationScriptsbpl.20173:20|
 :skolemid |564|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_198906| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@14)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@14))
 :qid |AccountCreationScriptsbpl.20177:20|
 :skolemid |565|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@14))
)))) (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@15)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@15))
 :qid |AccountCreationScriptsbpl.20181:20|
 :skolemid |566|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_197867| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@16)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@16))
 :qid |AccountCreationScriptsbpl.20185:20|
 :skolemid |567|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_197784| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@16))
))) (and (= $t6 (|$addr#$signer| _$t0)) (= $t7 (|$addr#$signer| _$t0))))) (and (and (and (let ((addr@@49 (|$addr#$signer| _$t0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_169606| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_198033| $1_DiemAccount_DiemAccount_$memory) addr@@49)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) addr@@49) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_197239| $1_AccountFreezing_FreezingBit_$memory) addr@@49)))))) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2))) (and (and (= _$t3 _$t3) (= _$t4 _$t4)) (and (= _$t5 _$t5) (= (ControlFlow 0 433580) 433418))))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_123818| stream@@4) 0) (forall ((v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| stream@@4) v@@63) 0)
 :qid |AccountCreationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountCreationScriptsbpl.3311:13|
 :skolemid |119|
))) (= (ControlFlow 0 430881) 433580)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 648589) 430881) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_162243 0)) ((($Memory_162243 (|domain#$Memory_162243| |T@[Int]Bool|) (|contents#$Memory_162243| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_125808 0)) (((Vec_125808 (|v#Vec_125808| |T@[Int]#0|) (|l#Vec_125808| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_225005 0)) ((($Memory_225005 (|domain#$Memory_225005| |T@[Int]Bool|) (|contents#$Memory_225005| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_200211 0)) ((($Memory_200211 (|domain#$Memory_200211| |T@[Int]Bool|) (|contents#$Memory_200211| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_197239 0)) ((($Memory_197239 (|domain#$Memory_197239| |T@[Int]Bool|) (|contents#$Memory_197239| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_197617 0)) ((($Memory_197617 (|domain#$Memory_197617| |T@[Int]Bool|) (|contents#$Memory_197617| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_197206 0)) ((($Memory_197206 (|domain#$Memory_197206| |T@[Int]Bool|) (|contents#$Memory_197206| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_196986 0)) ((($Memory_196986 (|domain#$Memory_196986| |T@[Int]Bool|) (|contents#$Memory_196986| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_194736 0)) ((($Memory_194736 (|domain#$Memory_194736| |T@[Int]Bool|) (|contents#$Memory_194736| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_191672 0)) ((($Memory_191672 (|domain#$Memory_191672| |T@[Int]Bool|) (|contents#$Memory_191672| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_191608 0)) ((($Memory_191608 (|domain#$Memory_191608| |T@[Int]Bool|) (|contents#$Memory_191608| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_191004 0)) ((($Memory_191004 (|domain#$Memory_191004| |T@[Int]Bool|) (|contents#$Memory_191004| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_150024 0)) (((Vec_150024 (|v#Vec_150024| |T@[Int]$1_XDX_XDX|) (|l#Vec_150024| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_152704 0)) (((Vec_152704 (|v#Vec_152704| |T@[Int]$1_XUS_XUS|) (|l#Vec_152704| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_187222 0)) ((($Memory_187222 (|domain#$Memory_187222| |T@[Int]Bool|) (|contents#$Memory_187222| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_187158 0)) ((($Memory_187158 (|domain#$Memory_187158| |T@[Int]Bool|) (|contents#$Memory_187158| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_187094 0)) ((($Memory_187094 (|domain#$Memory_187094| |T@[Int]Bool|) (|contents#$Memory_187094| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_188202 0)) ((($Memory_188202 (|domain#$Memory_188202| |T@[Int]Bool|) (|contents#$Memory_188202| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_187746 0)) ((($Memory_187746 (|domain#$Memory_187746| |T@[Int]Bool|) (|contents#$Memory_187746| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_187290 0)) ((($Memory_187290 (|domain#$Memory_187290| |T@[Int]Bool|) (|contents#$Memory_187290| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_198906 0)) ((($Memory_198906 (|domain#$Memory_198906| |T@[Int]Bool|) (|contents#$Memory_198906| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_179778 0)) ((($Memory_179778 (|domain#$Memory_179778| |T@[Int]Bool|) (|contents#$Memory_179778| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_179714 0)) ((($Memory_179714 (|domain#$Memory_179714| |T@[Int]Bool|) (|contents#$Memory_179714| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_179650 0)) ((($Memory_179650 (|domain#$Memory_179650| |T@[Int]Bool|) (|contents#$Memory_179650| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_180058 0)) ((($Memory_180058 (|domain#$Memory_180058| |T@[Int]Bool|) (|contents#$Memory_180058| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_197950 0)) ((($Memory_197950 (|domain#$Memory_197950| |T@[Int]Bool|) (|contents#$Memory_197950| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_185885 0)) ((($Memory_185885 (|domain#$Memory_185885| |T@[Int]Bool|) (|contents#$Memory_185885| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_197867 0)) ((($Memory_197867 (|domain#$Memory_197867| |T@[Int]Bool|) (|contents#$Memory_197867| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_185804 0)) ((($Memory_185804 (|domain#$Memory_185804| |T@[Int]Bool|) (|contents#$Memory_185804| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_190428 0)) ((($Memory_190428 (|domain#$Memory_190428| |T@[Int]Bool|) (|contents#$Memory_190428| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_197784 0)) ((($Memory_197784 (|domain#$Memory_197784| |T@[Int]Bool|) (|contents#$Memory_197784| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_185723 0)) ((($Memory_185723 (|domain#$Memory_185723| |T@[Int]Bool|) (|contents#$Memory_185723| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_194284 0)) ((($Memory_194284 (|domain#$Memory_194284| |T@[Int]Bool|) (|contents#$Memory_194284| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_178216 0)) ((($Memory_178216 (|domain#$Memory_178216| |T@[Int]Bool|) (|contents#$Memory_178216| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_178471 0)) ((($Memory_178471 (|domain#$Memory_178471| |T@[Int]Bool|) (|contents#$Memory_178471| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_177044 0)) ((($Memory_177044 (|domain#$Memory_177044| |T@[Int]Bool|) (|contents#$Memory_177044| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_177335 0)) ((($Memory_177335 (|domain#$Memory_177335| |T@[Int]Bool|) (|contents#$Memory_177335| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_176491 0)) ((($Memory_176491 (|domain#$Memory_176491| |T@[Int]Bool|) (|contents#$Memory_176491| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_123982 0)) (((Vec_123982 (|v#Vec_123982| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_123982| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_123982) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_123943 0)) (((Vec_123943 (|v#Vec_123943| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_123943| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_123943) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_222009 0)) ((($Memory_222009 (|domain#$Memory_222009| |T@[Int]Bool|) (|contents#$Memory_222009| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_123943) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_26904 0)) (((Vec_26904 (|v#Vec_26904| |T@[Int]Int|) (|l#Vec_26904| Int) ) ) ))
(declare-sort |T@[Int]Vec_26904| 0)
(declare-datatypes ((T@Vec_124150 0)) (((Vec_124150 (|v#Vec_124150| |T@[Int]Vec_26904|) (|l#Vec_124150| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_124150) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_177207 0)) ((($Memory_177207 (|domain#$Memory_177207| |T@[Int]Bool|) (|contents#$Memory_177207| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_124150) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_177143 0)) ((($Memory_177143 (|domain#$Memory_177143| |T@[Int]Bool|) (|contents#$Memory_177143| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_26904) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_26904) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_177271 0)) ((($Memory_177271 (|domain#$Memory_177271| |T@[Int]Bool|) (|contents#$Memory_177271| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_26904) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_198033 0)) ((($Memory_198033 (|domain#$Memory_198033| |T@[Int]Bool|) (|contents#$Memory_198033| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_26904) (|$base_url#$1_DualAttestation_Credential| T@Vec_26904) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_26904) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_194463 0)) ((($Memory_194463 (|domain#$Memory_194463| |T@[Int]Bool|) (|contents#$Memory_194463| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_124587 0)) (((Vec_124587 (|v#Vec_124587| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_124587| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_124587) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_190693 0)) ((($Memory_190693 (|domain#$Memory_190693| |T@[Int]Bool|) (|contents#$Memory_190693| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_124432 0)) (((Vec_124432 (|v#Vec_124432| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_124432| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_124432) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_186369 0)) ((($Memory_186369 (|domain#$Memory_186369| |T@[Int]Bool|) (|contents#$Memory_186369| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_124393 0)) (((Vec_124393 (|v#Vec_124393| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_124393| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_124393) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_186252 0)) ((($Memory_186252 (|domain#$Memory_186252| |T@[Int]Bool|) (|contents#$Memory_186252| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_124354 0)) (((Vec_124354 (|v#Vec_124354| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_124354| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_124354) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_186135 0)) ((($Memory_186135 (|domain#$Memory_186135| |T@[Int]Bool|) (|contents#$Memory_186135| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_26904) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_179096 0)) ((($Memory_179096 (|domain#$Memory_179096| |T@[Int]Bool|) (|contents#$Memory_179096| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_26904) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_178977 0)) ((($Memory_178977 (|domain#$Memory_178977| |T@[Int]Bool|) (|contents#$Memory_178977| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_26904) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_178858 0)) ((($Memory_178858 (|domain#$Memory_178858| |T@[Int]Bool|) (|contents#$Memory_178858| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_26904) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_26904) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_123904 0)) (((Vec_123904 (|v#Vec_123904| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_123904| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_123904) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_124093 0)) (((Vec_124093 (|v#Vec_124093| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_124093| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_124093) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_176963 0)) ((($Memory_176963 (|domain#$Memory_176963| |T@[Int]Bool|) (|contents#$Memory_176963| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_175015 0)) ((($Memory_175015 (|domain#$Memory_175015| |T@[Int]Bool|) (|contents#$Memory_175015| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_26904) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_173389 0)) ((($Memory_173389 (|domain#$Memory_173389| |T@[Int]Bool|) (|contents#$Memory_173389| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_169787 0)) ((($Memory_169787 (|domain#$Memory_169787| |T@[Int]Bool|) (|contents#$Memory_169787| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_169606 0)) ((($Memory_169606 (|domain#$Memory_169606| |T@[Int]Bool|) (|contents#$Memory_169606| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_26904) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_26904) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_26904) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_26904) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_26904) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_26904) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_26904) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_26904) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_26904) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_26904) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_123818 0)) (((Multiset_123818 (|v#Multiset_123818| |T@[$EventRep]Int|) (|l#Multiset_123818| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_123818| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_123818|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_192188 0)) ((($Mutation_192188 (|l#$Mutation_192188| T@$Location) (|p#$Mutation_192188| T@Vec_26904) (|v#$Mutation_192188| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_162874 0)) ((($Mutation_162874 (|l#$Mutation_162874| T@$Location) (|p#$Mutation_162874| T@Vec_26904) (|v#$Mutation_162874| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_26904) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_157131 0)) ((($Mutation_157131 (|l#$Mutation_157131| T@$Location) (|p#$Mutation_157131| T@Vec_26904) (|v#$Mutation_157131| T@Vec_26904) ) ) ))
(declare-datatypes ((T@$Mutation_156043 0)) ((($Mutation_156043 (|l#$Mutation_156043| T@$Location) (|p#$Mutation_156043| T@Vec_26904) (|v#$Mutation_156043| T@Vec_124150) ) ) ))
(declare-datatypes ((T@$Mutation_154334 0)) ((($Mutation_154334 (|l#$Mutation_154334| T@$Location) (|p#$Mutation_154334| T@Vec_26904) (|v#$Mutation_154334| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_153347 0)) ((($Mutation_153347 (|l#$Mutation_153347| T@$Location) (|p#$Mutation_153347| T@Vec_26904) (|v#$Mutation_153347| T@Vec_152704) ) ) ))
(declare-datatypes ((T@$Mutation_151654 0)) ((($Mutation_151654 (|l#$Mutation_151654| T@$Location) (|p#$Mutation_151654| T@Vec_26904) (|v#$Mutation_151654| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_150667 0)) ((($Mutation_150667 (|l#$Mutation_150667| T@$Location) (|p#$Mutation_150667| T@Vec_26904) (|v#$Mutation_150667| T@Vec_150024) ) ) ))
(declare-datatypes ((T@$Mutation_148974 0)) ((($Mutation_148974 (|l#$Mutation_148974| T@$Location) (|p#$Mutation_148974| T@Vec_26904) (|v#$Mutation_148974| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_147987 0)) ((($Mutation_147987 (|l#$Mutation_147987| T@$Location) (|p#$Mutation_147987| T@Vec_26904) (|v#$Mutation_147987| T@Vec_123904) ) ) ))
(declare-datatypes ((T@$Mutation_146332 0)) ((($Mutation_146332 (|l#$Mutation_146332| T@$Location) (|p#$Mutation_146332| T@Vec_26904) (|v#$Mutation_146332| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_145345 0)) ((($Mutation_145345 (|l#$Mutation_145345| T@$Location) (|p#$Mutation_145345| T@Vec_26904) (|v#$Mutation_145345| T@Vec_124587) ) ) ))
(declare-datatypes ((T@$Mutation_143667 0)) ((($Mutation_143667 (|l#$Mutation_143667| T@$Location) (|p#$Mutation_143667| T@Vec_26904) (|v#$Mutation_143667| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_142680 0)) ((($Mutation_142680 (|l#$Mutation_142680| T@$Location) (|p#$Mutation_142680| T@Vec_26904) (|v#$Mutation_142680| T@Vec_124354) ) ) ))
(declare-datatypes ((T@$Mutation_140971 0)) ((($Mutation_140971 (|l#$Mutation_140971| T@$Location) (|p#$Mutation_140971| T@Vec_26904) (|v#$Mutation_140971| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_139984 0)) ((($Mutation_139984 (|l#$Mutation_139984| T@$Location) (|p#$Mutation_139984| T@Vec_26904) (|v#$Mutation_139984| T@Vec_124393) ) ) ))
(declare-datatypes ((T@$Mutation_138275 0)) ((($Mutation_138275 (|l#$Mutation_138275| T@$Location) (|p#$Mutation_138275| T@Vec_26904) (|v#$Mutation_138275| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_137288 0)) ((($Mutation_137288 (|l#$Mutation_137288| T@$Location) (|p#$Mutation_137288| T@Vec_26904) (|v#$Mutation_137288| T@Vec_124432) ) ) ))
(declare-datatypes ((T@$Mutation_135579 0)) ((($Mutation_135579 (|l#$Mutation_135579| T@$Location) (|p#$Mutation_135579| T@Vec_26904) (|v#$Mutation_135579| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_134592 0)) ((($Mutation_134592 (|l#$Mutation_134592| T@$Location) (|p#$Mutation_134592| T@Vec_26904) (|v#$Mutation_134592| T@Vec_124093) ) ) ))
(declare-datatypes ((T@$Mutation_132792 0)) ((($Mutation_132792 (|l#$Mutation_132792| T@$Location) (|p#$Mutation_132792| T@Vec_26904) (|v#$Mutation_132792| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_131805 0)) ((($Mutation_131805 (|l#$Mutation_131805| T@$Location) (|p#$Mutation_131805| T@Vec_26904) (|v#$Mutation_131805| T@Vec_123982) ) ) ))
(declare-datatypes ((T@$Mutation_130140 0)) ((($Mutation_130140 (|l#$Mutation_130140| T@$Location) (|p#$Mutation_130140| T@Vec_26904) (|v#$Mutation_130140| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_129153 0)) ((($Mutation_129153 (|l#$Mutation_129153| T@$Location) (|p#$Mutation_129153| T@Vec_26904) (|v#$Mutation_129153| T@Vec_123943) ) ) ))
(declare-datatypes ((T@$Mutation_127440 0)) ((($Mutation_127440 (|l#$Mutation_127440| T@$Location) (|p#$Mutation_127440| T@Vec_26904) (|v#$Mutation_127440| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_126453 0)) ((($Mutation_126453 (|l#$Mutation_126453| T@$Location) (|p#$Mutation_126453| T@Vec_26904) (|v#$Mutation_126453| T@Vec_125808) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_125808 T@Vec_125808) Bool)
(declare-fun InRangeVec_110384 (T@Vec_125808 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_125808) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_125808 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_123943 T@Vec_123943) Bool)
(declare-fun InRangeVec_110585 (T@Vec_123943 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_123943) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_123943 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_123982 T@Vec_123982) Bool)
(declare-fun InRangeVec_110786 (T@Vec_123982 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_123982) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_123982 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_124093 T@Vec_124093) Bool)
(declare-fun InRangeVec_110987 (T@Vec_124093 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_26904 T@Vec_26904) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_124093) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_124093 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_124432 T@Vec_124432) Bool)
(declare-fun InRangeVec_111188 (T@Vec_124432 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_124432) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_124432 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_124393 T@Vec_124393) Bool)
(declare-fun InRangeVec_111389 (T@Vec_124393 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_124393) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_124393 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_124354 T@Vec_124354) Bool)
(declare-fun InRangeVec_111590 (T@Vec_124354 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_124354) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_124354 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_124587 T@Vec_124587) Bool)
(declare-fun InRangeVec_111791 (T@Vec_124587 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_124587) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_124587 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_123904 T@Vec_123904) Bool)
(declare-fun InRangeVec_111992 (T@Vec_123904 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_123904) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_123904 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_150024 T@Vec_150024) Bool)
(declare-fun InRangeVec_112193 (T@Vec_150024 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_150024) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_150024 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_152704 T@Vec_152704) Bool)
(declare-fun InRangeVec_112394 (T@Vec_152704 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_152704) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_152704 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_124150 T@Vec_124150) Bool)
(declare-fun InRangeVec_155466 (T@Vec_124150 Int) Bool)
(declare-fun |Select__T@[Int]Vec_26904_| (|T@[Int]Vec_26904| Int) T@Vec_26904)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_124150) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_26904) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_124150 T@Vec_26904) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_26904 T@Vec_26904) Bool)
(declare-fun InRangeVec_16728 (T@Vec_26904 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_26904) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_26904 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_26904 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_26904) T@Vec_26904)
(declare-fun $1_Hash_sha3 (T@Vec_26904) T@Vec_26904)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_26904) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_26904 T@Vec_26904 T@Vec_26904) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_123818_| (|T@[$1_Event_EventHandle]Multiset_123818| T@$1_Event_EventHandle) T@Multiset_123818)
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
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
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
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
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
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'#0''| (|T@$1_AccountLimits_LimitsDefinition'#0'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_26904 Int) T@Vec_26904)
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
(declare-fun IndexOfVec_26904 (T@Vec_26904 Int) Int)
(declare-fun IndexOfVec_123904 (T@Vec_123904 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_123943 (T@Vec_123943 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_123982 (T@Vec_123982 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_124093 (T@Vec_124093 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_124150 (T@Vec_124150 T@Vec_26904) Int)
(declare-fun IndexOfVec_124354 (T@Vec_124354 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_124393 (T@Vec_124393 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_124432 (T@Vec_124432 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_124587 (T@Vec_124587 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_125808 (T@Vec_125808 |T@#0|) Int)
(declare-fun IndexOfVec_150024 (T@Vec_150024 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_152704 (T@Vec_152704 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_123818| |T@[$1_Event_EventHandle]Multiset_123818|) |T@[$1_Event_EventHandle]Multiset_123818|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_26904| |T@[Int]Vec_26904| Int T@Vec_26904) |T@[Int]Vec_26904|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_26904| Int Int T@Vec_26904) |T@[Int]Vec_26904|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_26904| |T@[Int]Vec_26904| Int T@Vec_26904) |T@[Int]Vec_26904|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountCreationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountCreationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountCreationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountCreationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountCreationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountCreationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountCreationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountCreationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_125808) (v2 T@Vec_125808) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_125808| v1) (|l#Vec_125808| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_110384 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_125808| v2) i@@0)))
 :qid |AccountCreationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountCreationScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_125808) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_125808| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_110384 v@@4 i@@1) true)
 :qid |AccountCreationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountCreationScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_125808) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_110384 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@5) i@@3) e))
 :qid |AccountCreationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_110384 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@5) j) e)))
 :qid |AccountCreationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountCreationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_123943) (v2@@0 T@Vec_123943) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_123943| v1@@0) (|l#Vec_123943| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_110585 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v2@@0) i@@4)))
 :qid |AccountCreationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountCreationScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_123943) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_123943| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_110585 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@6) i@@5)))
 :qid |AccountCreationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountCreationScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_123943) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_110585 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@7) i@@7) e@@0))
 :qid |AccountCreationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_110585 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@7) j@@0) e@@0)))
 :qid |AccountCreationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountCreationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_123982) (v2@@1 T@Vec_123982) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_123982| v1@@1) (|l#Vec_123982| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_110786 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v2@@1) i@@8)))
 :qid |AccountCreationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountCreationScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_123982) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_123982| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_110786 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@8) i@@9)))
 :qid |AccountCreationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountCreationScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_123982) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_110786 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@9) i@@11) e@@1))
 :qid |AccountCreationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_110786 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@9) j@@1) e@@1)))
 :qid |AccountCreationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountCreationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_124093) (v2@@2 T@Vec_124093) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_124093| v1@@2) (|l#Vec_124093| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_110987 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v2@@2) i@@12)))))
 :qid |AccountCreationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountCreationScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_124093) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_124093| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_110987 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@10) i@@13)))
 :qid |AccountCreationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountCreationScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_124093) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_110987 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |AccountCreationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_110987 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |AccountCreationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountCreationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_124432) (v2@@3 T@Vec_124432) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_124432| v1@@3) (|l#Vec_124432| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_111188 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v2@@3) i@@16)))))
 :qid |AccountCreationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountCreationScriptsbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_124432) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_124432| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_111188 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@12) i@@17)))
 :qid |AccountCreationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountCreationScriptsbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_124432) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_111188 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |AccountCreationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_111188 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |AccountCreationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountCreationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_124393) (v2@@4 T@Vec_124393) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_124393| v1@@4) (|l#Vec_124393| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_111389 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v2@@4) i@@20)))))
 :qid |AccountCreationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountCreationScriptsbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_124393) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_124393| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_111389 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@14) i@@21)))
 :qid |AccountCreationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountCreationScriptsbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_124393) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_111389 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |AccountCreationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_111389 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |AccountCreationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountCreationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_124354) (v2@@5 T@Vec_124354) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_124354| v1@@5) (|l#Vec_124354| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_111590 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v2@@5) i@@24)))))
 :qid |AccountCreationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountCreationScriptsbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_124354) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_124354| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_111590 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@16) i@@25)))
 :qid |AccountCreationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountCreationScriptsbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_124354) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_111590 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |AccountCreationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_111590 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |AccountCreationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountCreationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_124587) (v2@@6 T@Vec_124587) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_124587| v1@@6) (|l#Vec_124587| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_111791 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v2@@6) i@@28))))
 :qid |AccountCreationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountCreationScriptsbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_124587) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_124587| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_111791 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@18) i@@29)))
 :qid |AccountCreationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountCreationScriptsbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_124587) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_111791 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |AccountCreationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_111791 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |AccountCreationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountCreationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_123904) (v2@@7 T@Vec_123904) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_123904| v1@@7) (|l#Vec_123904| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_111992 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v2@@7) i@@32)))))
 :qid |AccountCreationScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |AccountCreationScriptsbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_123904) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_123904| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_111992 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@20) i@@33)))
 :qid |AccountCreationScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |AccountCreationScriptsbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_123904) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_111992 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |AccountCreationScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_111992 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |AccountCreationScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |AccountCreationScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_150024) (v2@@8 T@Vec_150024) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_150024| v1@@8) (|l#Vec_150024| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_112193 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v2@@8) i@@36)))
 :qid |AccountCreationScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |AccountCreationScriptsbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_150024) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_150024| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_112193 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@22) i@@37)))
 :qid |AccountCreationScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |AccountCreationScriptsbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_150024) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_112193 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@23) i@@39) e@@8))
 :qid |AccountCreationScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_112193 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@23) j@@8) e@@8)))
 :qid |AccountCreationScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |AccountCreationScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_152704) (v2@@9 T@Vec_152704) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_152704| v1@@9) (|l#Vec_152704| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_112394 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v2@@9) i@@40)))
 :qid |AccountCreationScriptsbpl.2425:13|
 :skolemid |87|
))))
 :qid |AccountCreationScriptsbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_152704) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_152704| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_112394 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@24) i@@41)))
 :qid |AccountCreationScriptsbpl.2431:13|
 :skolemid |89|
))))
 :qid |AccountCreationScriptsbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_152704) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_112394 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@25) i@@43) e@@9))
 :qid |AccountCreationScriptsbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_112394 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@25) j@@9) e@@9)))
 :qid |AccountCreationScriptsbpl.2444:17|
 :skolemid |92|
)))))
 :qid |AccountCreationScriptsbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_124150) (v2@@10 T@Vec_124150) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_124150| v1@@10) (|l#Vec_124150| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_155466 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v1@@10) i@@44) (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v2@@10) i@@44)))
 :qid |AccountCreationScriptsbpl.2606:13|
 :skolemid |94|
))))
 :qid |AccountCreationScriptsbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_124150) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_124150| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_155466 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@26) i@@45)))
 :qid |AccountCreationScriptsbpl.2612:13|
 :skolemid |96|
))))
 :qid |AccountCreationScriptsbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_124150) (e@@10 T@Vec_26904) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_155466 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@27) i@@47) e@@10))
 :qid |AccountCreationScriptsbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_155466 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@27) j@@10) e@@10)))
 :qid |AccountCreationScriptsbpl.2625:17|
 :skolemid |99|
)))))
 :qid |AccountCreationScriptsbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_26904) (v2@@11 T@Vec_26904) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_26904| v1@@11) (|l#Vec_26904| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_26904| v2@@11) i@@48)))
 :qid |AccountCreationScriptsbpl.2787:13|
 :skolemid |101|
))))
 :qid |AccountCreationScriptsbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_26904) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_26904| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_26904| v@@28) i@@49)))
 :qid |AccountCreationScriptsbpl.2793:13|
 :skolemid |103|
))))
 :qid |AccountCreationScriptsbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_26904) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@29) i@@51) e@@11))
 :qid |AccountCreationScriptsbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@29) j@@11) e@@11)))
 :qid |AccountCreationScriptsbpl.2806:17|
 :skolemid |106|
)))))
 :qid |AccountCreationScriptsbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_26904) (v2@@12 T@Vec_26904) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_26904| v1@@12) (|l#Vec_26904| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_26904| v2@@12) i@@52)))
 :qid |AccountCreationScriptsbpl.2968:13|
 :skolemid |108|
))))
 :qid |AccountCreationScriptsbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_26904) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_26904| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_26904| v@@30) i@@53)))
 :qid |AccountCreationScriptsbpl.2974:13|
 :skolemid |110|
))))
 :qid |AccountCreationScriptsbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_26904) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@31) i@@55) e@@12))
 :qid |AccountCreationScriptsbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@31) j@@12) e@@12)))
 :qid |AccountCreationScriptsbpl.2987:17|
 :skolemid |113|
)))))
 :qid |AccountCreationScriptsbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_26904) (v2@@13 T@Vec_26904) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |AccountCreationScriptsbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_26904) (v2@@14 T@Vec_26904) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |AccountCreationScriptsbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_26904) (k2 T@Vec_26904) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountCreationScriptsbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_26904) (s2 T@Vec_26904) (k1@@0 T@Vec_26904) (k2@@0 T@Vec_26904) (m1 T@Vec_26904) (m2 T@Vec_26904) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountCreationScriptsbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_123818| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_123818| stream) v@@32) 0)
 :qid |AccountCreationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountCreationScriptsbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountCreationScriptsbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |AccountCreationScriptsbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountCreationScriptsbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |AccountCreationScriptsbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountCreationScriptsbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |AccountCreationScriptsbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountCreationScriptsbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |AccountCreationScriptsbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountCreationScriptsbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |AccountCreationScriptsbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountCreationScriptsbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |AccountCreationScriptsbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountCreationScriptsbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |AccountCreationScriptsbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountCreationScriptsbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |AccountCreationScriptsbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountCreationScriptsbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |AccountCreationScriptsbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountCreationScriptsbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |AccountCreationScriptsbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountCreationScriptsbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |AccountCreationScriptsbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountCreationScriptsbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |AccountCreationScriptsbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountCreationScriptsbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |AccountCreationScriptsbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountCreationScriptsbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |AccountCreationScriptsbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountCreationScriptsbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |AccountCreationScriptsbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountCreationScriptsbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |AccountCreationScriptsbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountCreationScriptsbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |AccountCreationScriptsbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountCreationScriptsbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountCreationScriptsbpl.4397:36|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountCreationScriptsbpl.5555:71|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountCreationScriptsbpl.5934:46|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountCreationScriptsbpl.5946:64|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountCreationScriptsbpl.5958:75|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountCreationScriptsbpl.5970:72|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountCreationScriptsbpl.5998:55|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountCreationScriptsbpl.6021:46|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountCreationScriptsbpl.6296:15|
 :skolemid |164|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountCreationScriptsbpl.6309:49|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountCreationScriptsbpl.6507:71|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountCreationScriptsbpl.6520:91|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountCreationScriptsbpl.6533:113|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountCreationScriptsbpl.6546:75|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountCreationScriptsbpl.6559:73|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountCreationScriptsbpl.6579:48|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |AccountCreationScriptsbpl.6596:83|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |AccountCreationScriptsbpl.6610:48|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |AccountCreationScriptsbpl.6631:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |AccountCreationScriptsbpl.6645:51|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |AccountCreationScriptsbpl.6668:48|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |AccountCreationScriptsbpl.6691:49|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |AccountCreationScriptsbpl.6704:65|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |AccountCreationScriptsbpl.6866:45|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |AccountCreationScriptsbpl.6879:45|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@24)))
 :qid |AccountCreationScriptsbpl.6892:37|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25) true)
 :qid |AccountCreationScriptsbpl.6905:55|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@26))))
 :qid |AccountCreationScriptsbpl.6925:38|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@27))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@27))))
 :qid |AccountCreationScriptsbpl.6947:44|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))))
 :qid |AccountCreationScriptsbpl.6999:53|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))))
 :qid |AccountCreationScriptsbpl.7072:53|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@30))))
 :qid |AccountCreationScriptsbpl.7145:45|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31) true)
 :qid |AccountCreationScriptsbpl.7182:55|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32) true)
 :qid |AccountCreationScriptsbpl.7196:55|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@33) true)
 :qid |AccountCreationScriptsbpl.7210:47|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@34)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@34))))
 :qid |AccountCreationScriptsbpl.7227:38|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@35)))
 :qid |AccountCreationScriptsbpl.7241:48|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@36)))
 :qid |AccountCreationScriptsbpl.7255:48|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@37) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@37)))
 :qid |AccountCreationScriptsbpl.7269:40|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@38))))
 :qid |AccountCreationScriptsbpl.7289:41|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@39) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@39)))
 :qid |AccountCreationScriptsbpl.7305:53|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@40) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@40)))
 :qid |AccountCreationScriptsbpl.7318:53|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@41)))
 :qid |AccountCreationScriptsbpl.7331:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@42)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@42)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@42))))
 :qid |AccountCreationScriptsbpl.7347:60|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@43))))
 :qid |AccountCreationScriptsbpl.7364:60|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@44))))
 :qid |AccountCreationScriptsbpl.7381:52|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |AccountCreationScriptsbpl.7398:57|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |AccountCreationScriptsbpl.7778:68|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |AccountCreationScriptsbpl.7800:66|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |AccountCreationScriptsbpl.7826:66|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@49))))
 :qid |AccountCreationScriptsbpl.7852:58|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |AccountCreationScriptsbpl.7881:56|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |AccountCreationScriptsbpl.7911:56|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@52))))
 :qid |AccountCreationScriptsbpl.7941:48|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@53) true)
 :qid |AccountCreationScriptsbpl.7959:31|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@54) true)
 :qid |AccountCreationScriptsbpl.7977:31|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@55)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@55)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@55))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@55))))
 :qid |AccountCreationScriptsbpl.7996:35|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@56)))
 :qid |AccountCreationScriptsbpl.8017:45|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@57))))
 :qid |AccountCreationScriptsbpl.8035:50|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@58)))
 :qid |AccountCreationScriptsbpl.8051:52|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@59) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@59)))
 :qid |AccountCreationScriptsbpl.8064:46|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@60) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@60)))
 :qid |AccountCreationScriptsbpl.8295:38|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@61) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@61)))
 :qid |AccountCreationScriptsbpl.8309:39|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@61))
)))
(assert (forall ((s@@62 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62))))
 :qid |AccountCreationScriptsbpl.8996:65|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62))
)))
(assert (forall ((payer Int) (metadata T@Vec_26904) (deposit_value Int) ) (! (let (($$res@@0 ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountCreationScriptsbpl.9047:15|
 :skolemid |220|
)))
(assert (forall ((s@@63 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@63))))
 :qid |AccountCreationScriptsbpl.9075:60|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64))))
 :qid |AccountCreationScriptsbpl.9092:66|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@65)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@65))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@65))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@65))))
 :qid |AccountCreationScriptsbpl.9121:50|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@66) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@66)))
 :qid |AccountCreationScriptsbpl.9144:45|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@67)) true))
 :qid |AccountCreationScriptsbpl.9427:87|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@68)))
 :qid |AccountCreationScriptsbpl.9441:47|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@69)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@69))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@69))))
 :qid |AccountCreationScriptsbpl.9460:58|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@70) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@70)))
 :qid |AccountCreationScriptsbpl.9476:39|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@71))))
 :qid |AccountCreationScriptsbpl.9508:58|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72))))
 :qid |AccountCreationScriptsbpl.9525:58|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73) true)
 :qid |AccountCreationScriptsbpl.9540:51|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74))))
 :qid |AccountCreationScriptsbpl.9557:60|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@75)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@75))))
 :qid |AccountCreationScriptsbpl.9716:47|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@76))))
 :qid |AccountCreationScriptsbpl.9742:63|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@77)))
 :qid |AccountCreationScriptsbpl.9757:57|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@78)))
 :qid |AccountCreationScriptsbpl.9770:55|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78))
)))
(assert (forall ((s@@79 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@79)))
 :qid |AccountCreationScriptsbpl.9784:55|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79))
)))
(assert (forall ((s@@80 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@80) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@80)))
 :qid |AccountCreationScriptsbpl.9798:47|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@81)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@81)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@81))))
 :qid |AccountCreationScriptsbpl.9815:54|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@82) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@82)))
 :qid |AccountCreationScriptsbpl.9829:55|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@83)))
 :qid |AccountCreationScriptsbpl.9842:57|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@84)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@84)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@84))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@84))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@84))))
 :qid |AccountCreationScriptsbpl.9864:56|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@85)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@85))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@85))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@85))))
 :qid |AccountCreationScriptsbpl.9891:52|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@86) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@86)))
 :qid |AccountCreationScriptsbpl.9909:54|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@86))
)))
(assert (forall ((s@@87 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@87) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@87)))
 :qid |AccountCreationScriptsbpl.15455:55|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@88)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@88)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@88))))
 :qid |AccountCreationScriptsbpl.24468:47|
 :skolemid |902|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@89)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@89))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@89))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@89))))
 :qid |AccountCreationScriptsbpl.24492:47|
 :skolemid |903|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@90) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@90)))
 :qid |AccountCreationScriptsbpl.24510:49|
 :skolemid |904|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@91)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@91)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@91))))
 :qid |AccountCreationScriptsbpl.24552:49|
 :skolemid |905|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@92)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@92)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@92))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@92))))
 :qid |AccountCreationScriptsbpl.24581:48|
 :skolemid |906|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@93) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@93)))
 :qid |AccountCreationScriptsbpl.24597:47|
 :skolemid |907|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@93))
)))
(assert (forall ((v@@33 T@Vec_125808) (i@@56 Int) ) (! (= (InRangeVec_110384 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_125808| v@@33))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110384 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_123943) (i@@57 Int) ) (! (= (InRangeVec_110585 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_123943| v@@34))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110585 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_123982) (i@@58 Int) ) (! (= (InRangeVec_110786 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_123982| v@@35))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110786 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_124093) (i@@59 Int) ) (! (= (InRangeVec_110987 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_124093| v@@36))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_110987 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_124432) (i@@60 Int) ) (! (= (InRangeVec_111188 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_124432| v@@37))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111188 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_124393) (i@@61 Int) ) (! (= (InRangeVec_111389 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_124393| v@@38))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111389 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_124354) (i@@62 Int) ) (! (= (InRangeVec_111590 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_124354| v@@39))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111590 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_124587) (i@@63 Int) ) (! (= (InRangeVec_111791 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_124587| v@@40))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111791 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_123904) (i@@64 Int) ) (! (= (InRangeVec_111992 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_123904| v@@41))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_111992 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_150024) (i@@65 Int) ) (! (= (InRangeVec_112193 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_150024| v@@42))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_112193 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_152704) (i@@66 Int) ) (! (= (InRangeVec_112394 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_152704| v@@43))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_112394 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_124150) (i@@67 Int) ) (! (= (InRangeVec_155466 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_124150| v@@44))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_155466 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_26904) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_26904| v@@45))))
 :qid |AccountCreationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_26904) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_26904 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@46) i@@70) e@@13))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_26904| v@@46) j@@13) e@@13)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_26904 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_123904) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_123904 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_111992 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@47) i@@72) e@@14))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_111992 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_123904| v@@47) j@@14) e@@14)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_123904 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_123943) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_123943 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_110585 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@48) i@@74) e@@15))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_110585 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_123943| v@@48) j@@15) e@@15)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_123943 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_123982) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_123982 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_110786 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@49) i@@76) e@@16))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_110786 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_123982| v@@49) j@@16) e@@16)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_123982 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_124093) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_124093 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_110987 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@50) i@@78) e@@17))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_110987 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_124093| v@@50) j@@17) e@@17)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124093 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_124150) (e@@18 T@Vec_26904) ) (! (let ((i@@79 (IndexOfVec_124150 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_155466 v@@51 i@@80) (= (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@51) i@@80) e@@18))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_155466 v@@51 i@@79) (= (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_26904_| (|v#Vec_124150| v@@51) j@@18) e@@18)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124150 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_124354) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_124354 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_111590 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@52) i@@82) e@@19))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_111590 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_124354| v@@52) j@@19) e@@19)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124354 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_124393) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_124393 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_111389 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@53) i@@84) e@@20))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_111389 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_124393| v@@53) j@@20) e@@20)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124393 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_124432) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_124432 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_111188 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@54) i@@86) e@@21))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_111188 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_124432| v@@54) j@@21) e@@21)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124432 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_124587) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_124587 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_111791 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@55) i@@88) e@@22))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_111791 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_124587| v@@55) j@@22) e@@22)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_124587 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_125808) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_125808 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_110384 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@56) i@@90) e@@23))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_110384 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_125808| v@@56) j@@23) e@@23)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_125808 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_150024) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_150024 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_112193 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@57) i@@92) e@@24))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_112193 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_150024| v@@57) j@@24) e@@24)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150024 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_152704) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_152704 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_112394 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@58) i@@94) e@@25))
 :qid |AccountCreationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_112394 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_152704| v@@58) j@@25) e@@25)))
 :qid |AccountCreationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountCreationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152704 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |AccountCreationScriptsbpl.275:54|
 :skolemid |908|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_123818|) (|l#1| |T@[$1_Event_EventHandle]Multiset_123818|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#1| handle@@0))))
(Multiset_123818 (|lambda#42| (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#0@@0| handle@@0)) (|v#Multiset_123818| (|Select__T@[$1_Event_EventHandle]Multiset_123818_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountCreationScriptsbpl.3321:13|
 :skolemid |909|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_123818_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |910|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |911|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |912|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |913|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |914|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |915|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |916|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |917|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |918|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |919|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |920|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |921|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |922|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |923|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |924|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |925|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |926|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |927|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |928|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |929|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |930|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |931|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |932|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |933|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |934|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |935|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |936|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |937|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |938|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |939|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |940|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |941|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |942|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_26904|) (|l#4@@32| |T@[Int]Vec_26904|) (|l#5@@32| Int) (|l#6@@21| T@Vec_26904) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_26904_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_26904_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_26904_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |943|
 :pattern ( (|Select__T@[Int]Vec_26904_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_26904|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_26904) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_26904_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_26904_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |944|
 :pattern ( (|Select__T@[Int]Vec_26904_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_26904|) (|l#4@@34| |T@[Int]Vec_26904|) (|l#5@@34| Int) (|l#6@@22| T@Vec_26904) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_26904_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_26904_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_26904_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |945|
 :pattern ( (|Select__T@[Int]Vec_26904_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |AccountCreationScriptsbpl.73:19|
 :skolemid |946|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |AccountCreationScriptsbpl.82:30|
 :skolemid |947|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |AccountCreationScriptsbpl.63:20|
 :skolemid |948|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |AccountCreationScriptsbpl.154:29|
 :skolemid |949|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid
