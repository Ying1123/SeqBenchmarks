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
(declare-datatypes ((T@$Memory_199292 0)) ((($Memory_199292 (|domain#$Memory_199292| |T@[Int]Bool|) (|contents#$Memory_199292| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_161457 0)) (((Vec_161457 (|v#Vec_161457| |T@[Int]#0|) (|l#Vec_161457| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_286370 0)) ((($Memory_286370 (|domain#$Memory_286370| |T@[Int]Bool|) (|contents#$Memory_286370| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_273537 0)) ((($Memory_273537 (|domain#$Memory_273537| |T@[Int]Bool|) (|contents#$Memory_273537| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_268192 0)) ((($Memory_268192 (|domain#$Memory_268192| |T@[Int]Bool|) (|contents#$Memory_268192| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_268570 0)) ((($Memory_268570 (|domain#$Memory_268570| |T@[Int]Bool|) (|contents#$Memory_268570| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_268159 0)) ((($Memory_268159 (|domain#$Memory_268159| |T@[Int]Bool|) (|contents#$Memory_268159| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_267270 0)) ((($Memory_267270 (|domain#$Memory_267270| |T@[Int]Bool|) (|contents#$Memory_267270| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_265101 0)) ((($Memory_265101 (|domain#$Memory_265101| |T@[Int]Bool|) (|contents#$Memory_265101| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_258672 0)) ((($Memory_258672 (|domain#$Memory_258672| |T@[Int]Bool|) (|contents#$Memory_258672| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_258608 0)) ((($Memory_258608 (|domain#$Memory_258608| |T@[Int]Bool|) (|contents#$Memory_258608| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_254928 0)) ((($Memory_254928 (|domain#$Memory_254928| |T@[Int]Bool|) (|contents#$Memory_254928| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_185673 0)) (((Vec_185673 (|v#Vec_185673| |T@[Int]$1_XDX_XDX|) (|l#Vec_185673| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_188353 0)) (((Vec_188353 (|v#Vec_188353| |T@[Int]$1_XUS_XUS|) (|l#Vec_188353| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_251286 0)) ((($Memory_251286 (|domain#$Memory_251286| |T@[Int]Bool|) (|contents#$Memory_251286| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251222 0)) ((($Memory_251222 (|domain#$Memory_251222| |T@[Int]Bool|) (|contents#$Memory_251222| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251158 0)) ((($Memory_251158 (|domain#$Memory_251158| |T@[Int]Bool|) (|contents#$Memory_251158| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_252266 0)) ((($Memory_252266 (|domain#$Memory_252266| |T@[Int]Bool|) (|contents#$Memory_252266| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251810 0)) ((($Memory_251810 (|domain#$Memory_251810| |T@[Int]Bool|) (|contents#$Memory_251810| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251354 0)) ((($Memory_251354 (|domain#$Memory_251354| |T@[Int]Bool|) (|contents#$Memory_251354| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_272232 0)) ((($Memory_272232 (|domain#$Memory_272232| |T@[Int]Bool|) (|contents#$Memory_272232| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_211727 0)) ((($Memory_211727 (|domain#$Memory_211727| |T@[Int]Bool|) (|contents#$Memory_211727| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_211663 0)) ((($Memory_211663 (|domain#$Memory_211663| |T@[Int]Bool|) (|contents#$Memory_211663| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_211599 0)) ((($Memory_211599 (|domain#$Memory_211599| |T@[Int]Bool|) (|contents#$Memory_211599| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_212220 0)) ((($Memory_212220 (|domain#$Memory_212220| |T@[Int]Bool|) (|contents#$Memory_212220| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_212133 0)) ((($Memory_212133 (|domain#$Memory_212133| |T@[Int]Bool|) (|contents#$Memory_212133| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_212046 0)) ((($Memory_212046 (|domain#$Memory_212046| |T@[Int]Bool|) (|contents#$Memory_212046| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_271276 0)) ((($Memory_271276 (|domain#$Memory_271276| |T@[Int]Bool|) (|contents#$Memory_271276| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_218047 0)) ((($Memory_218047 (|domain#$Memory_218047| |T@[Int]Bool|) (|contents#$Memory_218047| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_259328 0)) ((($Memory_259328 (|domain#$Memory_259328| |T@[Int]Bool|) (|contents#$Memory_259328| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_271193 0)) ((($Memory_271193 (|domain#$Memory_271193| |T@[Int]Bool|) (|contents#$Memory_271193| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_217966 0)) ((($Memory_217966 (|domain#$Memory_217966| |T@[Int]Bool|) (|contents#$Memory_217966| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_259259 0)) ((($Memory_259259 (|domain#$Memory_259259| |T@[Int]Bool|) (|contents#$Memory_259259| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_254663 0)) ((($Memory_254663 (|domain#$Memory_254663| |T@[Int]Bool|) (|contents#$Memory_254663| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_271110 0)) ((($Memory_271110 (|domain#$Memory_271110| |T@[Int]Bool|) (|contents#$Memory_271110| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_217885 0)) ((($Memory_217885 (|domain#$Memory_217885| |T@[Int]Bool|) (|contents#$Memory_217885| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_259142 0)) ((($Memory_259142 (|domain#$Memory_259142| |T@[Int]Bool|) (|contents#$Memory_259142| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_210196 0)) ((($Memory_210196 (|domain#$Memory_210196| |T@[Int]Bool|) (|contents#$Memory_210196| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_210451 0)) ((($Memory_210451 (|domain#$Memory_210451| |T@[Int]Bool|) (|contents#$Memory_210451| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_209024 0)) ((($Memory_209024 (|domain#$Memory_209024| |T@[Int]Bool|) (|contents#$Memory_209024| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_209315 0)) ((($Memory_209315 (|domain#$Memory_209315| |T@[Int]Bool|) (|contents#$Memory_209315| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_208471 0)) ((($Memory_208471 (|domain#$Memory_208471| |T@[Int]Bool|) (|contents#$Memory_208471| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_159582 0)) (((Vec_159582 (|v#Vec_159582| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_159582| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_159582) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_159543 0)) (((Vec_159543 (|v#Vec_159543| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_159543| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_159543) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_286218 0)) ((($Memory_286218 (|domain#$Memory_286218| |T@[Int]Bool|) (|contents#$Memory_286218| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_159543) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_25263 0)) (((Vec_25263 (|v#Vec_25263| |T@[Int]Int|) (|l#Vec_25263| Int) ) ) ))
(declare-sort |T@[Int]Vec_25263| 0)
(declare-datatypes ((T@Vec_159750 0)) (((Vec_159750 (|v#Vec_159750| |T@[Int]Vec_25263|) (|l#Vec_159750| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_159750) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_209187 0)) ((($Memory_209187 (|domain#$Memory_209187| |T@[Int]Bool|) (|contents#$Memory_209187| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_159750) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_209123 0)) ((($Memory_209123 (|domain#$Memory_209123| |T@[Int]Bool|) (|contents#$Memory_209123| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_25263) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_25263) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_209251 0)) ((($Memory_209251 (|domain#$Memory_209251| |T@[Int]Bool|) (|contents#$Memory_209251| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_25263) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_271359 0)) ((($Memory_271359 (|domain#$Memory_271359| |T@[Int]Bool|) (|contents#$Memory_271359| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_268072 0)) ((($Memory_268072 (|domain#$Memory_268072| |T@[Int]Bool|) (|contents#$Memory_268072| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_267849 0)) ((($Memory_267849 (|domain#$Memory_267849| |T@[Int]Bool|) (|contents#$Memory_267849| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_267626 0)) ((($Memory_267626 (|domain#$Memory_267626| |T@[Int]Bool|) (|contents#$Memory_267626| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_25263) (|$base_url#$1_DualAttestation_Credential| T@Vec_25263) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_25263) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_264828 0)) ((($Memory_264828 (|domain#$Memory_264828| |T@[Int]Bool|) (|contents#$Memory_264828| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_160193 0)) (((Vec_160193 (|v#Vec_160193| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_160193| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_160193) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_255327 0)) ((($Memory_255327 (|domain#$Memory_255327| |T@[Int]Bool|) (|contents#$Memory_255327| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_160038 0)) (((Vec_160038 (|v#Vec_160038| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_160038| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_160038) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_218531 0)) ((($Memory_218531 (|domain#$Memory_218531| |T@[Int]Bool|) (|contents#$Memory_218531| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_159999 0)) (((Vec_159999 (|v#Vec_159999| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_159999| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_159999) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_218414 0)) ((($Memory_218414 (|domain#$Memory_218414| |T@[Int]Bool|) (|contents#$Memory_218414| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_159960 0)) (((Vec_159960 (|v#Vec_159960| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_159960| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_159960) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_218297 0)) ((($Memory_218297 (|domain#$Memory_218297| |T@[Int]Bool|) (|contents#$Memory_218297| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_25263) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_211162 0)) ((($Memory_211162 (|domain#$Memory_211162| |T@[Int]Bool|) (|contents#$Memory_211162| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_25263) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_211043 0)) ((($Memory_211043 (|domain#$Memory_211043| |T@[Int]Bool|) (|contents#$Memory_211043| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_25263) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_210924 0)) ((($Memory_210924 (|domain#$Memory_210924| |T@[Int]Bool|) (|contents#$Memory_210924| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_25263) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_25263) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_159504 0)) (((Vec_159504 (|v#Vec_159504| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_159504| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_159504) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_159693 0)) (((Vec_159693 (|v#Vec_159693| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_159693| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_159693) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_208943 0)) ((($Memory_208943 (|domain#$Memory_208943| |T@[Int]Bool|) (|contents#$Memory_208943| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_207859 0)) ((($Memory_207859 (|domain#$Memory_207859| |T@[Int]Bool|) (|contents#$Memory_207859| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_207139 0)) ((($Memory_207139 (|domain#$Memory_207139| |T@[Int]Bool|) (|contents#$Memory_207139| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_206812 0)) ((($Memory_206812 (|domain#$Memory_206812| |T@[Int]Bool|) (|contents#$Memory_206812| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_206648 0)) ((($Memory_206648 (|domain#$Memory_206648| |T@[Int]Bool|) (|contents#$Memory_206648| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_25263) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_25263) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_25263) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_25263) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_25263) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_25263) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_25263) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_25263) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_25263) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_25263) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_159418 0)) (((Multiset_159418 (|v#Multiset_159418| |T@[$EventRep]Int|) (|l#Multiset_159418| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_159418| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_159418|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_268783 0)) ((($Mutation_268783 (|l#$Mutation_268783| T@$Location) (|p#$Mutation_268783| T@Vec_25263) (|v#$Mutation_268783| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_268740 0)) ((($Mutation_268740 (|l#$Mutation_268740| T@$Location) (|p#$Mutation_268740| T@Vec_25263) (|v#$Mutation_268740| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_266325 0)) ((($Mutation_266325 (|l#$Mutation_266325| T@$Location) (|p#$Mutation_266325| T@Vec_25263) (|v#$Mutation_266325| T@$1_DualAttestation_Limit) ) ) ))
(declare-datatypes ((T@$Mutation_263036 0)) ((($Mutation_263036 (|l#$Mutation_263036| T@$Location) (|p#$Mutation_263036| T@Vec_25263) (|v#$Mutation_263036| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_261361 0)) ((($Mutation_261361 (|l#$Mutation_261361| T@$Location) (|p#$Mutation_261361| T@Vec_25263) (|v#$Mutation_261361| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_259706 0)) ((($Mutation_259706 (|l#$Mutation_259706| T@$Location) (|p#$Mutation_259706| T@Vec_25263) (|v#$Mutation_259706| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_255428 0)) ((($Mutation_255428 (|l#$Mutation_255428| T@$Location) (|p#$Mutation_255428| T@Vec_25263) (|v#$Mutation_255428| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_255363 0)) ((($Mutation_255363 (|l#$Mutation_255363| T@$Location) (|p#$Mutation_255363| T@Vec_25263) (|v#$Mutation_255363| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_248284 0)) ((($Mutation_248284 (|l#$Mutation_248284| T@$Location) (|p#$Mutation_248284| T@Vec_25263) (|v#$Mutation_248284| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_52555 0)) ((($Mutation_52555 (|l#$Mutation_52555| T@$Location) (|p#$Mutation_52555| T@Vec_25263) (|v#$Mutation_52555| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_231043 0)) ((($Mutation_231043 (|l#$Mutation_231043| T@$Location) (|p#$Mutation_231043| T@Vec_25263) (|v#$Mutation_231043| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_230993 0)) ((($Mutation_230993 (|l#$Mutation_230993| T@$Location) (|p#$Mutation_230993| T@Vec_25263) (|v#$Mutation_230993| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_228893 0)) ((($Mutation_228893 (|l#$Mutation_228893| T@$Location) (|p#$Mutation_228893| T@Vec_25263) (|v#$Mutation_228893| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_228843 0)) ((($Mutation_228843 (|l#$Mutation_228843| T@$Location) (|p#$Mutation_228843| T@Vec_25263) (|v#$Mutation_228843| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_226697 0)) ((($Mutation_226697 (|l#$Mutation_226697| T@$Location) (|p#$Mutation_226697| T@Vec_25263) (|v#$Mutation_226697| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_226647 0)) ((($Mutation_226647 (|l#$Mutation_226647| T@$Location) (|p#$Mutation_226647| T@Vec_25263) (|v#$Mutation_226647| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_222610 0)) ((($Mutation_222610 (|l#$Mutation_222610| T@$Location) (|p#$Mutation_222610| T@Vec_25263) (|v#$Mutation_222610| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_221820 0)) ((($Mutation_221820 (|l#$Mutation_221820| T@$Location) (|p#$Mutation_221820| T@Vec_25263) (|v#$Mutation_221820| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_221030 0)) ((($Mutation_221030 (|l#$Mutation_221030| T@$Location) (|p#$Mutation_221030| T@Vec_25263) (|v#$Mutation_221030| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_199923 0)) ((($Mutation_199923 (|l#$Mutation_199923| T@$Location) (|p#$Mutation_199923| T@Vec_25263) (|v#$Mutation_199923| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_25263) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_192780 0)) ((($Mutation_192780 (|l#$Mutation_192780| T@$Location) (|p#$Mutation_192780| T@Vec_25263) (|v#$Mutation_192780| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$Mutation_191692 0)) ((($Mutation_191692 (|l#$Mutation_191692| T@$Location) (|p#$Mutation_191692| T@Vec_25263) (|v#$Mutation_191692| T@Vec_159750) ) ) ))
(declare-datatypes ((T@$Mutation_189983 0)) ((($Mutation_189983 (|l#$Mutation_189983| T@$Location) (|p#$Mutation_189983| T@Vec_25263) (|v#$Mutation_189983| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_188996 0)) ((($Mutation_188996 (|l#$Mutation_188996| T@$Location) (|p#$Mutation_188996| T@Vec_25263) (|v#$Mutation_188996| T@Vec_188353) ) ) ))
(declare-datatypes ((T@$Mutation_187303 0)) ((($Mutation_187303 (|l#$Mutation_187303| T@$Location) (|p#$Mutation_187303| T@Vec_25263) (|v#$Mutation_187303| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_186316 0)) ((($Mutation_186316 (|l#$Mutation_186316| T@$Location) (|p#$Mutation_186316| T@Vec_25263) (|v#$Mutation_186316| T@Vec_185673) ) ) ))
(declare-datatypes ((T@$Mutation_184623 0)) ((($Mutation_184623 (|l#$Mutation_184623| T@$Location) (|p#$Mutation_184623| T@Vec_25263) (|v#$Mutation_184623| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_183636 0)) ((($Mutation_183636 (|l#$Mutation_183636| T@$Location) (|p#$Mutation_183636| T@Vec_25263) (|v#$Mutation_183636| T@Vec_159504) ) ) ))
(declare-datatypes ((T@$Mutation_181981 0)) ((($Mutation_181981 (|l#$Mutation_181981| T@$Location) (|p#$Mutation_181981| T@Vec_25263) (|v#$Mutation_181981| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_180994 0)) ((($Mutation_180994 (|l#$Mutation_180994| T@$Location) (|p#$Mutation_180994| T@Vec_25263) (|v#$Mutation_180994| T@Vec_160193) ) ) ))
(declare-datatypes ((T@$Mutation_179316 0)) ((($Mutation_179316 (|l#$Mutation_179316| T@$Location) (|p#$Mutation_179316| T@Vec_25263) (|v#$Mutation_179316| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_178329 0)) ((($Mutation_178329 (|l#$Mutation_178329| T@$Location) (|p#$Mutation_178329| T@Vec_25263) (|v#$Mutation_178329| T@Vec_159960) ) ) ))
(declare-datatypes ((T@$Mutation_176620 0)) ((($Mutation_176620 (|l#$Mutation_176620| T@$Location) (|p#$Mutation_176620| T@Vec_25263) (|v#$Mutation_176620| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_175633 0)) ((($Mutation_175633 (|l#$Mutation_175633| T@$Location) (|p#$Mutation_175633| T@Vec_25263) (|v#$Mutation_175633| T@Vec_159999) ) ) ))
(declare-datatypes ((T@$Mutation_173924 0)) ((($Mutation_173924 (|l#$Mutation_173924| T@$Location) (|p#$Mutation_173924| T@Vec_25263) (|v#$Mutation_173924| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_172937 0)) ((($Mutation_172937 (|l#$Mutation_172937| T@$Location) (|p#$Mutation_172937| T@Vec_25263) (|v#$Mutation_172937| T@Vec_160038) ) ) ))
(declare-datatypes ((T@$Mutation_171228 0)) ((($Mutation_171228 (|l#$Mutation_171228| T@$Location) (|p#$Mutation_171228| T@Vec_25263) (|v#$Mutation_171228| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_170241 0)) ((($Mutation_170241 (|l#$Mutation_170241| T@$Location) (|p#$Mutation_170241| T@Vec_25263) (|v#$Mutation_170241| T@Vec_159693) ) ) ))
(declare-datatypes ((T@$Mutation_168441 0)) ((($Mutation_168441 (|l#$Mutation_168441| T@$Location) (|p#$Mutation_168441| T@Vec_25263) (|v#$Mutation_168441| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_167454 0)) ((($Mutation_167454 (|l#$Mutation_167454| T@$Location) (|p#$Mutation_167454| T@Vec_25263) (|v#$Mutation_167454| T@Vec_159582) ) ) ))
(declare-datatypes ((T@$Mutation_165789 0)) ((($Mutation_165789 (|l#$Mutation_165789| T@$Location) (|p#$Mutation_165789| T@Vec_25263) (|v#$Mutation_165789| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_164802 0)) ((($Mutation_164802 (|l#$Mutation_164802| T@$Location) (|p#$Mutation_164802| T@Vec_25263) (|v#$Mutation_164802| T@Vec_159543) ) ) ))
(declare-datatypes ((T@$Mutation_163089 0)) ((($Mutation_163089 (|l#$Mutation_163089| T@$Location) (|p#$Mutation_163089| T@Vec_25263) (|v#$Mutation_163089| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_162102 0)) ((($Mutation_162102 (|l#$Mutation_162102| T@$Location) (|p#$Mutation_162102| T@Vec_25263) (|v#$Mutation_162102| T@Vec_161457) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_161457 T@Vec_161457) Bool)
(declare-fun InRangeVec_141934 (T@Vec_161457 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_161457) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_161457 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_159543 T@Vec_159543) Bool)
(declare-fun InRangeVec_142135 (T@Vec_159543 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_159543) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_159543 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_159582 T@Vec_159582) Bool)
(declare-fun InRangeVec_142336 (T@Vec_159582 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_159582) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_159582 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_159693 T@Vec_159693) Bool)
(declare-fun InRangeVec_142537 (T@Vec_159693 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_25263 T@Vec_25263) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_159693) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_159693 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_160038 T@Vec_160038) Bool)
(declare-fun InRangeVec_142738 (T@Vec_160038 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_160038) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_160038 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_159999 T@Vec_159999) Bool)
(declare-fun InRangeVec_142939 (T@Vec_159999 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_159999) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_159999 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_159960 T@Vec_159960) Bool)
(declare-fun InRangeVec_143140 (T@Vec_159960 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_159960) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_159960 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_160193 T@Vec_160193) Bool)
(declare-fun InRangeVec_143341 (T@Vec_160193 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_160193) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_160193 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_159504 T@Vec_159504) Bool)
(declare-fun InRangeVec_143542 (T@Vec_159504 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_159504) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_159504 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_185673 T@Vec_185673) Bool)
(declare-fun InRangeVec_143743 (T@Vec_185673 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_185673) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_185673 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_188353 T@Vec_188353) Bool)
(declare-fun InRangeVec_143944 (T@Vec_188353 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_188353) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_188353 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_159750 T@Vec_159750) Bool)
(declare-fun InRangeVec_191115 (T@Vec_159750 Int) Bool)
(declare-fun |Select__T@[Int]Vec_25263_| (|T@[Int]Vec_25263| Int) T@Vec_25263)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_159750) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_25263) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_159750 T@Vec_25263) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_25263 T@Vec_25263) Bool)
(declare-fun InRangeVec_16728 (T@Vec_25263 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_25263) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_25263 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_25263 T@Vec_25263) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_25263) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_25263 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_25263 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_25263) T@Vec_25263)
(declare-fun $1_Hash_sha3 (T@Vec_25263) T@Vec_25263)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_25263) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_25263 T@Vec_25263 T@Vec_25263) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_159418_| (|T@[$1_Event_EventHandle]Multiset_159418| T@$1_Event_EventHandle) T@Multiset_159418)
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
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| (|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_25263 Int) T@Vec_25263)
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
(declare-fun IndexOfVec_25263 (T@Vec_25263 Int) Int)
(declare-fun IndexOfVec_159504 (T@Vec_159504 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_159543 (T@Vec_159543 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_159582 (T@Vec_159582 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_159693 (T@Vec_159693 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_159750 (T@Vec_159750 T@Vec_25263) Int)
(declare-fun IndexOfVec_159960 (T@Vec_159960 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_159999 (T@Vec_159999 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_160038 (T@Vec_160038 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_160193 (T@Vec_160193 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_161457 (T@Vec_161457 |T@#0|) Int)
(declare-fun IndexOfVec_185673 (T@Vec_185673 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_188353 (T@Vec_188353 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_159418| |T@[$1_Event_EventHandle]Multiset_159418|) |T@[$1_Event_EventHandle]Multiset_159418|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_25263| |T@[Int]Vec_25263| Int T@Vec_25263) |T@[Int]Vec_25263|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_25263| Int Int T@Vec_25263) |T@[Int]Vec_25263|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_25263| |T@[Int]Vec_25263| Int T@Vec_25263) |T@[Int]Vec_25263|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |TreasuryComplianceScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |TreasuryComplianceScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |TreasuryComplianceScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |TreasuryComplianceScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |TreasuryComplianceScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |TreasuryComplianceScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |TreasuryComplianceScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |TreasuryComplianceScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_161457) (v2 T@Vec_161457) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_161457| v1) (|l#Vec_161457| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_141934 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_161457| v2) i@@0)))
 :qid |TreasuryComplianceScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |TreasuryComplianceScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_161457) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_161457| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_141934 v@@4 i@@1) true)
 :qid |TreasuryComplianceScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |TreasuryComplianceScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_161457) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_141934 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@5) i@@3) e))
 :qid |TreasuryComplianceScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_141934 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@5) j) e)))
 :qid |TreasuryComplianceScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |TreasuryComplianceScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_159543) (v2@@0 T@Vec_159543) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_159543| v1@@0) (|l#Vec_159543| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_142135 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v2@@0) i@@4)))
 :qid |TreasuryComplianceScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |TreasuryComplianceScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_159543) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_159543| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_142135 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@6) i@@5)))
 :qid |TreasuryComplianceScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |TreasuryComplianceScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_159543) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_142135 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@7) i@@7) e@@0))
 :qid |TreasuryComplianceScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_142135 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@7) j@@0) e@@0)))
 :qid |TreasuryComplianceScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |TreasuryComplianceScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_159582) (v2@@1 T@Vec_159582) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_159582| v1@@1) (|l#Vec_159582| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_142336 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v2@@1) i@@8)))
 :qid |TreasuryComplianceScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |TreasuryComplianceScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_159582) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_159582| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_142336 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@8) i@@9)))
 :qid |TreasuryComplianceScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |TreasuryComplianceScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_159582) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_142336 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@9) i@@11) e@@1))
 :qid |TreasuryComplianceScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_142336 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@9) j@@1) e@@1)))
 :qid |TreasuryComplianceScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |TreasuryComplianceScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_159693) (v2@@2 T@Vec_159693) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_159693| v1@@2) (|l#Vec_159693| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_142537 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))))
 :qid |TreasuryComplianceScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |TreasuryComplianceScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_159693) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_159693| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_142537 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@10) i@@13)))
 :qid |TreasuryComplianceScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |TreasuryComplianceScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_159693) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_142537 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |TreasuryComplianceScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_142537 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |TreasuryComplianceScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |TreasuryComplianceScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_160038) (v2@@3 T@Vec_160038) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_160038| v1@@3) (|l#Vec_160038| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_142738 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v2@@3) i@@16)))))
 :qid |TreasuryComplianceScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |TreasuryComplianceScriptsbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_160038) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_160038| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_142738 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@12) i@@17)))
 :qid |TreasuryComplianceScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |TreasuryComplianceScriptsbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_160038) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_142738 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |TreasuryComplianceScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_142738 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |TreasuryComplianceScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |TreasuryComplianceScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_159999) (v2@@4 T@Vec_159999) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_159999| v1@@4) (|l#Vec_159999| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_142939 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v2@@4) i@@20)))))
 :qid |TreasuryComplianceScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |TreasuryComplianceScriptsbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_159999) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_159999| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_142939 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@14) i@@21)))
 :qid |TreasuryComplianceScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |TreasuryComplianceScriptsbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_159999) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_142939 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |TreasuryComplianceScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_142939 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |TreasuryComplianceScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |TreasuryComplianceScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_159960) (v2@@5 T@Vec_159960) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_159960| v1@@5) (|l#Vec_159960| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_143140 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v2@@5) i@@24)))))
 :qid |TreasuryComplianceScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |TreasuryComplianceScriptsbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_159960) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_159960| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_143140 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@16) i@@25)))
 :qid |TreasuryComplianceScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |TreasuryComplianceScriptsbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_159960) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_143140 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |TreasuryComplianceScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_143140 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |TreasuryComplianceScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |TreasuryComplianceScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_160193) (v2@@6 T@Vec_160193) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_160193| v1@@6) (|l#Vec_160193| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_143341 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v2@@6) i@@28))))
 :qid |TreasuryComplianceScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |TreasuryComplianceScriptsbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_160193) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_160193| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_143341 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@18) i@@29)))
 :qid |TreasuryComplianceScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |TreasuryComplianceScriptsbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_160193) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_143341 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |TreasuryComplianceScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_143341 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |TreasuryComplianceScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |TreasuryComplianceScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_159504) (v2@@7 T@Vec_159504) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_159504| v1@@7) (|l#Vec_159504| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_143542 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v2@@7) i@@32)))))
 :qid |TreasuryComplianceScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |TreasuryComplianceScriptsbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_159504) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_159504| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_143542 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@20) i@@33)))
 :qid |TreasuryComplianceScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |TreasuryComplianceScriptsbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_159504) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_143542 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |TreasuryComplianceScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_143542 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |TreasuryComplianceScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |TreasuryComplianceScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_185673) (v2@@8 T@Vec_185673) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_185673| v1@@8) (|l#Vec_185673| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_143743 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v2@@8) i@@36)))
 :qid |TreasuryComplianceScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |TreasuryComplianceScriptsbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_185673) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_185673| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_143743 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@22) i@@37)))
 :qid |TreasuryComplianceScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |TreasuryComplianceScriptsbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_185673) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_143743 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@23) i@@39) e@@8))
 :qid |TreasuryComplianceScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_143743 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@23) j@@8) e@@8)))
 :qid |TreasuryComplianceScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |TreasuryComplianceScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_188353) (v2@@9 T@Vec_188353) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_188353| v1@@9) (|l#Vec_188353| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_143944 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v2@@9) i@@40)))
 :qid |TreasuryComplianceScriptsbpl.2425:13|
 :skolemid |87|
))))
 :qid |TreasuryComplianceScriptsbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_188353) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_188353| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_143944 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@24) i@@41)))
 :qid |TreasuryComplianceScriptsbpl.2431:13|
 :skolemid |89|
))))
 :qid |TreasuryComplianceScriptsbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_188353) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_143944 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@25) i@@43) e@@9))
 :qid |TreasuryComplianceScriptsbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_143944 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@25) j@@9) e@@9)))
 :qid |TreasuryComplianceScriptsbpl.2444:17|
 :skolemid |92|
)))))
 :qid |TreasuryComplianceScriptsbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_159750) (v2@@10 T@Vec_159750) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_159750| v1@@10) (|l#Vec_159750| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_191115 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v1@@10) i@@44) (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v2@@10) i@@44)))
 :qid |TreasuryComplianceScriptsbpl.2606:13|
 :skolemid |94|
))))
 :qid |TreasuryComplianceScriptsbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_159750) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_159750| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_191115 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@26) i@@45)))
 :qid |TreasuryComplianceScriptsbpl.2612:13|
 :skolemid |96|
))))
 :qid |TreasuryComplianceScriptsbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_159750) (e@@10 T@Vec_25263) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_191115 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@27) i@@47) e@@10))
 :qid |TreasuryComplianceScriptsbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_191115 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@27) j@@10) e@@10)))
 :qid |TreasuryComplianceScriptsbpl.2625:17|
 :skolemid |99|
)))))
 :qid |TreasuryComplianceScriptsbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_25263) (v2@@11 T@Vec_25263) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_25263| v1@@11) (|l#Vec_25263| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_25263| v2@@11) i@@48)))
 :qid |TreasuryComplianceScriptsbpl.2787:13|
 :skolemid |101|
))))
 :qid |TreasuryComplianceScriptsbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_25263) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_25263| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_25263| v@@28) i@@49)))
 :qid |TreasuryComplianceScriptsbpl.2793:13|
 :skolemid |103|
))))
 :qid |TreasuryComplianceScriptsbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_25263) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@29) i@@51) e@@11))
 :qid |TreasuryComplianceScriptsbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@29) j@@11) e@@11)))
 :qid |TreasuryComplianceScriptsbpl.2806:17|
 :skolemid |106|
)))))
 :qid |TreasuryComplianceScriptsbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_25263) (v2@@12 T@Vec_25263) ) (! (= (|$IsEqual'vec'u64''| v1@@12 v2@@12)  (and (= (|l#Vec_25263| v1@@12) (|l#Vec_25263| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_25263| v2@@12) i@@52)))
 :qid |TreasuryComplianceScriptsbpl.2968:13|
 :skolemid |108|
))))
 :qid |TreasuryComplianceScriptsbpl.2966:29|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u64''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_25263) ) (! (= (|$IsValid'vec'u64''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_25263| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_25263| v@@30) i@@53)))
 :qid |TreasuryComplianceScriptsbpl.2974:13|
 :skolemid |110|
))))
 :qid |TreasuryComplianceScriptsbpl.2972:29|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u64''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_25263) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u64'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@31) i@@55) e@@12))
 :qid |TreasuryComplianceScriptsbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@31) j@@12) e@@12)))
 :qid |TreasuryComplianceScriptsbpl.2987:17|
 :skolemid |113|
)))))
 :qid |TreasuryComplianceScriptsbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u64'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_25263) (v2@@13 T@Vec_25263) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13)  (and (= (|l#Vec_25263| v1@@13) (|l#Vec_25263| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_16728 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_25263| v2@@13) i@@56)))
 :qid |TreasuryComplianceScriptsbpl.3149:13|
 :skolemid |115|
))))
 :qid |TreasuryComplianceScriptsbpl.3147:28|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u8''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_25263) ) (! (= (|$IsValid'vec'u8''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_25263| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_16728 v@@32 i@@57) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_25263| v@@32) i@@57)))
 :qid |TreasuryComplianceScriptsbpl.3155:13|
 :skolemid |117|
))))
 :qid |TreasuryComplianceScriptsbpl.3153:28|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u8''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_25263) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u8'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_16728 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@33) i@@59) e@@13))
 :qid |TreasuryComplianceScriptsbpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_16728 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@33) j@@13) e@@13)))
 :qid |TreasuryComplianceScriptsbpl.3168:17|
 :skolemid |120|
)))))
 :qid |TreasuryComplianceScriptsbpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u8'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_25263) (v2@@14 T@Vec_25263) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14)))
 :qid |TreasuryComplianceScriptsbpl.3341:15|
 :skolemid |122|
 :pattern ( ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14))
)))
(assert (forall ((v1@@15 T@Vec_25263) (v2@@15 T@Vec_25263) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15)))
 :qid |TreasuryComplianceScriptsbpl.3357:15|
 :skolemid |123|
 :pattern ( ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15))
)))
(assert (forall ((k1 T@Vec_25263) (k2 T@Vec_25263) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |TreasuryComplianceScriptsbpl.3428:15|
 :skolemid |124|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_25263) (s2 T@Vec_25263) (k1@@0 T@Vec_25263) (k2@@0 T@Vec_25263) (m1 T@Vec_25263) (m2 T@Vec_25263) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |TreasuryComplianceScriptsbpl.3431:15|
 :skolemid |125|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_159418| stream) 0) (forall ((v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream) v@@34) 0)
 :qid |TreasuryComplianceScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |TreasuryComplianceScriptsbpl.3492:13|
 :skolemid |126|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |TreasuryComplianceScriptsbpl.3533:80|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16)))
 :qid |TreasuryComplianceScriptsbpl.3539:15|
 :skolemid |129|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |TreasuryComplianceScriptsbpl.3589:82|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17)))
 :qid |TreasuryComplianceScriptsbpl.3595:15|
 :skolemid |131|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |TreasuryComplianceScriptsbpl.3645:80|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@18 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@18 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@18)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18)))
 :qid |TreasuryComplianceScriptsbpl.3651:15|
 :skolemid |133|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |TreasuryComplianceScriptsbpl.3701:79|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_AdminTransactionEvent) (v2@@19 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19)))
 :qid |TreasuryComplianceScriptsbpl.3707:15|
 :skolemid |135|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |TreasuryComplianceScriptsbpl.3757:76|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_CreateAccountEvent) (v2@@20 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@20 v2@@20) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20)))
 :qid |TreasuryComplianceScriptsbpl.3763:15|
 :skolemid |137|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |TreasuryComplianceScriptsbpl.3813:78|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@21 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21)))
 :qid |TreasuryComplianceScriptsbpl.3819:15|
 :skolemid |139|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |TreasuryComplianceScriptsbpl.3869:74|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_SentPaymentEvent) (v2@@22 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@22))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22)))
 :qid |TreasuryComplianceScriptsbpl.3875:15|
 :skolemid |141|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |TreasuryComplianceScriptsbpl.3925:69|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@23 T@$1_DiemBlock_NewBlockEvent) (v2@@23 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@23) (|$round#$1_DiemBlock_NewBlockEvent| v2@@23)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@23) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@23))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@23) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@23) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23)))
 :qid |TreasuryComplianceScriptsbpl.3931:15|
 :skolemid |143|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |TreasuryComplianceScriptsbpl.3981:70|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@24 T@$1_DiemConfig_NewEpochEvent) (v2@@24 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@24 v2@@24) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24)))
 :qid |TreasuryComplianceScriptsbpl.3987:15|
 :skolemid |145|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |TreasuryComplianceScriptsbpl.4037:60|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@25 T@$1_Diem_BurnEvent) (v2@@25 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@25) (|$amount#$1_Diem_BurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@25) (|$currency_code#$1_Diem_BurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@25) (|$preburn_address#$1_Diem_BurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25)))
 :qid |TreasuryComplianceScriptsbpl.4043:15|
 :skolemid |147|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |TreasuryComplianceScriptsbpl.4093:66|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@26 T@$1_Diem_CancelBurnEvent) (v2@@26 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@26) (|$amount#$1_Diem_CancelBurnEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@26) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@26) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26)))
 :qid |TreasuryComplianceScriptsbpl.4099:15|
 :skolemid |149|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |TreasuryComplianceScriptsbpl.4149:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@27 T@$1_Diem_MintEvent) (v2@@27 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@27) (|$amount#$1_Diem_MintEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@27) (|$currency_code#$1_Diem_MintEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27)))
 :qid |TreasuryComplianceScriptsbpl.4155:15|
 :skolemid |151|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |TreasuryComplianceScriptsbpl.4205:63|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@28 T@$1_Diem_PreburnEvent) (v2@@28 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@28) (|$amount#$1_Diem_PreburnEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@28) (|$currency_code#$1_Diem_PreburnEvent| v2@@28))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@28) (|$preburn_address#$1_Diem_PreburnEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28)))
 :qid |TreasuryComplianceScriptsbpl.4211:15|
 :skolemid |153|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |TreasuryComplianceScriptsbpl.4261:79|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29)))
 :qid |TreasuryComplianceScriptsbpl.4267:15|
 :skolemid |155|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |TreasuryComplianceScriptsbpl.4317:82|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@30 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30)))
 :qid |TreasuryComplianceScriptsbpl.4323:15|
 :skolemid |157|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |TreasuryComplianceScriptsbpl.4373:88|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31)))
 :qid |TreasuryComplianceScriptsbpl.4379:15|
 :skolemid |159|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |TreasuryComplianceScriptsbpl.4429:72|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@32 T@$1_VASPDomain_VASPDomainEvent) (v2@@32 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@32)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@32)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@32)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@32))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32)))
 :qid |TreasuryComplianceScriptsbpl.4435:15|
 :skolemid |161|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |TreasuryComplianceScriptsbpl.4504:61|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |TreasuryComplianceScriptsbpl.4563:36|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |TreasuryComplianceScriptsbpl.4582:71|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |TreasuryComplianceScriptsbpl.4660:46|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |TreasuryComplianceScriptsbpl.4672:64|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |TreasuryComplianceScriptsbpl.4684:75|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |TreasuryComplianceScriptsbpl.4696:72|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |TreasuryComplianceScriptsbpl.4724:55|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |TreasuryComplianceScriptsbpl.4747:46|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |TreasuryComplianceScriptsbpl.4759:15|
 :skolemid |171|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |TreasuryComplianceScriptsbpl.4772:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |TreasuryComplianceScriptsbpl.4970:71|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |TreasuryComplianceScriptsbpl.4983:91|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |TreasuryComplianceScriptsbpl.4996:113|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |TreasuryComplianceScriptsbpl.5009:75|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |TreasuryComplianceScriptsbpl.5022:73|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |TreasuryComplianceScriptsbpl.5042:48|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |TreasuryComplianceScriptsbpl.5059:83|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |TreasuryComplianceScriptsbpl.5073:48|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |TreasuryComplianceScriptsbpl.5094:45|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |TreasuryComplianceScriptsbpl.5108:51|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |TreasuryComplianceScriptsbpl.5131:48|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |TreasuryComplianceScriptsbpl.5164:49|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |TreasuryComplianceScriptsbpl.5209:65|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |TreasuryComplianceScriptsbpl.5371:45|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |TreasuryComplianceScriptsbpl.5384:45|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@24)))
 :qid |TreasuryComplianceScriptsbpl.5397:37|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@25) true)
 :qid |TreasuryComplianceScriptsbpl.5410:55|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26) true)
 :qid |TreasuryComplianceScriptsbpl.5424:55|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@27) true)
 :qid |TreasuryComplianceScriptsbpl.5438:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@28))))
 :qid |TreasuryComplianceScriptsbpl.5458:38|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@28))
)))
(assert (forall ((s@@29 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@29)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@29)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@29))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@29))))
 :qid |TreasuryComplianceScriptsbpl.5480:44|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))))
 :qid |TreasuryComplianceScriptsbpl.5532:53|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@31)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))))
 :qid |TreasuryComplianceScriptsbpl.5605:53|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@32)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@32)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@32))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@32))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@32))))
 :qid |TreasuryComplianceScriptsbpl.5678:45|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@33) true)
 :qid |TreasuryComplianceScriptsbpl.5715:55|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34) true)
 :qid |TreasuryComplianceScriptsbpl.5729:55|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@35) true)
 :qid |TreasuryComplianceScriptsbpl.5743:47|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@36)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@36))))
 :qid |TreasuryComplianceScriptsbpl.5760:38|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@37) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@37)))
 :qid |TreasuryComplianceScriptsbpl.5774:48|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@38)))
 :qid |TreasuryComplianceScriptsbpl.5788:48|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@39) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@39)))
 :qid |TreasuryComplianceScriptsbpl.5802:40|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |TreasuryComplianceScriptsbpl.5822:41|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |TreasuryComplianceScriptsbpl.5838:53|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |TreasuryComplianceScriptsbpl.5851:53|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@43)))
 :qid |TreasuryComplianceScriptsbpl.5864:45|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |TreasuryComplianceScriptsbpl.5880:60|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |TreasuryComplianceScriptsbpl.5897:60|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@46))))
 :qid |TreasuryComplianceScriptsbpl.5914:52|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47))))
 :qid |TreasuryComplianceScriptsbpl.5931:57|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48) true)
 :qid |TreasuryComplianceScriptsbpl.15257:68|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))))
 :qid |TreasuryComplianceScriptsbpl.15279:66|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))))
 :qid |TreasuryComplianceScriptsbpl.15305:66|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@51)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@51)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@51))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@51))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@51))))
 :qid |TreasuryComplianceScriptsbpl.15331:58|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))))
 :qid |TreasuryComplianceScriptsbpl.15360:56|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))))
 :qid |TreasuryComplianceScriptsbpl.15390:56|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@54)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@54)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@54))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@54))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@54))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@54))))
 :qid |TreasuryComplianceScriptsbpl.15420:48|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@54))
)))
(assert (forall ((s@@55 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@55) true)
 :qid |TreasuryComplianceScriptsbpl.15438:31|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@55))
)))
(assert (forall ((s@@56 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@56) true)
 :qid |TreasuryComplianceScriptsbpl.15471:31|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@56))
)))
(assert (forall ((s@@57 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@57)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@57)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@57))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@57))))
 :qid |TreasuryComplianceScriptsbpl.15490:35|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@58) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@58)))
 :qid |TreasuryComplianceScriptsbpl.15511:45|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@59)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@59))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@59))))
 :qid |TreasuryComplianceScriptsbpl.15529:50|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@60) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@60)))
 :qid |TreasuryComplianceScriptsbpl.15545:52|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@61) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@61)))
 :qid |TreasuryComplianceScriptsbpl.15558:46|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@62) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@62)))
 :qid |TreasuryComplianceScriptsbpl.16511:38|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@63) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@63)))
 :qid |TreasuryComplianceScriptsbpl.16525:39|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@63))
)))
(assert (forall ((s@@64 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@64)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@64)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@64))))
 :qid |TreasuryComplianceScriptsbpl.16567:65|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@65)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@65)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@65))))
 :qid |TreasuryComplianceScriptsbpl.16585:65|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@65))
)))
(assert (forall ((s@@66 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@66)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@66)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@66))))
 :qid |TreasuryComplianceScriptsbpl.16603:57|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@66))
)))
(assert (forall ((payer Int) (metadata T@Vec_25263) (deposit_value Int) ) (! (let (($$res@@0 ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |TreasuryComplianceScriptsbpl.17995:15|
 :skolemid |243|
)))
(assert (forall ((s@@67 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@67))))
 :qid |TreasuryComplianceScriptsbpl.18023:60|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68))))
 :qid |TreasuryComplianceScriptsbpl.18040:66|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@69)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@69))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@69))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@69))))
 :qid |TreasuryComplianceScriptsbpl.18069:50|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@70) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@70)))
 :qid |TreasuryComplianceScriptsbpl.18092:45|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@71)) true))
 :qid |TreasuryComplianceScriptsbpl.18274:87|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |TreasuryComplianceScriptsbpl.18288:47|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |TreasuryComplianceScriptsbpl.18307:58|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))))
 :qid |TreasuryComplianceScriptsbpl.18329:61|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))))
 :qid |TreasuryComplianceScriptsbpl.18352:61|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@76)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@76))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@76))))
 :qid |TreasuryComplianceScriptsbpl.18375:53|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76))
)))
(assert (forall ((s@@77 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@77) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@77)))
 :qid |TreasuryComplianceScriptsbpl.18392:39|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@78))))
 :qid |TreasuryComplianceScriptsbpl.18424:58|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79))))
 :qid |TreasuryComplianceScriptsbpl.18441:58|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80) true)
 :qid |TreasuryComplianceScriptsbpl.18456:51|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81))))
 :qid |TreasuryComplianceScriptsbpl.18473:60|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@82)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@82))))
 :qid |TreasuryComplianceScriptsbpl.19258:47|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@83)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@83))))
 :qid |TreasuryComplianceScriptsbpl.19284:63|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@84)))
 :qid |TreasuryComplianceScriptsbpl.19299:57|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@85)))
 :qid |TreasuryComplianceScriptsbpl.19312:55|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@86)))
 :qid |TreasuryComplianceScriptsbpl.19326:55|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@87) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@87)))
 :qid |TreasuryComplianceScriptsbpl.19340:47|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@88)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@88))))
 :qid |TreasuryComplianceScriptsbpl.19357:54|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@89) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@89)))
 :qid |TreasuryComplianceScriptsbpl.19371:55|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@90) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@90)))
 :qid |TreasuryComplianceScriptsbpl.19384:57|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@91))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@91))))
 :qid |TreasuryComplianceScriptsbpl.19406:56|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@92))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@92))))
 :qid |TreasuryComplianceScriptsbpl.19433:52|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@93) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@93)))
 :qid |TreasuryComplianceScriptsbpl.19451:54|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@93))
)))
(assert (forall ((s@@94 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@94) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@94)))
 :qid |TreasuryComplianceScriptsbpl.20276:55|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |TreasuryComplianceScriptsbpl.20297:47|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |TreasuryComplianceScriptsbpl.20321:47|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |TreasuryComplianceScriptsbpl.20339:49|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |TreasuryComplianceScriptsbpl.20381:49|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |TreasuryComplianceScriptsbpl.20410:48|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |TreasuryComplianceScriptsbpl.20426:47|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@35 T@Vec_161457) (i@@60 Int) ) (! (= (InRangeVec_141934 v@@35 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_161457| v@@35))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_141934 v@@35 i@@60))
)))
(assert (forall ((v@@36 T@Vec_159543) (i@@61 Int) ) (! (= (InRangeVec_142135 v@@36 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_159543| v@@36))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142135 v@@36 i@@61))
)))
(assert (forall ((v@@37 T@Vec_159582) (i@@62 Int) ) (! (= (InRangeVec_142336 v@@37 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_159582| v@@37))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142336 v@@37 i@@62))
)))
(assert (forall ((v@@38 T@Vec_159693) (i@@63 Int) ) (! (= (InRangeVec_142537 v@@38 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_159693| v@@38))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142537 v@@38 i@@63))
)))
(assert (forall ((v@@39 T@Vec_160038) (i@@64 Int) ) (! (= (InRangeVec_142738 v@@39 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_160038| v@@39))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142738 v@@39 i@@64))
)))
(assert (forall ((v@@40 T@Vec_159999) (i@@65 Int) ) (! (= (InRangeVec_142939 v@@40 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_159999| v@@40))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142939 v@@40 i@@65))
)))
(assert (forall ((v@@41 T@Vec_159960) (i@@66 Int) ) (! (= (InRangeVec_143140 v@@41 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_159960| v@@41))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143140 v@@41 i@@66))
)))
(assert (forall ((v@@42 T@Vec_160193) (i@@67 Int) ) (! (= (InRangeVec_143341 v@@42 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_160193| v@@42))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143341 v@@42 i@@67))
)))
(assert (forall ((v@@43 T@Vec_159504) (i@@68 Int) ) (! (= (InRangeVec_143542 v@@43 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_159504| v@@43))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143542 v@@43 i@@68))
)))
(assert (forall ((v@@44 T@Vec_185673) (i@@69 Int) ) (! (= (InRangeVec_143743 v@@44 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_185673| v@@44))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143743 v@@44 i@@69))
)))
(assert (forall ((v@@45 T@Vec_188353) (i@@70 Int) ) (! (= (InRangeVec_143944 v@@45 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_188353| v@@45))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143944 v@@45 i@@70))
)))
(assert (forall ((v@@46 T@Vec_159750) (i@@71 Int) ) (! (= (InRangeVec_191115 v@@46 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_159750| v@@46))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_191115 v@@46 i@@71))
)))
(assert (forall ((v@@47 T@Vec_25263) (i@@72 Int) ) (! (= (InRangeVec_16728 v@@47 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_25263| v@@47))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@47 i@@72))
)))
(assert (forall ((v@@48 T@Vec_25263) (e@@14 Int) ) (! (let ((i@@73 (IndexOfVec_25263 v@@48 e@@14)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_16728 v@@48 i@@74) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@48) i@@74) e@@14))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_16728 v@@48 i@@73) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@48) i@@73) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@73)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@48) j@@14) e@@14)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_25263 v@@48 e@@14))
)))
(assert (forall ((v@@49 T@Vec_159504) (e@@15 T@$1_ValidatorConfig_Config) ) (! (let ((i@@75 (IndexOfVec_159504 v@@49 e@@15)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_143542 v@@49 i@@76) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@49) i@@76) e@@15))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_143542 v@@49 i@@75) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@49) i@@75) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@75)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@49) j@@15) e@@15)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159504 v@@49 e@@15))
)))
(assert (forall ((v@@50 T@Vec_159543) (e@@16 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@77 (IndexOfVec_159543 v@@50 e@@16)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_142135 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@50) i@@78) e@@16))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_142135 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@50) i@@77) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@77)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@50) j@@16) e@@16)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159543 v@@50 e@@16))
)))
(assert (forall ((v@@51 T@Vec_159582) (e@@17 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@79 (IndexOfVec_159582 v@@51 e@@17)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_142336 v@@51 i@@80) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@51) i@@80) e@@17))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_142336 v@@51 i@@79) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@51) i@@79) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@79)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@51) j@@17) e@@17)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159582 v@@51 e@@17))
)))
(assert (forall ((v@@52 T@Vec_159693) (e@@18 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@81 (IndexOfVec_159693 v@@52 e@@18)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_142537 v@@52 i@@82) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@52) i@@82) e@@18))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_142537 v@@52 i@@81) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@52) i@@81) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@81)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@52) j@@18) e@@18)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159693 v@@52 e@@18))
)))
(assert (forall ((v@@53 T@Vec_159750) (e@@19 T@Vec_25263) ) (! (let ((i@@83 (IndexOfVec_159750 v@@53 e@@19)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_191115 v@@53 i@@84) (= (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@53) i@@84) e@@19))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_191115 v@@53 i@@83) (= (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@53) i@@83) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@83)) (not (= (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@53) j@@19) e@@19)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159750 v@@53 e@@19))
)))
(assert (forall ((v@@54 T@Vec_159960) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@85 (IndexOfVec_159960 v@@54 e@@20)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_143140 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@54) i@@86) e@@20))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_143140 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@54) i@@85) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@54) j@@20) e@@20)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159960 v@@54 e@@20))
)))
(assert (forall ((v@@55 T@Vec_159999) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@87 (IndexOfVec_159999 v@@55 e@@21)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_142939 v@@55 i@@88) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@55) i@@88) e@@21))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_142939 v@@55 i@@87) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@55) i@@87) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@87)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@55) j@@21) e@@21)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159999 v@@55 e@@21))
)))
(assert (forall ((v@@56 T@Vec_160038) (e@@22 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@89 (IndexOfVec_160038 v@@56 e@@22)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_142738 v@@56 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@56) i@@90) e@@22))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_142738 v@@56 i@@89) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@56) i@@89) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@89)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@56) j@@22) e@@22)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_160038 v@@56 e@@22))
)))
(assert (forall ((v@@57 T@Vec_160193) (e@@23 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@91 (IndexOfVec_160193 v@@57 e@@23)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_143341 v@@57 i@@92) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@57) i@@92) e@@23))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_143341 v@@57 i@@91) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@57) i@@91) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@91)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@57) j@@23) e@@23)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_160193 v@@57 e@@23))
)))
(assert (forall ((v@@58 T@Vec_161457) (e@@24 |T@#0|) ) (! (let ((i@@93 (IndexOfVec_161457 v@@58 e@@24)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_141934 v@@58 i@@94) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@58) i@@94) e@@24))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_141934 v@@58 i@@93) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@58) i@@93) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@93)) (not (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@58) j@@24) e@@24)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_161457 v@@58 e@@24))
)))
(assert (forall ((v@@59 T@Vec_185673) (e@@25 T@$1_XDX_XDX) ) (! (let ((i@@95 (IndexOfVec_185673 v@@59 e@@25)))
(ite  (not (exists ((i@@96 Int) ) (!  (and (InRangeVec_143743 v@@59 i@@96) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@59) i@@96) e@@25))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@95 (- 0 1))  (and (and (InRangeVec_143743 v@@59 i@@95) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@59) i@@95) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@95)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@59) j@@25) e@@25)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_185673 v@@59 e@@25))
)))
(assert (forall ((v@@60 T@Vec_188353) (e@@26 T@$1_XUS_XUS) ) (! (let ((i@@97 (IndexOfVec_188353 v@@60 e@@26)))
(ite  (not (exists ((i@@98 Int) ) (!  (and (InRangeVec_143944 v@@60 i@@98) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@60) i@@98) e@@26))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@97 (- 0 1))  (and (and (InRangeVec_143944 v@@60 i@@97) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@60) i@@97) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@97)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@60) j@@26) e@@26)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_188353 v@@60 e@@26))
)))
(assert (forall ((|l#0| Bool) (i@@99 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99) |l#0|)
 :qid |TreasuryComplianceScriptsbpl.275:54|
 :skolemid |1266|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_159418|) (|l#1| |T@[$1_Event_EventHandle]Multiset_159418|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#1| handle@@0))))
(Multiset_159418 (|lambda#42| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#0@@0| handle@@0)) (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |TreasuryComplianceScriptsbpl.3502:13|
 :skolemid |1267|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@100 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100) (ite  (and (>= i@@100 |l#0@@1|) (< i@@100 |l#1@@0|)) (ite (< i@@100 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@100) (|Select__T@[Int]#0_| |l#4| (- i@@100 |l#5|))) |l#6|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1268|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@101 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101) (ite  (and (<= |l#0@@2| i@@101) (< i@@101 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@101) |l#4@@0|)) |l#5@@0|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1269|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@27 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27) (ite  (and (>= j@@27 |l#0@@3|) (< j@@27 |l#1@@2|)) (ite (< j@@27 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@27) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@27 |l#5@@1|))) |l#6@@0|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1270|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102) (ite  (and (>= i@@102 |l#0@@4|) (< i@@102 |l#1@@3|)) (ite (< i@@102 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@102) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@102 |l#5@@2|))) |l#6@@1|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1271|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103) (ite  (and (<= |l#0@@5| i@@103) (< i@@103 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@103) |l#4@@3|)) |l#5@@3|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1272|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28) (ite  (and (>= j@@28 |l#0@@6|) (< j@@28 |l#1@@5|)) (ite (< j@@28 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@28) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@28 |l#5@@4|))) |l#6@@2|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1273|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104) (ite  (and (>= i@@104 |l#0@@7|) (< i@@104 |l#1@@6|)) (ite (< i@@104 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@104) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@104 |l#5@@5|))) |l#6@@3|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1274|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105) (ite  (and (<= |l#0@@8| i@@105) (< i@@105 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@105) |l#4@@6|)) |l#5@@6|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1275|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29) (ite  (and (>= j@@29 |l#0@@9|) (< j@@29 |l#1@@8|)) (ite (< j@@29 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@29) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@29 |l#5@@7|))) |l#6@@4|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1276|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106) (ite  (and (>= i@@106 |l#0@@10|) (< i@@106 |l#1@@9|)) (ite (< i@@106 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@106) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@106 |l#5@@8|))) |l#6@@5|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1277|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107) (ite  (and (<= |l#0@@11| i@@107) (< i@@107 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@107) |l#4@@9|)) |l#5@@9|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1278|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30) (ite  (and (>= j@@30 |l#0@@12|) (< j@@30 |l#1@@11|)) (ite (< j@@30 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@30) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@30 |l#5@@10|))) |l#6@@6|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1279|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108) (ite  (and (>= i@@108 |l#0@@13|) (< i@@108 |l#1@@12|)) (ite (< i@@108 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@108 |l#5@@11|))) |l#6@@7|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1280|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109) (ite  (and (<= |l#0@@14| i@@109) (< i@@109 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@109) |l#4@@12|)) |l#5@@12|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1281|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31) (ite  (and (>= j@@31 |l#0@@15|) (< j@@31 |l#1@@14|)) (ite (< j@@31 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@31 |l#5@@13|))) |l#6@@8|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1282|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110) (ite  (and (>= i@@110 |l#0@@16|) (< i@@110 |l#1@@15|)) (ite (< i@@110 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@110) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@110 |l#5@@14|))) |l#6@@9|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1283|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111) (ite  (and (<= |l#0@@17| i@@111) (< i@@111 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@111) |l#4@@15|)) |l#5@@15|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1284|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32) (ite  (and (>= j@@32 |l#0@@18|) (< j@@32 |l#1@@17|)) (ite (< j@@32 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@32 |l#5@@16|))) |l#6@@10|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1285|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112) (ite  (and (>= i@@112 |l#0@@19|) (< i@@112 |l#1@@18|)) (ite (< i@@112 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@112) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@112 |l#5@@17|))) |l#6@@11|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1286|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113) (ite  (and (<= |l#0@@20| i@@113) (< i@@113 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@113) |l#4@@18|)) |l#5@@18|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1287|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33) (ite  (and (>= j@@33 |l#0@@21|) (< j@@33 |l#1@@20|)) (ite (< j@@33 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@33 |l#5@@19|))) |l#6@@12|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1288|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114) (ite  (and (>= i@@114 |l#0@@22|) (< i@@114 |l#1@@21|)) (ite (< i@@114 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@114) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@114 |l#5@@20|))) |l#6@@13|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1289|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115) (ite  (and (<= |l#0@@23| i@@115) (< i@@115 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@115) |l#4@@21|)) |l#5@@21|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1290|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34) (ite  (and (>= j@@34 |l#0@@24|) (< j@@34 |l#1@@23|)) (ite (< j@@34 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@34) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@34 |l#5@@22|))) |l#6@@14|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1291|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116) (ite  (and (>= i@@116 |l#0@@25|) (< i@@116 |l#1@@24|)) (ite (< i@@116 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@116) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@116 |l#5@@23|))) |l#6@@15|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1292|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117) (ite  (and (<= |l#0@@26| i@@117) (< i@@117 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@117) |l#4@@24|)) |l#5@@24|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1293|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35) (ite  (and (>= j@@35 |l#0@@27|) (< j@@35 |l#1@@26|)) (ite (< j@@35 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@35) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@35 |l#5@@25|))) |l#6@@16|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1294|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118) (ite  (and (>= i@@118 |l#0@@28|) (< i@@118 |l#1@@27|)) (ite (< i@@118 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@118) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@118 |l#5@@26|))) |l#6@@17|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1295|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119) (ite  (and (<= |l#0@@29| i@@119) (< i@@119 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@119) |l#4@@27|)) |l#5@@27|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1296|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36) (ite  (and (>= j@@36 |l#0@@30|) (< j@@36 |l#1@@29|)) (ite (< j@@36 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@36) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@36 |l#5@@28|))) |l#6@@18|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1297|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120) (ite  (and (>= i@@120 |l#0@@31|) (< i@@120 |l#1@@30|)) (ite (< i@@120 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@120) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@120 |l#5@@29|))) |l#6@@19|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1298|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121) (ite  (and (<= |l#0@@32| i@@121) (< i@@121 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@121) |l#4@@30|)) |l#5@@30|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1299|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37) (ite  (and (>= j@@37 |l#0@@33|) (< j@@37 |l#1@@32|)) (ite (< j@@37 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@37) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@37 |l#5@@31|))) |l#6@@20|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1300|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_25263|) (|l#4@@32| |T@[Int]Vec_25263|) (|l#5@@32| Int) (|l#6@@21| T@Vec_25263) (i@@122 Int) ) (! (= (|Select__T@[Int]Vec_25263_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122) (ite  (and (>= i@@122 |l#0@@34|) (< i@@122 |l#1@@33|)) (ite (< i@@122 |l#2@@32|) (|Select__T@[Int]Vec_25263_| |l#3@@32| i@@122) (|Select__T@[Int]Vec_25263_| |l#4@@32| (- i@@122 |l#5@@32|))) |l#6@@21|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1301|
 :pattern ( (|Select__T@[Int]Vec_25263_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_25263|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_25263) (i@@123 Int) ) (! (= (|Select__T@[Int]Vec_25263_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123) (ite  (and (<= |l#0@@35| i@@123) (< i@@123 |l#1@@34|)) (|Select__T@[Int]Vec_25263_| |l#2@@33| (- (- |l#3@@33| i@@123) |l#4@@33|)) |l#5@@33|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1302|
 :pattern ( (|Select__T@[Int]Vec_25263_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_25263|) (|l#4@@34| |T@[Int]Vec_25263|) (|l#5@@34| Int) (|l#6@@22| T@Vec_25263) (j@@38 Int) ) (! (= (|Select__T@[Int]Vec_25263_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38) (ite  (and (>= j@@38 |l#0@@36|) (< j@@38 |l#1@@35|)) (ite (< j@@38 |l#2@@34|) (|Select__T@[Int]Vec_25263_| |l#3@@34| j@@38) (|Select__T@[Int]Vec_25263_| |l#4@@34| (+ j@@38 |l#5@@34|))) |l#6@@22|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1303|
 :pattern ( (|Select__T@[Int]Vec_25263_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@124 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124) (ite  (and (>= i@@124 |l#0@@37|) (< i@@124 |l#1@@36|)) (ite (< i@@124 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@124) (|Select__T@[Int]Int_| |l#4@@35| (- i@@124 |l#5@@35|))) |l#6@@23|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1304|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@125 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125) (ite  (and (<= |l#0@@38| i@@125) (< i@@125 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@125) |l#4@@36|)) |l#5@@36|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1305|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@39 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39) (ite  (and (>= j@@39 |l#0@@39|) (< j@@39 |l#1@@38|)) (ite (< j@@39 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@39) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@39 |l#5@@37|))) |l#6@@24|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1306|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@61) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@61)))
 :qid |TreasuryComplianceScriptsbpl.154:29|
 :skolemid |1307|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_271359)
(declare-fun $t3 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_206648)
(declare-fun $t5 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_271193)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_211043)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_258672)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_258608)
(declare-fun |$1_AccountLimits_Window'$1_XDX_XDX'_$memory| () T@$Memory_251222)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_272232)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_251810)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| Int) |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun _$t1 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_268192)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_217966)
(declare-fun $t6 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_218414)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_206812)
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t9 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t11 () Int)
(declare-fun MapConstVec_16957 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_16957 () Int)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t27 () Int)
(declare-fun $t58 () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5 () T@$Memory_271359)
(declare-fun $t57 () Int)
(declare-fun $t49 () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_271359)
(declare-fun $t30 () Int)
(declare-fun $t31 () Int)
(declare-fun $t32 () Int)
(declare-fun $t34 () Bool)
(declare-fun $t35 () Int)
(declare-fun $t36 () Int)
(declare-fun $t37 () Int)
(declare-fun $t26 () Bool)
(declare-fun $t24 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@8 () T@$Memory_271359)
(declare-fun |Store__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_WithdrawCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_WithdrawCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_WithdrawCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_WithdrawCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_142356 (T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun DefaultVecElem_142356 () T@$1_DiemAccount_WithdrawCapability)
(declare-fun $t25 () T@$1_DiemAccount_WithdrawCapability)
(declare-fun $t59 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_271193)
(declare-fun $t60 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_211043)
(declare-fun $t13 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| () T@$Memory_218414)
(declare-fun $t14 () Int)
(declare-fun $t15 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t17 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t19 () T@$1_Event_EventHandle)
(declare-fun $t20 () T@$1_Diem_PreburnEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_159418_| (|T@[$1_Event_EventHandle]Multiset_159418| T@$1_Event_EventHandle T@Multiset_159418) |T@[$1_Event_EventHandle]Multiset_159418|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_159418|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_159418)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|Store__T@[$1_Event_EventHandle]Multiset_159418_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_159418|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_159418)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|Store__T@[$1_Event_EventHandle]Multiset_159418_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_159418_| ?x0 ?y1))) :weight 0)))
(declare-fun $t22 () T@$1_Event_EventHandle)
(declare-fun $t23 () T@$1_DiemAccount_SentPaymentEvent)
(declare-fun |$temp_0'bool'@7| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@7 () T@$Memory_271359)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_DiemAccount_$memory@6 () T@$Memory_271359)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@2| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t50 () Int)
(declare-fun $t29 () Int)
(declare-fun $t51 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t28 () Int)
(declare-fun $t38 () Int)
(declare-fun $t39 () Int)
(declare-fun $t40 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t52 () T@$1_Diem_PreburnEvent)
(declare-fun $t45 () T@$1_Diem_PreburnEvent)
(declare-fun $t53 () T@$1_Event_EventHandle)
(declare-fun $t44 () T@$1_Event_EventHandle)
(declare-fun $t54 () Bool)
(declare-fun $t42 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t55 () T@$1_DiemAccount_SentPaymentEvent)
(declare-fun $t48 () T@$1_DiemAccount_SentPaymentEvent)
(declare-fun $t56 () T@$1_Event_EventHandle)
(declare-fun $t47 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@6| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_211043)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_211043)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$temp_0'bool'@5| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1| () T@$Memory_218414)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0| () T@$Memory_218414)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0| () |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun |$temp_0'bool'@4| () Bool)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory@1| () T@$Memory_217966)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory@0| () T@$Memory_217966)
(declare-fun |Store__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| Int |T@$1_Diem_Preburn'$1_XDX_XDX'|) |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| Int) |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_Preburn'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_Preburn'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@0| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_271193)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_271193)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_Balance'$1_XDX_XDX''@0| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4 () T@$Memory_271359)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3 () T@$Memory_271359)
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_AccountLimits_Window'$1_XDX_XDX'_$memory@1| () T@$Memory_251222)
(declare-fun |$1_AccountLimits_Window'$1_XDX_XDX'_$memory@0| () T@$Memory_251222)
(declare-fun |Store__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| Int |T@$1_AccountLimits_Window'$1_XDX_XDX'|) |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_AccountLimits_Window'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|Store__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_AccountLimits_Window'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|Store__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@0| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t33 () Int)
(declare-fun $t41 () Int)
(declare-fun $t43 () T@Vec_25263)
(declare-fun $t46 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_271359)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_271359)
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_207139)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_207859)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_208471)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_209024)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_208943)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_210451)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_209123)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_211663)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_210924)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_251354)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_254663)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_259142)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_265101)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_264828)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_209187)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_268159)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_268570)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_273537)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_254928)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_255327)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_271110)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_267270)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_286218)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_286370)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_209251)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_209315)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t4 () T@$1_DiemAccount_WithdrawCapability)
(declare-fun $t8 () Int)
(declare-fun $t16 () Int)
(declare-fun $t18 () T@Vec_25263)
(declare-fun $t21 () Int)
(push 1)
(set-info :boogie-vc-id $1_TreasuryComplianceScripts_preburn$verify_instantiated_1)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 623556) (let ((L2_correct  (and (=> (= (ControlFlow 0 439510) (- 0 629148)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000)) (<= (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))))))) (< (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) 18446744073709551615)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) $MAX_U64)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t6) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t6)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t7)) 2))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1) 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t10)))) (and $t9 (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t10)) 2)))) (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t11)) 2))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_Preburn'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| _$t1)) (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))))) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12) (>= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12))) 256))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t3) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t3))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000)) (<= (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))))))) (< (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) 18446744073709551615)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) $MAX_U64)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t6) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t6)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t7)) 2))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1) 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t10)))) (and $t9 (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t10)) 2)))) (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t11)) 2))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_Preburn'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| _$t1)) (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))))) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12) (>= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12))) 256))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t3) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t3)))) (=> (= (ControlFlow 0 439510) (- 0 629664)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)) (= 5 $t27)) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)))) 0)) (= 1 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t5)) (= 5 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5)) (= 5 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000)) (<= (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))))))) (= 8 $t27))) (and (< (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) _$t1) (= 8 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t27))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5))) (= 1 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (= 5 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (= 5 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) 18446744073709551615))) (= 8 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) $MAX_U64))) (= 8 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (= 1 $t27))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t6) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t6)))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t7)) (= 5 $t27))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t7)) 2)) (= 3 $t27))) (and (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1) 18446744073709551615) (= 8 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t27))) (and (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t10))) (= 5 $t27))) (and (and $t9 (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t10)) 2))) (= 3 $t27))) (and (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t11)) (= 5 $t27))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t11)) 2)) (= 3 $t27))) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_Preburn'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| _$t1)) (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))))) 0) (= 7 $t27))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12) (>= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12))) 256)) (= 8 $t27))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t3) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t3)))) (= 5 $t27)) (= 1 $t27)) (= 3 $t27)) (= 8 $t27)))))))
(let ((anon41_Then_correct  (=> (and (and $t58 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (= 5 $t27)) (and (not (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)))) 0)) (= 1 $t27)))) (and (= $t27 $t27) (= (ControlFlow 0 438038) 439510))) L2_correct)))
(let ((anon34_Then_correct  (=> (and (and $t49 (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t27)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t30)) (= 5 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t30)) (= 5 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000)) (<= (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) _$t1) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))))))) (= 8 $t27))) (and (< (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t30))) _$t1) (= 8 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t27))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t30) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t30))) (= 1 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) (= 5 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (= 5 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000))) (> (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) _$t1) 18446744073709551615))) (= 8 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) $MAX_U64))) (= 8 $t27))) (and (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (= 1 $t27))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t31) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t31)))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t32)) (= 5 $t27))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t32)) 2)) (= 3 $t27))) (and (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1) 18446744073709551615) (= 8 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t27))) (and (and $t34 (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t35))) (= 5 $t27))) (and (and $t34 (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t35)) 2))) (= 3 $t27))) (and (and $t34 (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t27))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t36)) (= 5 $t27))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t36)) 2)) (= 3 $t27))) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_Preburn'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| _$t1)) (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))))) 0) (= 7 $t27))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t37) (>= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t37))) 256)) (= 8 $t27)))) (and (= $t27 $t27) (= (ControlFlow 0 440372) 439510))) L2_correct)))
(let ((anon32_Then_correct  (=> (and (and $t26 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (= 5 $t27)) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)))) 0)) (= 1 $t27)))) (and (= $t27 $t27) (= (ControlFlow 0 440428) 439510))) L2_correct)))
(let ((anon30_correct  (=> (and (and (and (and (and (and (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57)) (|$authentication_key#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| (MapConstVec_142356 DefaultVecElem_142356) 0 $t25) 1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57))))) (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57))) (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| (MapConstVec_142356 DefaultVecElem_142356) 0 $t25) 1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57))))))) (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57))) (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| (MapConstVec_142356 DefaultVecElem_142356) 0 $t25) 1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57))))))) (= (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57)) (|$received_events#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| (MapConstVec_142356 DefaultVecElem_142356) 0 $t25) 1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)))))) (= (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57)) (|$sent_events#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| (MapConstVec_142356 DefaultVecElem_142356) 0 $t25) 1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)))))) (= (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57)) (|$sequence_number#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (|Store__T@[Int]$1_DiemAccount_WithdrawCapability_| (MapConstVec_142356 DefaultVecElem_142356) 0 $t25) 1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)))))) (and (and (not (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57)))) 0)) (= $t57 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@8) $t57)))) 0)))) (and (= $t59 (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) $t3)))) (= $t60 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816))))) (and (=> (= (ControlFlow 0 437980) (- 0 628400)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3))) (and (=> (= (ControlFlow 0 437980) (- 0 628412)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)))) 0)))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)))) 0))) (and (=> (= (ControlFlow 0 437980) (- 0 628422)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 437980) (- 0 628432)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t5))) (and (=> (= (ControlFlow 0 437980) (- 0 628444)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) (and (=> (= (ControlFlow 0 437980) (- 0 628456)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 437980) (- 0 628466)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 437980) (- 0 628476)) (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000)) (<= (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))))))))) (=> (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000)) (<= (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))))))) (and (=> (= (ControlFlow 0 437980) (- 0 628516)) (not (< (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) _$t1))) (=> (not (< (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t5))) _$t1)) (and (=> (= (ControlFlow 0 437980) (- 0 628533)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 437980) (- 0 628543)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t5)))) (and (=> (= (ControlFlow 0 437980) (- 0 628553)) (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (=> (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) (and (=> (= (ControlFlow 0 437980) (- 0 628583)) (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))))) (=> (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (and (=> (= (ControlFlow 0 437980) (- 0 628618)) (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) 18446744073709551615))))) (=> (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))) _$t1) 18446744073709551615)))) (and (=> (= (ControlFlow 0 437980) (- 0 628675)) (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) $MAX_U64))))) (=> (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) $MAX_U64)))) (and (=> (= (ControlFlow 0 437980) (- 0 628741)) (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (=> (not (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t5) $t5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t5))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 437980) (- 0 628781)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t6) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t6))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t6) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t6)))) (and (=> (= (ControlFlow 0 437980) (- 0 628800)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 437980) (- 0 628812)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t7)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t7)) 2))) (and (=> (= (ControlFlow 0 437980) (- 0 628830)) (not (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1) 18446744073709551615))) (=> (not (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1) 18446744073709551615)) (and (=> (= (ControlFlow 0 437980) (- 0 628847)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 437980) (- 0 628857)) (not (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t10))))) (=> (not (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t10)))) (and (=> (= (ControlFlow 0 437980) (- 0 628873)) (not (and $t9 (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t10)) 2))))) (=> (not (and $t9 (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t10)) 2)))) (and (=> (= (ControlFlow 0 437980) (- 0 628895)) (not (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and $t9 (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 437980) (- 0 628909)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t11))) (and (=> (= (ControlFlow 0 437980) (- 0 628921)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t11)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t11)) 2))) (and (=> (= (ControlFlow 0 437980) (- 0 628939)) (not (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_Preburn'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| _$t1)) (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))))) 0))) (=> (not (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_Preburn'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| _$t1)) (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))))) 0)) (and (=> (= (ControlFlow 0 437980) (- 0 628961)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12) (>= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12))) 256)))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12) (>= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t12))) 256))) (and (=> (= (ControlFlow 0 437980) (- 0 628986)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t3) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t3))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t3) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t3)))) (and (=> (= (ControlFlow 0 437980) (- 0 629005)) (= $t59 (- $t13 _$t1))) (=> (= $t59 (- $t13 _$t1)) (and (=> (= (ControlFlow 0 437980) (- 0 629017)) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t14)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t14) (and (=> (= (ControlFlow 0 437980) (- 0 629025)) (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15)))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t60) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t15))))) (and (=> (= (ControlFlow 0 437980) (- 0 629043)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new (let ((len (|l#Multiset_159418| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@0) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@0) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@62 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected) handle@@1)) v@@62) (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual) handle@@1)) v@@62))
 :qid |TreasuryComplianceScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |TreasuryComplianceScriptsbpl.3508:13|
 :skolemid |127|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_159418| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@1) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@1) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@63 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@0) handle@@2)) v@@63) (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@0) handle@@2)) v@@63))
 :qid |TreasuryComplianceScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |TreasuryComplianceScriptsbpl.3508:13|
 :skolemid |127|
))))) (and (=> (= (ControlFlow 0 437980) (- 0 629074)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_159418| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@1)))) $EmptyEventStore)) $t22)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_159418| stream@@2)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@2) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t23))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@2) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t23) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_159418| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@1)))) $EmptyEventStore)) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_159418| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@1)))) $EmptyEventStore)) $t22 stream_new@@2))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@1) handle@@3)) (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@1) handle@@3))) (forall ((v@@64 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@1) handle@@3)) v@@64) (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@1) handle@@3)) v@@64))
 :qid |TreasuryComplianceScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |TreasuryComplianceScriptsbpl.3508:13|
 :skolemid |127|
)))))) (=> (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_159418| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@5) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@5) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@3)))) $EmptyEventStore)) $t22)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_159418| stream@@4)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@4) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t23))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@4) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t23) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_159418| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@5) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@5) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@3)))) $EmptyEventStore)) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_159418| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@5) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@5) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@3)))) $EmptyEventStore)) $t22 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@2) handle@@4)) (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@2) handle@@4))) (forall ((v@@65 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@2) handle@@4)) v@@65) (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@2) handle@@4)) v@@65))
 :qid |TreasuryComplianceScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |TreasuryComplianceScriptsbpl.3508:13|
 :skolemid |127|
))))) (=> (= (ControlFlow 0 437980) (- 0 629111)) (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_159418| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@5)))) $EmptyEventStore)) $t22)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_159418| stream@@6)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@6) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t23))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@6) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t23) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_159418| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@5)))) $EmptyEventStore)) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_159418| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| $t20) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) $t19 stream_new@@5)))) $EmptyEventStore)) $t22 stream_new@@6))))))
 (and (<= (|counter#$EventStore| actual@@3) (|counter#$EventStore| expected@@3)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@3) handle@@5)) (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@3) handle@@5))) (forall ((v@@66 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| actual@@3) handle@@5)) v@@66) (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| expected@@3) handle@@5)) v@@66))
 :qid |TreasuryComplianceScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |TreasuryComplianceScriptsbpl.3508:13|
 :skolemid |127|
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon42_Else_correct  (=> (and (and (not |$temp_0'bool'@7|) (= $1_DiemAccount_DiemAccount_$memory@7 ($Memory_271359 (|Store__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57 false) (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5)))) (and (= $1_DiemAccount_DiemAccount_$memory@8 $1_DiemAccount_DiemAccount_$memory@7) (= (ControlFlow 0 437104) 437980))) anon30_correct)))
(let ((anon42_Then_correct  (=> (and (and |$temp_0'bool'@7| (= $1_DiemAccount_DiemAccount_$memory@6 ($Memory_271359 (|Store__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57 |$temp_0'$1_DiemAccount_DiemAccount'@2|)))) (and (= $1_DiemAccount_DiemAccount_$memory@8 $1_DiemAccount_DiemAccount_$memory@6) (= (ControlFlow 0 437992) 437980))) anon30_correct)))
(let ((anon41_Else_correct  (=> (not $t58) (and (=> (= (ControlFlow 0 437092) 437992) anon42_Then_correct) (=> (= (ControlFlow 0 437092) 437104) anon42_Else_correct)))))
(let ((anon25_correct  (=> (and (= $t50 (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) $t29)))) (= $t51 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816))) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t29) (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t29))) (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t29))))) (and (= (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t29)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t29))) (= (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t29)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t29))))) (and (and (= (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t28)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t28))) (= (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t28)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t28)))) (and (= $t50 (- $t38 _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t39)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t51) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) _$t1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t40))))) (= $t52 $t45)) (and (and (and (= $t53 $t44) (= $t54  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t42)))) (and (= $es@0 (ite $t54 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $es) $t53)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_159418| stream@@8)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@8) (|$ToEventRep'$1_Diem_PreburnEvent'| $t52))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@8) (|$ToEventRep'$1_Diem_PreburnEvent'| $t52) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $es) $t53 stream_new@@7)))) $es)) (= $t55 $t48))) (and (and (= $t56 $t47) (= $es@1 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $es@0) $t56)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_159418| stream@@9)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t55))))
(Multiset_159418 (|Store__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| $t55) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $es@0) $t56 stream_new@@8)))))) (and (= $t57 (|$account_address#$1_DiemAccount_WithdrawCapability| $t25)) (= $t58  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)) (not (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@5) $t57)))) 0)))))))) (and (=> (= (ControlFlow 0 437084) 438038) anon41_Then_correct) (=> (= (ControlFlow 0 437084) 437092) anon41_Else_correct)))))))
(let ((anon40_Else_correct  (=> (and (and (not |$temp_0'bool'@6|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| ($Memory_211043 (|Store__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 false) (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 436834) 437084))) anon25_correct)))
(let ((anon40_Then_correct  (=> (and (and |$temp_0'bool'@6| (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| ($Memory_211043 (|Store__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 |$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@0|)))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0|) (= (ControlFlow 0 439522) 437084))) anon25_correct)))
(let ((anon39_Else_correct  (=> (not |$temp_0'bool'@5|) (=> (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1| ($Memory_218414 (|Store__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t39 false) (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|))) (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1|)) (and (=> (= (ControlFlow 0 436820) 439522) anon40_Then_correct) (=> (= (ControlFlow 0 436820) 436834) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> |$temp_0'bool'@5| (=> (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0| ($Memory_218414 (|Store__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t39 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t39 |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0|))) (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0|)) (and (=> (= (ControlFlow 0 439534) 439522) anon40_Then_correct) (=> (= (ControlFlow 0 439534) 436834) anon40_Else_correct))))))
(let ((anon38_Else_correct  (=> (and (not |$temp_0'bool'@4|) (= |$1_Diem_Preburn'$1_XDX_XDX'_$memory@1| ($Memory_217966 (|Store__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t39 false) (|contents#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|)))) (and (=> (= (ControlFlow 0 436806) 439534) anon39_Then_correct) (=> (= (ControlFlow 0 436806) 436820) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and |$temp_0'bool'@4| (= |$1_Diem_Preburn'$1_XDX_XDX'_$memory@0| ($Memory_217966 (|Store__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t39 true) (|Store__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t39 |$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@0|)))) (and (=> (= (ControlFlow 0 439546) 439534) anon39_Then_correct) (=> (= (ControlFlow 0 439546) 436820) anon39_Else_correct)))))
(let ((anon37_Else_correct  (=> (not |$temp_0'bool'@3|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| ($Memory_271193 (|Store__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t29 false) (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|)) (and (=> (= (ControlFlow 0 436792) 439546) anon38_Then_correct) (=> (= (ControlFlow 0 436792) 436806) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> |$temp_0'bool'@3| (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_271193 (|Store__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t29 true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t29 |$temp_0'$1_DiemAccount_Balance'$1_XDX_XDX''@0|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (=> (= (ControlFlow 0 439558) 439546) anon38_Then_correct) (=> (= (ControlFlow 0 439558) 436806) anon38_Else_correct))))))
(let ((anon36_Else_correct  (=> (not |$temp_0'bool'@2|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@4 ($Memory_271359 (|Store__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t29 false) (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2))) (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@4)) (and (=> (= (ControlFlow 0 436778) 439558) anon37_Then_correct) (=> (= (ControlFlow 0 436778) 436792) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> |$temp_0'bool'@2| (=> (and (= $1_DiemAccount_DiemAccount_$memory@3 ($Memory_271359 (|Store__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t29 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t29 |$temp_0'$1_DiemAccount_DiemAccount'@1|))) (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@3)) (and (=> (= (ControlFlow 0 439570) 439558) anon37_Then_correct) (=> (= (ControlFlow 0 439570) 436792) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (not |$temp_0'bool'@1|) (= |$1_AccountLimits_Window'$1_XDX_XDX'_$memory@1| ($Memory_251222 (|Store__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t29) $t29 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t29))) false) (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|)))) (and (=> (= (ControlFlow 0 436764) 439570) anon36_Then_correct) (=> (= (ControlFlow 0 436764) 436778) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and |$temp_0'bool'@1| (= |$1_AccountLimits_Window'$1_XDX_XDX'_$memory@0| ($Memory_251222 (|Store__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t29) $t29 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t29))) true) (|Store__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t29) $t29 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t29))) |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@0|)))) (and (=> (= (ControlFlow 0 439588) 439570) anon36_Then_correct) (=> (= (ControlFlow 0 439588) 436778) anon36_Else_correct)))))
(let ((anon34_Else_correct  (=> (not $t49) (and (=> (= (ControlFlow 0 436746) 439588) anon35_Then_correct) (=> (= (ControlFlow 0 436746) 436764) anon35_Else_correct)))))
(let ((anon5_correct  (=> (|$IsValid'$1_DiemAccount_WithdrawCapability'| $t25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t24) (= $t25 (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)))) 0))) (=> (and (and (and (and (and (and (and (and (and (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t24)) (|$authentication_key#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (MapConstVec_142356 DefaultVecElem_142356) 0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24))))) (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t24))) (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (MapConstVec_142356 DefaultVecElem_142356) 0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24))))))) (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t24))) (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (MapConstVec_142356 DefaultVecElem_142356) 0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24))))))) (= (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t24)) (|$received_events#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (MapConstVec_142356 DefaultVecElem_142356) 0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)))))) (= (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t24)) (|$sent_events#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (MapConstVec_142356 DefaultVecElem_142356) 0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)))))) (= (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t24)) (|$sequence_number#$1_DiemAccount_DiemAccount| ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Vec_159582 (MapConstVec_142356 DefaultVecElem_142356) 0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)))))) (= (|$account_address#$1_DiemAccount_WithdrawCapability| $t25) $t24)) (and (= $t25 $t25) (= $t28 (|$addr#$signer| _$t0)))) (and (and (= $t29 (|$account_address#$1_DiemAccount_WithdrawCapability| $t25)) (= $t30 (|$account_address#$1_DiemAccount_WithdrawCapability| $t25))) (and (= $t31 (|$addr#$signer| _$t0)) (= $t32 (|$addr#$signer| _$t0))))) (and (and (and (and (= $t33 (|$addr#$signer| _$t0)) (= $t34  (and (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t33) (not (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t33))))) (and (= $t35 (|$addr#$signer| _$t0)) (= $t36 (|$addr#$signer| _$t0)))) (and (and (= $t37 (|$addr#$signer| _$t0)) (= $t38 (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t29))))) (and (= $t39 (|$addr#$signer| _$t0)) (= $t40 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (and (and (= $t41 (|$addr#$signer| _$t0)) (= $t42 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (= $t43 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= $t44 (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t42)))) (and (and (= $t45 ($1_Diem_PreburnEvent _$t1 $t43 $t41)) (= $t46 (|$account_address#$1_DiemAccount_WithdrawCapability| $t25))) (and (= $t47 (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t46))) (= $t48 ($1_DiemAccount_SentPaymentEvent _$t1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) $t41 (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0)))))))) (and (=> (= (ControlFlow 0 436738) (- 0 626382)) (|Select__T@[Int]Bool_| |$1_DiemAccount_Balance'$1_XDX_XDX'_$modifies| $t29)) (=> (|Select__T@[Int]Bool_| |$1_DiemAccount_Balance'$1_XDX_XDX'_$modifies| $t29) (and (=> (= (ControlFlow 0 436738) (- 0 626388)) (|Select__T@[Int]Bool_| |$1_Diem_Preburn'$1_XDX_XDX'_$modifies| $t39)) (=> (|Select__T@[Int]Bool_| |$1_Diem_Preburn'$1_XDX_XDX'_$modifies| $t39) (and (=> (= (ControlFlow 0 436738) (- 0 626394)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t39)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t39) (and (=> (= (ControlFlow 0 436738) (- 0 626400)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816) (=> (= $t49  (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory@2) $t30))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t30))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000)) (<= (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) _$t1) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))))))))) (< (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t30))) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t30) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $t30)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000))) (> (+ (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))))) (|$1_AccountLimits_Window'$1_XDX_XDX'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))) _$t1) 18446744073709551615)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) $MAX_U64)))) (and (ite true  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (|$addr#$signer| _$t0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t0)))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) $t30) $t30 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $t30))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t31) (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t31)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t32))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t32)) 2))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1) 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and $t34 (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t35)))) (and $t34 (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t35)) 2)))) (and $t34 (not (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) $t36))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $t36)) 2))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$1_Diem_Preburn'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| _$t1)) (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))))) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t37) (>= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t37))) 256)))) (and (=> (= (ControlFlow 0 436738) 440372) anon34_Then_correct) (=> (= (ControlFlow 0 436738) 436746) anon34_Else_correct))))))))))))))))
(let ((anon33_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_271359 (|Store__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24 false) (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory)))) (and (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1) (= (ControlFlow 0 435840) 436738))) anon5_correct)))
(let ((anon33_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_271359 (|Store__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24 |$temp_0'$1_DiemAccount_DiemAccount'@0|)))) (and (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0) (= (ControlFlow 0 440384) 436738))) anon5_correct)))
(let ((anon32_Else_correct  (=> (not $t26) (and (=> (= (ControlFlow 0 435828) 440384) anon33_Then_correct) (=> (= (ControlFlow 0 435828) 435840) anon33_Else_correct)))))
(let ((anon0$1_correct  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr)) 0)) (= addr 173345816)))
 :qid |TreasuryComplianceScriptsbpl.22852:20|
 :skolemid |393|
))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@0)) 1)) (= addr@@0 186537453)))
 :qid |TreasuryComplianceScriptsbpl.22860:20|
 :skolemid |394|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@1)) 2))))))
 :qid |TreasuryComplianceScriptsbpl.22868:20|
 :skolemid |395|
)))) (=> (and (and (and (and (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@2)) 2))))))
 :qid |TreasuryComplianceScriptsbpl.22872:20|
 :skolemid |396|
)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@3)) 2))))))
 :qid |TreasuryComplianceScriptsbpl.22876:20|
 :skolemid |397|
))) (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@4)) 2))))))
 :qid |TreasuryComplianceScriptsbpl.22880:20|
 :skolemid |398|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@5)) 2)))))
 :qid |TreasuryComplianceScriptsbpl.22884:20|
 :skolemid |399|
)))) (and (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@6)) 2)))))
 :qid |TreasuryComplianceScriptsbpl.22888:20|
 :skolemid |400|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@7)) 2)))))
 :qid |TreasuryComplianceScriptsbpl.22892:20|
 :skolemid |401|
))) (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_207139| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@8)) 4))))
 :qid |TreasuryComplianceScriptsbpl.22896:20|
 :skolemid |402|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_207859| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@9)) 3))))
 :qid |TreasuryComplianceScriptsbpl.22900:20|
 :skolemid |403|
))))) (and (and (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_207859| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@10)) 3))))
 :qid |TreasuryComplianceScriptsbpl.22904:20|
 :skolemid |404|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_207859| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (not (= (|l#Vec_159504| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_207859| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |TreasuryComplianceScriptsbpl.22908:20|
 :skolemid |405|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_208471| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_208471| $1_SlidingNonce_SlidingNonce_$memory) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_209024| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_208943| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_210451| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0 ($Range 0 (|l#Vec_159693| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_208943| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_208943| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_208943| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) i1)))) 3))))
 :qid |TreasuryComplianceScriptsbpl.22928:151|
 :skolemid |406|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_209123| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))))) (=> (and (and (and (and (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_211663| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_211663| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |TreasuryComplianceScriptsbpl.22937:104|
 :skolemid |407|
))) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_211663| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |TreasuryComplianceScriptsbpl.22941:20|
 :skolemid |408|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1) (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr1)) 2))))
 :qid |TreasuryComplianceScriptsbpl.22945:20|
 :skolemid |409|
)) (forall ((dd_addr Int) ) (!  (=> (|$IsValid'address'| dd_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr)))))
 :qid |TreasuryComplianceScriptsbpl.22949:20|
 :skolemid |410|
)))) (and (and (forall ((dd_addr@@0 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@0))))
 :qid |TreasuryComplianceScriptsbpl.22953:20|
 :skolemid |411|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |TreasuryComplianceScriptsbpl.22957:20|
 :skolemid |412|
))) (and (forall ((window_addr Int) ) (!  (=> (|$IsValid'address'| window_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) window_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) window_addr)))))
 :qid |TreasuryComplianceScriptsbpl.22961:20|
 :skolemid |413|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) addr@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@15) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@15)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@15)) 6)))))
 :qid |TreasuryComplianceScriptsbpl.22965:20|
 :skolemid |414|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_210924| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251354| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_254663| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) addr@@16) (= addr@@16 173345816)))
 :qid |TreasuryComplianceScriptsbpl.22989:20|
 :skolemid |415|
))) (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |TreasuryComplianceScriptsbpl.22993:20|
 :skolemid |416|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_259142| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_265101| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_264828| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr1@@0)) 2)))))
 :qid |TreasuryComplianceScriptsbpl.23005:20|
 :skolemid |417|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_209187| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_268159| $1_ChainId_ChainId_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_268570| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_268570| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))))) (and (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@17) (or (= (|l#Vec_159543| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0) (and (not (= (|l#Vec_159543| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0)) (= addr@@17 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0)))))))
 :qid |TreasuryComplianceScriptsbpl.23033:20|
 :skolemid |418|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@18) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@18)))) 0)) (and (not (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@18)))) 0)) (= addr@@18 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@18)))) 0)))))))
 :qid |TreasuryComplianceScriptsbpl.23037:20|
 :skolemid |419|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_273537| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)))) (and (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@19)))
 :qid |TreasuryComplianceScriptsbpl.23049:20|
 :skolemid |420|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@20)  (and (= addr@@20 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@20))))
 :qid |TreasuryComplianceScriptsbpl.23053:20|
 :skolemid |421|
))) (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_273537| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@21)  (and (= addr@@21 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@21))))
 :qid |TreasuryComplianceScriptsbpl.23057:20|
 :skolemid |422|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_254928| $1_VASPDomain_VASPDomainManager_$memory) addr@@22)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@22)) 1))))
 :qid |TreasuryComplianceScriptsbpl.23061:20|
 :skolemid |423|
))))))) (=> (and (and (and (and (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_255327| $1_VASPDomain_VASPDomains_$memory) addr@@23)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@23)) 5))))
 :qid |TreasuryComplianceScriptsbpl.23065:20|
 :skolemid |424|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_271110| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@24)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@24)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@24)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@24)) 2)))))
 :qid |TreasuryComplianceScriptsbpl.23069:20|
 :skolemid |425|
))) (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_267270| $1_DesignatedDealer_Dealer_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@25)) 2))))
 :qid |TreasuryComplianceScriptsbpl.23073:20|
 :skolemid |426|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_264828| $1_DualAttestation_Credential_$memory) addr@@26)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@26)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@26)) 5)))))
 :qid |TreasuryComplianceScriptsbpl.23077:20|
 :skolemid |427|
)))) (and (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (= (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) addr@@27)))
 :qid |TreasuryComplianceScriptsbpl.23081:20|
 :skolemid |428|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) addr@@28)))
 :qid |TreasuryComplianceScriptsbpl.23085:20|
 :skolemid |429|
))) (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@29)))
 :qid |TreasuryComplianceScriptsbpl.23089:20|
 :skolemid |430|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_208471| $1_SlidingNonce_SlidingNonce_$memory) addr@@30)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@30)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@30)) 1)))))
 :qid |TreasuryComplianceScriptsbpl.23093:20|
 :skolemid |431|
))))) (and (and (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (= (|Select__T@[Int]Bool_| (|domain#$Memory_207859| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@31)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@31)) 3))))
 :qid |TreasuryComplianceScriptsbpl.23097:20|
 :skolemid |432|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (= (|Select__T@[Int]Bool_| (|domain#$Memory_207139| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@32)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@32)) 4))))
 :qid |TreasuryComplianceScriptsbpl.23101:20|
 :skolemid |433|
))) (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (= (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) addr@@33)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@33)) 5))))
 :qid |TreasuryComplianceScriptsbpl.23105:20|
 :skolemid |434|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (= (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) addr@@34)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_206812| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) addr@@34)) 6))))
 :qid |TreasuryComplianceScriptsbpl.23109:20|
 :skolemid |435|
)))) (and (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_286218| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@35) (or (|Select__T@[Int]Bool_| (|domain#$Memory_258672| $1_VASP_ParentVASP_$memory) addr@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_258608| $1_VASP_ChildVASP_$memory) addr@@35))))
 :qid |TreasuryComplianceScriptsbpl.23113:20|
 :skolemid |436|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_286370| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_209251| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_209315| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |TreasuryComplianceScriptsbpl.23134:20|
 :skolemid |437|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |TreasuryComplianceScriptsbpl.23138:20|
 :skolemid |438|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_206812| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@1) 10000000000))))
 :qid |TreasuryComplianceScriptsbpl.23142:20|
 :skolemid |439|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@1))
))))) (and (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@2)))
(|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| $rsc@@2))
 :qid |TreasuryComplianceScriptsbpl.23146:20|
 :skolemid |440|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@3)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| $rsc@@3) (and (<= (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@3)) 256) (let (($range_1 ($Range 0 (|l#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@3)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@126 $i_2))
(> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@3)) i@@126)))) 0)))
 :qid |TreasuryComplianceScriptsbpl.23151:223|
 :skolemid |441|
))))))
 :qid |TreasuryComplianceScriptsbpl.23150:20|
 :skolemid |442|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@4)))
 (and (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| $rsc@@4) (and (and (and (> (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@4) 0) (> (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@4) 0)) (> (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@4) 0)) (> (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@4) 0))))
 :qid |TreasuryComplianceScriptsbpl.23155:20|
 :skolemid |443|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_251810| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $a_0@@5)))
(|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| $rsc@@5))
 :qid |TreasuryComplianceScriptsbpl.23159:20|
 :skolemid |444|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_251222| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) $a_0@@5))
)))) (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@6))
 :qid |TreasuryComplianceScriptsbpl.23163:20|
 :skolemid |445|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_258608| $1_VASP_ChildVASP_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_258672| $1_VASP_ParentVASP_$memory) $a_0@@7)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@7))
 :qid |TreasuryComplianceScriptsbpl.23167:20|
 :skolemid |446|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_258672| $1_VASP_ParentVASP_$memory) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@8))
 :qid |TreasuryComplianceScriptsbpl.23171:20|
 :skolemid |447|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $a_0@@9)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@9) (and (<= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1) (<= (|l#Vec_159543| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1))))
 :qid |TreasuryComplianceScriptsbpl.23175:20|
 :skolemid |448|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $a_0@@9))
))))))) (and (and (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@10)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@10))
 :qid |TreasuryComplianceScriptsbpl.23179:20|
 :skolemid |449|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_272232| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@11))
 :qid |TreasuryComplianceScriptsbpl.23183:20|
 :skolemid |450|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11))
))) (and (= $t3 (|$addr#$signer| _$t0)) (= $t4 (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t3)))) 0)))) (and (and (= $t5 (|$account_address#$1_DiemAccount_WithdrawCapability| $t4)) (= $t6 (|$addr#$signer| _$t0))) (and (= $t7 (|$addr#$signer| _$t0)) (= $t8 (|$addr#$signer| _$t0))))) (and (and (and (= $t9  (and (|Select__T@[Int]Bool_| (|domain#$Memory_217966| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t8) (not (|Select__T@[Int]Bool_| (|domain#$Memory_218414| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t8)))) (= $t10 (|$addr#$signer| _$t0))) (and (= $t11 (|$addr#$signer| _$t0)) (= $t12 (|$addr#$signer| _$t0)))) (and (and (= $t13 (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_271193| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $t3)))) (= $t14 (|$addr#$signer| _$t0))) (and (= $t15 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t16 (|$addr#$signer| _$t0)))))) (and (and (and (and (= $t17 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t18 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= $t19 (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t17)) (= $t20 ($1_Diem_PreburnEvent _$t1 $t18 $t16)))) (and (and (= $t21 (|$account_address#$1_DiemAccount_WithdrawCapability| $t4)) (= $t22 (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t21)))) (and (= $t23 ($1_DiemAccount_SentPaymentEvent _$t1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211043| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) $t16 (Vec_25263 (MapConstVec_16957 DefaultVecElem_16957) 0))) (let ((addr@@36 (|$addr#$signer| _$t0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_206648| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) addr@@36)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) addr@@36) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_268192| $1_AccountFreezing_FreezingBit_$memory) addr@@36))))))))) (and (and (and (|Select__T@[Int]Bool_| |$1_DiemAccount_Balance'$1_XDX_XDX'_$modifies| $t3) (|Select__T@[Int]Bool_| |$1_Diem_Preburn'$1_XDX_XDX'_$modifies| $t14)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t14) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t24 (|$addr#$signer| _$t0)) (= $t26  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24) (= (|l#Vec_159582| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_271359| $1_DiemAccount_DiemAccount_$memory) $t24)))) 0)))))))))) (and (=> (= (ControlFlow 0 435820) 440428) anon32_Then_correct) (=> (= (ControlFlow 0 435820) 435828) anon32_Else_correct)))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_159418| stream@@10) 0) (forall ((v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream@@10) v@@67) 0)
 :qid |TreasuryComplianceScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |TreasuryComplianceScriptsbpl.3492:13|
 :skolemid |126|
))) (= (ControlFlow 0 433507) 435820)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 623556) 433507) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_199292 0)) ((($Memory_199292 (|domain#$Memory_199292| |T@[Int]Bool|) (|contents#$Memory_199292| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_161457 0)) (((Vec_161457 (|v#Vec_161457| |T@[Int]#0|) (|l#Vec_161457| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_286370 0)) ((($Memory_286370 (|domain#$Memory_286370| |T@[Int]Bool|) (|contents#$Memory_286370| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_273537 0)) ((($Memory_273537 (|domain#$Memory_273537| |T@[Int]Bool|) (|contents#$Memory_273537| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_268192 0)) ((($Memory_268192 (|domain#$Memory_268192| |T@[Int]Bool|) (|contents#$Memory_268192| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_268570 0)) ((($Memory_268570 (|domain#$Memory_268570| |T@[Int]Bool|) (|contents#$Memory_268570| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_268159 0)) ((($Memory_268159 (|domain#$Memory_268159| |T@[Int]Bool|) (|contents#$Memory_268159| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_267270 0)) ((($Memory_267270 (|domain#$Memory_267270| |T@[Int]Bool|) (|contents#$Memory_267270| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_265101 0)) ((($Memory_265101 (|domain#$Memory_265101| |T@[Int]Bool|) (|contents#$Memory_265101| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_258672 0)) ((($Memory_258672 (|domain#$Memory_258672| |T@[Int]Bool|) (|contents#$Memory_258672| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_258608 0)) ((($Memory_258608 (|domain#$Memory_258608| |T@[Int]Bool|) (|contents#$Memory_258608| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_254928 0)) ((($Memory_254928 (|domain#$Memory_254928| |T@[Int]Bool|) (|contents#$Memory_254928| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_185673 0)) (((Vec_185673 (|v#Vec_185673| |T@[Int]$1_XDX_XDX|) (|l#Vec_185673| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_188353 0)) (((Vec_188353 (|v#Vec_188353| |T@[Int]$1_XUS_XUS|) (|l#Vec_188353| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_251286 0)) ((($Memory_251286 (|domain#$Memory_251286| |T@[Int]Bool|) (|contents#$Memory_251286| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251222 0)) ((($Memory_251222 (|domain#$Memory_251222| |T@[Int]Bool|) (|contents#$Memory_251222| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251158 0)) ((($Memory_251158 (|domain#$Memory_251158| |T@[Int]Bool|) (|contents#$Memory_251158| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_252266 0)) ((($Memory_252266 (|domain#$Memory_252266| |T@[Int]Bool|) (|contents#$Memory_252266| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251810 0)) ((($Memory_251810 (|domain#$Memory_251810| |T@[Int]Bool|) (|contents#$Memory_251810| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251354 0)) ((($Memory_251354 (|domain#$Memory_251354| |T@[Int]Bool|) (|contents#$Memory_251354| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_272232 0)) ((($Memory_272232 (|domain#$Memory_272232| |T@[Int]Bool|) (|contents#$Memory_272232| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_211727 0)) ((($Memory_211727 (|domain#$Memory_211727| |T@[Int]Bool|) (|contents#$Memory_211727| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_211663 0)) ((($Memory_211663 (|domain#$Memory_211663| |T@[Int]Bool|) (|contents#$Memory_211663| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_211599 0)) ((($Memory_211599 (|domain#$Memory_211599| |T@[Int]Bool|) (|contents#$Memory_211599| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_212220 0)) ((($Memory_212220 (|domain#$Memory_212220| |T@[Int]Bool|) (|contents#$Memory_212220| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_212133 0)) ((($Memory_212133 (|domain#$Memory_212133| |T@[Int]Bool|) (|contents#$Memory_212133| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_212046 0)) ((($Memory_212046 (|domain#$Memory_212046| |T@[Int]Bool|) (|contents#$Memory_212046| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_271276 0)) ((($Memory_271276 (|domain#$Memory_271276| |T@[Int]Bool|) (|contents#$Memory_271276| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_218047 0)) ((($Memory_218047 (|domain#$Memory_218047| |T@[Int]Bool|) (|contents#$Memory_218047| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_259328 0)) ((($Memory_259328 (|domain#$Memory_259328| |T@[Int]Bool|) (|contents#$Memory_259328| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_271193 0)) ((($Memory_271193 (|domain#$Memory_271193| |T@[Int]Bool|) (|contents#$Memory_271193| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_217966 0)) ((($Memory_217966 (|domain#$Memory_217966| |T@[Int]Bool|) (|contents#$Memory_217966| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_259259 0)) ((($Memory_259259 (|domain#$Memory_259259| |T@[Int]Bool|) (|contents#$Memory_259259| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_254663 0)) ((($Memory_254663 (|domain#$Memory_254663| |T@[Int]Bool|) (|contents#$Memory_254663| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_271110 0)) ((($Memory_271110 (|domain#$Memory_271110| |T@[Int]Bool|) (|contents#$Memory_271110| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_217885 0)) ((($Memory_217885 (|domain#$Memory_217885| |T@[Int]Bool|) (|contents#$Memory_217885| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_259142 0)) ((($Memory_259142 (|domain#$Memory_259142| |T@[Int]Bool|) (|contents#$Memory_259142| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_210196 0)) ((($Memory_210196 (|domain#$Memory_210196| |T@[Int]Bool|) (|contents#$Memory_210196| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_210451 0)) ((($Memory_210451 (|domain#$Memory_210451| |T@[Int]Bool|) (|contents#$Memory_210451| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_209024 0)) ((($Memory_209024 (|domain#$Memory_209024| |T@[Int]Bool|) (|contents#$Memory_209024| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_209315 0)) ((($Memory_209315 (|domain#$Memory_209315| |T@[Int]Bool|) (|contents#$Memory_209315| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_208471 0)) ((($Memory_208471 (|domain#$Memory_208471| |T@[Int]Bool|) (|contents#$Memory_208471| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_159582 0)) (((Vec_159582 (|v#Vec_159582| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_159582| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_159582) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_159543 0)) (((Vec_159543 (|v#Vec_159543| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_159543| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_159543) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_286218 0)) ((($Memory_286218 (|domain#$Memory_286218| |T@[Int]Bool|) (|contents#$Memory_286218| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_159543) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_25263 0)) (((Vec_25263 (|v#Vec_25263| |T@[Int]Int|) (|l#Vec_25263| Int) ) ) ))
(declare-sort |T@[Int]Vec_25263| 0)
(declare-datatypes ((T@Vec_159750 0)) (((Vec_159750 (|v#Vec_159750| |T@[Int]Vec_25263|) (|l#Vec_159750| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_159750) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_209187 0)) ((($Memory_209187 (|domain#$Memory_209187| |T@[Int]Bool|) (|contents#$Memory_209187| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_159750) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_209123 0)) ((($Memory_209123 (|domain#$Memory_209123| |T@[Int]Bool|) (|contents#$Memory_209123| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_25263) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_25263) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_209251 0)) ((($Memory_209251 (|domain#$Memory_209251| |T@[Int]Bool|) (|contents#$Memory_209251| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_25263) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_271359 0)) ((($Memory_271359 (|domain#$Memory_271359| |T@[Int]Bool|) (|contents#$Memory_271359| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_268072 0)) ((($Memory_268072 (|domain#$Memory_268072| |T@[Int]Bool|) (|contents#$Memory_268072| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_267849 0)) ((($Memory_267849 (|domain#$Memory_267849| |T@[Int]Bool|) (|contents#$Memory_267849| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_267626 0)) ((($Memory_267626 (|domain#$Memory_267626| |T@[Int]Bool|) (|contents#$Memory_267626| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_25263) (|$base_url#$1_DualAttestation_Credential| T@Vec_25263) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_25263) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_264828 0)) ((($Memory_264828 (|domain#$Memory_264828| |T@[Int]Bool|) (|contents#$Memory_264828| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_160193 0)) (((Vec_160193 (|v#Vec_160193| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_160193| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_160193) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_255327 0)) ((($Memory_255327 (|domain#$Memory_255327| |T@[Int]Bool|) (|contents#$Memory_255327| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_160038 0)) (((Vec_160038 (|v#Vec_160038| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_160038| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_160038) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_218531 0)) ((($Memory_218531 (|domain#$Memory_218531| |T@[Int]Bool|) (|contents#$Memory_218531| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_159999 0)) (((Vec_159999 (|v#Vec_159999| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_159999| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_159999) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_218414 0)) ((($Memory_218414 (|domain#$Memory_218414| |T@[Int]Bool|) (|contents#$Memory_218414| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_159960 0)) (((Vec_159960 (|v#Vec_159960| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_159960| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_159960) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_218297 0)) ((($Memory_218297 (|domain#$Memory_218297| |T@[Int]Bool|) (|contents#$Memory_218297| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_25263) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_211162 0)) ((($Memory_211162 (|domain#$Memory_211162| |T@[Int]Bool|) (|contents#$Memory_211162| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_25263) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_211043 0)) ((($Memory_211043 (|domain#$Memory_211043| |T@[Int]Bool|) (|contents#$Memory_211043| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_25263) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_210924 0)) ((($Memory_210924 (|domain#$Memory_210924| |T@[Int]Bool|) (|contents#$Memory_210924| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_25263) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_25263) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_159504 0)) (((Vec_159504 (|v#Vec_159504| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_159504| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_159504) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_159693 0)) (((Vec_159693 (|v#Vec_159693| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_159693| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_159693) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_208943 0)) ((($Memory_208943 (|domain#$Memory_208943| |T@[Int]Bool|) (|contents#$Memory_208943| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_207859 0)) ((($Memory_207859 (|domain#$Memory_207859| |T@[Int]Bool|) (|contents#$Memory_207859| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_25263) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_207139 0)) ((($Memory_207139 (|domain#$Memory_207139| |T@[Int]Bool|) (|contents#$Memory_207139| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_206812 0)) ((($Memory_206812 (|domain#$Memory_206812| |T@[Int]Bool|) (|contents#$Memory_206812| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_206648 0)) ((($Memory_206648 (|domain#$Memory_206648| |T@[Int]Bool|) (|contents#$Memory_206648| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_25263) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_25263) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_25263) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_25263) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_25263) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_25263) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_25263) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_25263) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_25263) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_25263) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_159418 0)) (((Multiset_159418 (|v#Multiset_159418| |T@[$EventRep]Int|) (|l#Multiset_159418| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_159418| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_159418|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_268783 0)) ((($Mutation_268783 (|l#$Mutation_268783| T@$Location) (|p#$Mutation_268783| T@Vec_25263) (|v#$Mutation_268783| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_268740 0)) ((($Mutation_268740 (|l#$Mutation_268740| T@$Location) (|p#$Mutation_268740| T@Vec_25263) (|v#$Mutation_268740| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_266325 0)) ((($Mutation_266325 (|l#$Mutation_266325| T@$Location) (|p#$Mutation_266325| T@Vec_25263) (|v#$Mutation_266325| T@$1_DualAttestation_Limit) ) ) ))
(declare-datatypes ((T@$Mutation_263036 0)) ((($Mutation_263036 (|l#$Mutation_263036| T@$Location) (|p#$Mutation_263036| T@Vec_25263) (|v#$Mutation_263036| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_261361 0)) ((($Mutation_261361 (|l#$Mutation_261361| T@$Location) (|p#$Mutation_261361| T@Vec_25263) (|v#$Mutation_261361| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_259706 0)) ((($Mutation_259706 (|l#$Mutation_259706| T@$Location) (|p#$Mutation_259706| T@Vec_25263) (|v#$Mutation_259706| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_255428 0)) ((($Mutation_255428 (|l#$Mutation_255428| T@$Location) (|p#$Mutation_255428| T@Vec_25263) (|v#$Mutation_255428| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_255363 0)) ((($Mutation_255363 (|l#$Mutation_255363| T@$Location) (|p#$Mutation_255363| T@Vec_25263) (|v#$Mutation_255363| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_248284 0)) ((($Mutation_248284 (|l#$Mutation_248284| T@$Location) (|p#$Mutation_248284| T@Vec_25263) (|v#$Mutation_248284| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_52555 0)) ((($Mutation_52555 (|l#$Mutation_52555| T@$Location) (|p#$Mutation_52555| T@Vec_25263) (|v#$Mutation_52555| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_231043 0)) ((($Mutation_231043 (|l#$Mutation_231043| T@$Location) (|p#$Mutation_231043| T@Vec_25263) (|v#$Mutation_231043| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_230993 0)) ((($Mutation_230993 (|l#$Mutation_230993| T@$Location) (|p#$Mutation_230993| T@Vec_25263) (|v#$Mutation_230993| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_228893 0)) ((($Mutation_228893 (|l#$Mutation_228893| T@$Location) (|p#$Mutation_228893| T@Vec_25263) (|v#$Mutation_228893| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_228843 0)) ((($Mutation_228843 (|l#$Mutation_228843| T@$Location) (|p#$Mutation_228843| T@Vec_25263) (|v#$Mutation_228843| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_226697 0)) ((($Mutation_226697 (|l#$Mutation_226697| T@$Location) (|p#$Mutation_226697| T@Vec_25263) (|v#$Mutation_226697| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_226647 0)) ((($Mutation_226647 (|l#$Mutation_226647| T@$Location) (|p#$Mutation_226647| T@Vec_25263) (|v#$Mutation_226647| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_222610 0)) ((($Mutation_222610 (|l#$Mutation_222610| T@$Location) (|p#$Mutation_222610| T@Vec_25263) (|v#$Mutation_222610| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_221820 0)) ((($Mutation_221820 (|l#$Mutation_221820| T@$Location) (|p#$Mutation_221820| T@Vec_25263) (|v#$Mutation_221820| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_221030 0)) ((($Mutation_221030 (|l#$Mutation_221030| T@$Location) (|p#$Mutation_221030| T@Vec_25263) (|v#$Mutation_221030| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_199923 0)) ((($Mutation_199923 (|l#$Mutation_199923| T@$Location) (|p#$Mutation_199923| T@Vec_25263) (|v#$Mutation_199923| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_25263) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_192780 0)) ((($Mutation_192780 (|l#$Mutation_192780| T@$Location) (|p#$Mutation_192780| T@Vec_25263) (|v#$Mutation_192780| T@Vec_25263) ) ) ))
(declare-datatypes ((T@$Mutation_191692 0)) ((($Mutation_191692 (|l#$Mutation_191692| T@$Location) (|p#$Mutation_191692| T@Vec_25263) (|v#$Mutation_191692| T@Vec_159750) ) ) ))
(declare-datatypes ((T@$Mutation_189983 0)) ((($Mutation_189983 (|l#$Mutation_189983| T@$Location) (|p#$Mutation_189983| T@Vec_25263) (|v#$Mutation_189983| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_188996 0)) ((($Mutation_188996 (|l#$Mutation_188996| T@$Location) (|p#$Mutation_188996| T@Vec_25263) (|v#$Mutation_188996| T@Vec_188353) ) ) ))
(declare-datatypes ((T@$Mutation_187303 0)) ((($Mutation_187303 (|l#$Mutation_187303| T@$Location) (|p#$Mutation_187303| T@Vec_25263) (|v#$Mutation_187303| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_186316 0)) ((($Mutation_186316 (|l#$Mutation_186316| T@$Location) (|p#$Mutation_186316| T@Vec_25263) (|v#$Mutation_186316| T@Vec_185673) ) ) ))
(declare-datatypes ((T@$Mutation_184623 0)) ((($Mutation_184623 (|l#$Mutation_184623| T@$Location) (|p#$Mutation_184623| T@Vec_25263) (|v#$Mutation_184623| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_183636 0)) ((($Mutation_183636 (|l#$Mutation_183636| T@$Location) (|p#$Mutation_183636| T@Vec_25263) (|v#$Mutation_183636| T@Vec_159504) ) ) ))
(declare-datatypes ((T@$Mutation_181981 0)) ((($Mutation_181981 (|l#$Mutation_181981| T@$Location) (|p#$Mutation_181981| T@Vec_25263) (|v#$Mutation_181981| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_180994 0)) ((($Mutation_180994 (|l#$Mutation_180994| T@$Location) (|p#$Mutation_180994| T@Vec_25263) (|v#$Mutation_180994| T@Vec_160193) ) ) ))
(declare-datatypes ((T@$Mutation_179316 0)) ((($Mutation_179316 (|l#$Mutation_179316| T@$Location) (|p#$Mutation_179316| T@Vec_25263) (|v#$Mutation_179316| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_178329 0)) ((($Mutation_178329 (|l#$Mutation_178329| T@$Location) (|p#$Mutation_178329| T@Vec_25263) (|v#$Mutation_178329| T@Vec_159960) ) ) ))
(declare-datatypes ((T@$Mutation_176620 0)) ((($Mutation_176620 (|l#$Mutation_176620| T@$Location) (|p#$Mutation_176620| T@Vec_25263) (|v#$Mutation_176620| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_175633 0)) ((($Mutation_175633 (|l#$Mutation_175633| T@$Location) (|p#$Mutation_175633| T@Vec_25263) (|v#$Mutation_175633| T@Vec_159999) ) ) ))
(declare-datatypes ((T@$Mutation_173924 0)) ((($Mutation_173924 (|l#$Mutation_173924| T@$Location) (|p#$Mutation_173924| T@Vec_25263) (|v#$Mutation_173924| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_172937 0)) ((($Mutation_172937 (|l#$Mutation_172937| T@$Location) (|p#$Mutation_172937| T@Vec_25263) (|v#$Mutation_172937| T@Vec_160038) ) ) ))
(declare-datatypes ((T@$Mutation_171228 0)) ((($Mutation_171228 (|l#$Mutation_171228| T@$Location) (|p#$Mutation_171228| T@Vec_25263) (|v#$Mutation_171228| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_170241 0)) ((($Mutation_170241 (|l#$Mutation_170241| T@$Location) (|p#$Mutation_170241| T@Vec_25263) (|v#$Mutation_170241| T@Vec_159693) ) ) ))
(declare-datatypes ((T@$Mutation_168441 0)) ((($Mutation_168441 (|l#$Mutation_168441| T@$Location) (|p#$Mutation_168441| T@Vec_25263) (|v#$Mutation_168441| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_167454 0)) ((($Mutation_167454 (|l#$Mutation_167454| T@$Location) (|p#$Mutation_167454| T@Vec_25263) (|v#$Mutation_167454| T@Vec_159582) ) ) ))
(declare-datatypes ((T@$Mutation_165789 0)) ((($Mutation_165789 (|l#$Mutation_165789| T@$Location) (|p#$Mutation_165789| T@Vec_25263) (|v#$Mutation_165789| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_164802 0)) ((($Mutation_164802 (|l#$Mutation_164802| T@$Location) (|p#$Mutation_164802| T@Vec_25263) (|v#$Mutation_164802| T@Vec_159543) ) ) ))
(declare-datatypes ((T@$Mutation_163089 0)) ((($Mutation_163089 (|l#$Mutation_163089| T@$Location) (|p#$Mutation_163089| T@Vec_25263) (|v#$Mutation_163089| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_162102 0)) ((($Mutation_162102 (|l#$Mutation_162102| T@$Location) (|p#$Mutation_162102| T@Vec_25263) (|v#$Mutation_162102| T@Vec_161457) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_161457 T@Vec_161457) Bool)
(declare-fun InRangeVec_141934 (T@Vec_161457 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_161457) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_161457 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_159543 T@Vec_159543) Bool)
(declare-fun InRangeVec_142135 (T@Vec_159543 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_159543) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_159543 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_159582 T@Vec_159582) Bool)
(declare-fun InRangeVec_142336 (T@Vec_159582 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_159582) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_159582 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_159693 T@Vec_159693) Bool)
(declare-fun InRangeVec_142537 (T@Vec_159693 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_25263 T@Vec_25263) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_159693) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_159693 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_160038 T@Vec_160038) Bool)
(declare-fun InRangeVec_142738 (T@Vec_160038 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_160038) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_160038 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_159999 T@Vec_159999) Bool)
(declare-fun InRangeVec_142939 (T@Vec_159999 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_159999) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_159999 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_159960 T@Vec_159960) Bool)
(declare-fun InRangeVec_143140 (T@Vec_159960 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_159960) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_159960 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_160193 T@Vec_160193) Bool)
(declare-fun InRangeVec_143341 (T@Vec_160193 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_160193) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_160193 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_159504 T@Vec_159504) Bool)
(declare-fun InRangeVec_143542 (T@Vec_159504 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_159504) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_159504 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_185673 T@Vec_185673) Bool)
(declare-fun InRangeVec_143743 (T@Vec_185673 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_185673) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_185673 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_188353 T@Vec_188353) Bool)
(declare-fun InRangeVec_143944 (T@Vec_188353 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_188353) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_188353 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_159750 T@Vec_159750) Bool)
(declare-fun InRangeVec_191115 (T@Vec_159750 Int) Bool)
(declare-fun |Select__T@[Int]Vec_25263_| (|T@[Int]Vec_25263| Int) T@Vec_25263)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_159750) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_25263) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_159750 T@Vec_25263) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_25263 T@Vec_25263) Bool)
(declare-fun InRangeVec_16728 (T@Vec_25263 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_25263) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_25263 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_25263 T@Vec_25263) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_25263) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_25263 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_25263 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_25263) T@Vec_25263)
(declare-fun $1_Hash_sha3 (T@Vec_25263) T@Vec_25263)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_25263) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_25263 T@Vec_25263 T@Vec_25263) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_159418_| (|T@[$1_Event_EventHandle]Multiset_159418| T@$1_Event_EventHandle) T@Multiset_159418)
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
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| (|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_25263 Int) T@Vec_25263)
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
(declare-fun IndexOfVec_25263 (T@Vec_25263 Int) Int)
(declare-fun IndexOfVec_159504 (T@Vec_159504 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_159543 (T@Vec_159543 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_159582 (T@Vec_159582 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_159693 (T@Vec_159693 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_159750 (T@Vec_159750 T@Vec_25263) Int)
(declare-fun IndexOfVec_159960 (T@Vec_159960 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_159999 (T@Vec_159999 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_160038 (T@Vec_160038 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_160193 (T@Vec_160193 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_161457 (T@Vec_161457 |T@#0|) Int)
(declare-fun IndexOfVec_185673 (T@Vec_185673 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_188353 (T@Vec_188353 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_159418| |T@[$1_Event_EventHandle]Multiset_159418|) |T@[$1_Event_EventHandle]Multiset_159418|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_25263| |T@[Int]Vec_25263| Int T@Vec_25263) |T@[Int]Vec_25263|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_25263| Int Int T@Vec_25263) |T@[Int]Vec_25263|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_25263| |T@[Int]Vec_25263| Int T@Vec_25263) |T@[Int]Vec_25263|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |TreasuryComplianceScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |TreasuryComplianceScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |TreasuryComplianceScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |TreasuryComplianceScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |TreasuryComplianceScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |TreasuryComplianceScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |TreasuryComplianceScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |TreasuryComplianceScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_161457) (v2 T@Vec_161457) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_161457| v1) (|l#Vec_161457| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_141934 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_161457| v2) i@@0)))
 :qid |TreasuryComplianceScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |TreasuryComplianceScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_161457) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_161457| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_141934 v@@4 i@@1) true)
 :qid |TreasuryComplianceScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |TreasuryComplianceScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_161457) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_141934 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@5) i@@3) e))
 :qid |TreasuryComplianceScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_141934 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@5) j) e)))
 :qid |TreasuryComplianceScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |TreasuryComplianceScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_159543) (v2@@0 T@Vec_159543) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_159543| v1@@0) (|l#Vec_159543| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_142135 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v2@@0) i@@4)))
 :qid |TreasuryComplianceScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |TreasuryComplianceScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_159543) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_159543| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_142135 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@6) i@@5)))
 :qid |TreasuryComplianceScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |TreasuryComplianceScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_159543) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_142135 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@7) i@@7) e@@0))
 :qid |TreasuryComplianceScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_142135 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@7) j@@0) e@@0)))
 :qid |TreasuryComplianceScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |TreasuryComplianceScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_159582) (v2@@1 T@Vec_159582) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_159582| v1@@1) (|l#Vec_159582| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_142336 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v2@@1) i@@8)))
 :qid |TreasuryComplianceScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |TreasuryComplianceScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_159582) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_159582| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_142336 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@8) i@@9)))
 :qid |TreasuryComplianceScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |TreasuryComplianceScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_159582) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_142336 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@9) i@@11) e@@1))
 :qid |TreasuryComplianceScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_142336 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@9) j@@1) e@@1)))
 :qid |TreasuryComplianceScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |TreasuryComplianceScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_159693) (v2@@2 T@Vec_159693) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_159693| v1@@2) (|l#Vec_159693| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_142537 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v2@@2) i@@12)))))
 :qid |TreasuryComplianceScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |TreasuryComplianceScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_159693) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_159693| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_142537 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@10) i@@13)))
 :qid |TreasuryComplianceScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |TreasuryComplianceScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_159693) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_142537 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |TreasuryComplianceScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_142537 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |TreasuryComplianceScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |TreasuryComplianceScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_160038) (v2@@3 T@Vec_160038) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_160038| v1@@3) (|l#Vec_160038| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_142738 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v2@@3) i@@16)))))
 :qid |TreasuryComplianceScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |TreasuryComplianceScriptsbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_160038) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_160038| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_142738 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@12) i@@17)))
 :qid |TreasuryComplianceScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |TreasuryComplianceScriptsbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_160038) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_142738 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |TreasuryComplianceScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_142738 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |TreasuryComplianceScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |TreasuryComplianceScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_159999) (v2@@4 T@Vec_159999) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_159999| v1@@4) (|l#Vec_159999| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_142939 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v2@@4) i@@20)))))
 :qid |TreasuryComplianceScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |TreasuryComplianceScriptsbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_159999) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_159999| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_142939 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@14) i@@21)))
 :qid |TreasuryComplianceScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |TreasuryComplianceScriptsbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_159999) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_142939 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |TreasuryComplianceScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_142939 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |TreasuryComplianceScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |TreasuryComplianceScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_159960) (v2@@5 T@Vec_159960) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_159960| v1@@5) (|l#Vec_159960| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_143140 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v2@@5) i@@24)))))
 :qid |TreasuryComplianceScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |TreasuryComplianceScriptsbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_159960) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_159960| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_143140 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@16) i@@25)))
 :qid |TreasuryComplianceScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |TreasuryComplianceScriptsbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_159960) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_143140 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |TreasuryComplianceScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_143140 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |TreasuryComplianceScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |TreasuryComplianceScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_160193) (v2@@6 T@Vec_160193) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_160193| v1@@6) (|l#Vec_160193| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_143341 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v2@@6) i@@28))))
 :qid |TreasuryComplianceScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |TreasuryComplianceScriptsbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_160193) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_160193| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_143341 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@18) i@@29)))
 :qid |TreasuryComplianceScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |TreasuryComplianceScriptsbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_160193) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_143341 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |TreasuryComplianceScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_143341 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |TreasuryComplianceScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |TreasuryComplianceScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_159504) (v2@@7 T@Vec_159504) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_159504| v1@@7) (|l#Vec_159504| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_143542 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v2@@7) i@@32)))))
 :qid |TreasuryComplianceScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |TreasuryComplianceScriptsbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_159504) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_159504| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_143542 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@20) i@@33)))
 :qid |TreasuryComplianceScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |TreasuryComplianceScriptsbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_159504) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_143542 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |TreasuryComplianceScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_143542 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |TreasuryComplianceScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |TreasuryComplianceScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_185673) (v2@@8 T@Vec_185673) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_185673| v1@@8) (|l#Vec_185673| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_143743 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v2@@8) i@@36)))
 :qid |TreasuryComplianceScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |TreasuryComplianceScriptsbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_185673) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_185673| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_143743 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@22) i@@37)))
 :qid |TreasuryComplianceScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |TreasuryComplianceScriptsbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_185673) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_143743 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@23) i@@39) e@@8))
 :qid |TreasuryComplianceScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_143743 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@23) j@@8) e@@8)))
 :qid |TreasuryComplianceScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |TreasuryComplianceScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_188353) (v2@@9 T@Vec_188353) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_188353| v1@@9) (|l#Vec_188353| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_143944 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v2@@9) i@@40)))
 :qid |TreasuryComplianceScriptsbpl.2425:13|
 :skolemid |87|
))))
 :qid |TreasuryComplianceScriptsbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_188353) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_188353| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_143944 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@24) i@@41)))
 :qid |TreasuryComplianceScriptsbpl.2431:13|
 :skolemid |89|
))))
 :qid |TreasuryComplianceScriptsbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_188353) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_143944 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@25) i@@43) e@@9))
 :qid |TreasuryComplianceScriptsbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_143944 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@25) j@@9) e@@9)))
 :qid |TreasuryComplianceScriptsbpl.2444:17|
 :skolemid |92|
)))))
 :qid |TreasuryComplianceScriptsbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_159750) (v2@@10 T@Vec_159750) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_159750| v1@@10) (|l#Vec_159750| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_191115 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v1@@10) i@@44) (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v2@@10) i@@44)))
 :qid |TreasuryComplianceScriptsbpl.2606:13|
 :skolemid |94|
))))
 :qid |TreasuryComplianceScriptsbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_159750) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_159750| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_191115 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@26) i@@45)))
 :qid |TreasuryComplianceScriptsbpl.2612:13|
 :skolemid |96|
))))
 :qid |TreasuryComplianceScriptsbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_159750) (e@@10 T@Vec_25263) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_191115 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@27) i@@47) e@@10))
 :qid |TreasuryComplianceScriptsbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_191115 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@27) j@@10) e@@10)))
 :qid |TreasuryComplianceScriptsbpl.2625:17|
 :skolemid |99|
)))))
 :qid |TreasuryComplianceScriptsbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_25263) (v2@@11 T@Vec_25263) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_25263| v1@@11) (|l#Vec_25263| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_25263| v2@@11) i@@48)))
 :qid |TreasuryComplianceScriptsbpl.2787:13|
 :skolemid |101|
))))
 :qid |TreasuryComplianceScriptsbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_25263) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_25263| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_25263| v@@28) i@@49)))
 :qid |TreasuryComplianceScriptsbpl.2793:13|
 :skolemid |103|
))))
 :qid |TreasuryComplianceScriptsbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_25263) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@29) i@@51) e@@11))
 :qid |TreasuryComplianceScriptsbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@29) j@@11) e@@11)))
 :qid |TreasuryComplianceScriptsbpl.2806:17|
 :skolemid |106|
)))))
 :qid |TreasuryComplianceScriptsbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_25263) (v2@@12 T@Vec_25263) ) (! (= (|$IsEqual'vec'u64''| v1@@12 v2@@12)  (and (= (|l#Vec_25263| v1@@12) (|l#Vec_25263| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_25263| v2@@12) i@@52)))
 :qid |TreasuryComplianceScriptsbpl.2968:13|
 :skolemid |108|
))))
 :qid |TreasuryComplianceScriptsbpl.2966:29|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u64''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_25263) ) (! (= (|$IsValid'vec'u64''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_25263| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_25263| v@@30) i@@53)))
 :qid |TreasuryComplianceScriptsbpl.2974:13|
 :skolemid |110|
))))
 :qid |TreasuryComplianceScriptsbpl.2972:29|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u64''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_25263) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u64'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@31) i@@55) e@@12))
 :qid |TreasuryComplianceScriptsbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@31) j@@12) e@@12)))
 :qid |TreasuryComplianceScriptsbpl.2987:17|
 :skolemid |113|
)))))
 :qid |TreasuryComplianceScriptsbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u64'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_25263) (v2@@13 T@Vec_25263) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13)  (and (= (|l#Vec_25263| v1@@13) (|l#Vec_25263| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_16728 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_25263| v2@@13) i@@56)))
 :qid |TreasuryComplianceScriptsbpl.3149:13|
 :skolemid |115|
))))
 :qid |TreasuryComplianceScriptsbpl.3147:28|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u8''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_25263) ) (! (= (|$IsValid'vec'u8''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_25263| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_16728 v@@32 i@@57) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_25263| v@@32) i@@57)))
 :qid |TreasuryComplianceScriptsbpl.3155:13|
 :skolemid |117|
))))
 :qid |TreasuryComplianceScriptsbpl.3153:28|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u8''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_25263) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u8'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_16728 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@33) i@@59) e@@13))
 :qid |TreasuryComplianceScriptsbpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_16728 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@33) j@@13) e@@13)))
 :qid |TreasuryComplianceScriptsbpl.3168:17|
 :skolemid |120|
)))))
 :qid |TreasuryComplianceScriptsbpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u8'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_25263) (v2@@14 T@Vec_25263) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14)))
 :qid |TreasuryComplianceScriptsbpl.3341:15|
 :skolemid |122|
 :pattern ( ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14))
)))
(assert (forall ((v1@@15 T@Vec_25263) (v2@@15 T@Vec_25263) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15)))
 :qid |TreasuryComplianceScriptsbpl.3357:15|
 :skolemid |123|
 :pattern ( ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15))
)))
(assert (forall ((k1 T@Vec_25263) (k2 T@Vec_25263) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |TreasuryComplianceScriptsbpl.3428:15|
 :skolemid |124|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_25263) (s2 T@Vec_25263) (k1@@0 T@Vec_25263) (k2@@0 T@Vec_25263) (m1 T@Vec_25263) (m2 T@Vec_25263) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |TreasuryComplianceScriptsbpl.3431:15|
 :skolemid |125|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_159418| stream) 0) (forall ((v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_159418| stream) v@@34) 0)
 :qid |TreasuryComplianceScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |TreasuryComplianceScriptsbpl.3492:13|
 :skolemid |126|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |TreasuryComplianceScriptsbpl.3533:80|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16)))
 :qid |TreasuryComplianceScriptsbpl.3539:15|
 :skolemid |129|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |TreasuryComplianceScriptsbpl.3589:82|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17)))
 :qid |TreasuryComplianceScriptsbpl.3595:15|
 :skolemid |131|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |TreasuryComplianceScriptsbpl.3645:80|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@18 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@18 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@18)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18)))
 :qid |TreasuryComplianceScriptsbpl.3651:15|
 :skolemid |133|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |TreasuryComplianceScriptsbpl.3701:79|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_AdminTransactionEvent) (v2@@19 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19)))
 :qid |TreasuryComplianceScriptsbpl.3707:15|
 :skolemid |135|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |TreasuryComplianceScriptsbpl.3757:76|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_CreateAccountEvent) (v2@@20 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@20 v2@@20) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20)))
 :qid |TreasuryComplianceScriptsbpl.3763:15|
 :skolemid |137|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |TreasuryComplianceScriptsbpl.3813:78|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@21 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21)))
 :qid |TreasuryComplianceScriptsbpl.3819:15|
 :skolemid |139|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |TreasuryComplianceScriptsbpl.3869:74|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_SentPaymentEvent) (v2@@22 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@22))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22)))
 :qid |TreasuryComplianceScriptsbpl.3875:15|
 :skolemid |141|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |TreasuryComplianceScriptsbpl.3925:69|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@23 T@$1_DiemBlock_NewBlockEvent) (v2@@23 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@23) (|$round#$1_DiemBlock_NewBlockEvent| v2@@23)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@23) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@23))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@23) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@23) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23)))
 :qid |TreasuryComplianceScriptsbpl.3931:15|
 :skolemid |143|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |TreasuryComplianceScriptsbpl.3981:70|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@24 T@$1_DiemConfig_NewEpochEvent) (v2@@24 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@24 v2@@24) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24)))
 :qid |TreasuryComplianceScriptsbpl.3987:15|
 :skolemid |145|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |TreasuryComplianceScriptsbpl.4037:60|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@25 T@$1_Diem_BurnEvent) (v2@@25 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@25) (|$amount#$1_Diem_BurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@25) (|$currency_code#$1_Diem_BurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@25) (|$preburn_address#$1_Diem_BurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25)))
 :qid |TreasuryComplianceScriptsbpl.4043:15|
 :skolemid |147|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |TreasuryComplianceScriptsbpl.4093:66|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@26 T@$1_Diem_CancelBurnEvent) (v2@@26 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@26) (|$amount#$1_Diem_CancelBurnEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@26) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@26) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26)))
 :qid |TreasuryComplianceScriptsbpl.4099:15|
 :skolemid |149|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |TreasuryComplianceScriptsbpl.4149:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@27 T@$1_Diem_MintEvent) (v2@@27 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@27) (|$amount#$1_Diem_MintEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@27) (|$currency_code#$1_Diem_MintEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27)))
 :qid |TreasuryComplianceScriptsbpl.4155:15|
 :skolemid |151|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |TreasuryComplianceScriptsbpl.4205:63|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@28 T@$1_Diem_PreburnEvent) (v2@@28 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@28) (|$amount#$1_Diem_PreburnEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@28) (|$currency_code#$1_Diem_PreburnEvent| v2@@28))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@28) (|$preburn_address#$1_Diem_PreburnEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28)))
 :qid |TreasuryComplianceScriptsbpl.4211:15|
 :skolemid |153|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |TreasuryComplianceScriptsbpl.4261:79|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29)))
 :qid |TreasuryComplianceScriptsbpl.4267:15|
 :skolemid |155|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |TreasuryComplianceScriptsbpl.4317:82|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@30 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30)))
 :qid |TreasuryComplianceScriptsbpl.4323:15|
 :skolemid |157|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |TreasuryComplianceScriptsbpl.4373:88|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31)))
 :qid |TreasuryComplianceScriptsbpl.4379:15|
 :skolemid |159|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |TreasuryComplianceScriptsbpl.4429:72|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@32 T@$1_VASPDomain_VASPDomainEvent) (v2@@32 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@32)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@32)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@32)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@32))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32)))
 :qid |TreasuryComplianceScriptsbpl.4435:15|
 :skolemid |161|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |TreasuryComplianceScriptsbpl.4504:61|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |TreasuryComplianceScriptsbpl.4563:36|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |TreasuryComplianceScriptsbpl.4582:71|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |TreasuryComplianceScriptsbpl.4660:46|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |TreasuryComplianceScriptsbpl.4672:64|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |TreasuryComplianceScriptsbpl.4684:75|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |TreasuryComplianceScriptsbpl.4696:72|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |TreasuryComplianceScriptsbpl.4724:55|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |TreasuryComplianceScriptsbpl.4747:46|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |TreasuryComplianceScriptsbpl.4759:15|
 :skolemid |171|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |TreasuryComplianceScriptsbpl.4772:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |TreasuryComplianceScriptsbpl.4970:71|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |TreasuryComplianceScriptsbpl.4983:91|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |TreasuryComplianceScriptsbpl.4996:113|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |TreasuryComplianceScriptsbpl.5009:75|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |TreasuryComplianceScriptsbpl.5022:73|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |TreasuryComplianceScriptsbpl.5042:48|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |TreasuryComplianceScriptsbpl.5059:83|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |TreasuryComplianceScriptsbpl.5073:48|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |TreasuryComplianceScriptsbpl.5094:45|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |TreasuryComplianceScriptsbpl.5108:51|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |TreasuryComplianceScriptsbpl.5131:48|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |TreasuryComplianceScriptsbpl.5164:49|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |TreasuryComplianceScriptsbpl.5209:65|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |TreasuryComplianceScriptsbpl.5371:45|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |TreasuryComplianceScriptsbpl.5384:45|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@24)))
 :qid |TreasuryComplianceScriptsbpl.5397:37|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@25) true)
 :qid |TreasuryComplianceScriptsbpl.5410:55|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26) true)
 :qid |TreasuryComplianceScriptsbpl.5424:55|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@27) true)
 :qid |TreasuryComplianceScriptsbpl.5438:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@28))))
 :qid |TreasuryComplianceScriptsbpl.5458:38|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@28))
)))
(assert (forall ((s@@29 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@29)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@29)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@29))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@29))))
 :qid |TreasuryComplianceScriptsbpl.5480:44|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@30))))
 :qid |TreasuryComplianceScriptsbpl.5532:53|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@31)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@31))))
 :qid |TreasuryComplianceScriptsbpl.5605:53|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@32)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@32)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@32))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@32))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@32))))
 :qid |TreasuryComplianceScriptsbpl.5678:45|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@33) true)
 :qid |TreasuryComplianceScriptsbpl.5715:55|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34) true)
 :qid |TreasuryComplianceScriptsbpl.5729:55|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@35) true)
 :qid |TreasuryComplianceScriptsbpl.5743:47|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@36)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@36))))
 :qid |TreasuryComplianceScriptsbpl.5760:38|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@37) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@37)))
 :qid |TreasuryComplianceScriptsbpl.5774:48|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@38)))
 :qid |TreasuryComplianceScriptsbpl.5788:48|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@39) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@39)))
 :qid |TreasuryComplianceScriptsbpl.5802:40|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |TreasuryComplianceScriptsbpl.5822:41|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |TreasuryComplianceScriptsbpl.5838:53|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |TreasuryComplianceScriptsbpl.5851:53|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@43)))
 :qid |TreasuryComplianceScriptsbpl.5864:45|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |TreasuryComplianceScriptsbpl.5880:60|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |TreasuryComplianceScriptsbpl.5897:60|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@46))))
 :qid |TreasuryComplianceScriptsbpl.5914:52|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47))))
 :qid |TreasuryComplianceScriptsbpl.5931:57|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48) true)
 :qid |TreasuryComplianceScriptsbpl.15257:68|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))))
 :qid |TreasuryComplianceScriptsbpl.15279:66|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))))
 :qid |TreasuryComplianceScriptsbpl.15305:66|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@51)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@51)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@51))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@51))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@51))))
 :qid |TreasuryComplianceScriptsbpl.15331:58|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))))
 :qid |TreasuryComplianceScriptsbpl.15360:56|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))))
 :qid |TreasuryComplianceScriptsbpl.15390:56|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@54)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@54)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@54))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@54))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@54))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@54))))
 :qid |TreasuryComplianceScriptsbpl.15420:48|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@54))
)))
(assert (forall ((s@@55 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@55) true)
 :qid |TreasuryComplianceScriptsbpl.15438:31|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@55))
)))
(assert (forall ((s@@56 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@56) true)
 :qid |TreasuryComplianceScriptsbpl.15471:31|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@56))
)))
(assert (forall ((s@@57 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@57)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@57)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@57))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@57))))
 :qid |TreasuryComplianceScriptsbpl.15490:35|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@58) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@58)))
 :qid |TreasuryComplianceScriptsbpl.15511:45|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@59)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@59))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@59))))
 :qid |TreasuryComplianceScriptsbpl.15529:50|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@60) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@60)))
 :qid |TreasuryComplianceScriptsbpl.15545:52|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@61) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@61)))
 :qid |TreasuryComplianceScriptsbpl.15558:46|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@62) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@62)))
 :qid |TreasuryComplianceScriptsbpl.16511:38|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@63) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@63)))
 :qid |TreasuryComplianceScriptsbpl.16525:39|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@63))
)))
(assert (forall ((s@@64 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@64)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@64)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@64))))
 :qid |TreasuryComplianceScriptsbpl.16567:65|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@65)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@65)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@65))))
 :qid |TreasuryComplianceScriptsbpl.16585:65|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@65))
)))
(assert (forall ((s@@66 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@66)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@66)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@66))))
 :qid |TreasuryComplianceScriptsbpl.16603:57|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@66))
)))
(assert (forall ((payer Int) (metadata T@Vec_25263) (deposit_value Int) ) (! (let (($$res@@0 ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |TreasuryComplianceScriptsbpl.17995:15|
 :skolemid |243|
)))
(assert (forall ((s@@67 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@67))))
 :qid |TreasuryComplianceScriptsbpl.18023:60|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68))))
 :qid |TreasuryComplianceScriptsbpl.18040:66|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@69)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@69))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@69))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@69))))
 :qid |TreasuryComplianceScriptsbpl.18069:50|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@70) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@70)))
 :qid |TreasuryComplianceScriptsbpl.18092:45|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@71)) true))
 :qid |TreasuryComplianceScriptsbpl.18274:87|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |TreasuryComplianceScriptsbpl.18288:47|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |TreasuryComplianceScriptsbpl.18307:58|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))))
 :qid |TreasuryComplianceScriptsbpl.18329:61|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))))
 :qid |TreasuryComplianceScriptsbpl.18352:61|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@76)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@76))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@76))))
 :qid |TreasuryComplianceScriptsbpl.18375:53|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76))
)))
(assert (forall ((s@@77 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@77) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@77)))
 :qid |TreasuryComplianceScriptsbpl.18392:39|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@78))))
 :qid |TreasuryComplianceScriptsbpl.18424:58|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79))))
 :qid |TreasuryComplianceScriptsbpl.18441:58|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80) true)
 :qid |TreasuryComplianceScriptsbpl.18456:51|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81))))
 :qid |TreasuryComplianceScriptsbpl.18473:60|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@82)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@82))))
 :qid |TreasuryComplianceScriptsbpl.19258:47|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@83)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@83))))
 :qid |TreasuryComplianceScriptsbpl.19284:63|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@84)))
 :qid |TreasuryComplianceScriptsbpl.19299:57|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@85)))
 :qid |TreasuryComplianceScriptsbpl.19312:55|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@86)))
 :qid |TreasuryComplianceScriptsbpl.19326:55|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@87) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@87)))
 :qid |TreasuryComplianceScriptsbpl.19340:47|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@88)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@88))))
 :qid |TreasuryComplianceScriptsbpl.19357:54|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@89) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@89)))
 :qid |TreasuryComplianceScriptsbpl.19371:55|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@90) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@90)))
 :qid |TreasuryComplianceScriptsbpl.19384:57|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@91))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@91))))
 :qid |TreasuryComplianceScriptsbpl.19406:56|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@92))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@92))))
 :qid |TreasuryComplianceScriptsbpl.19433:52|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@93) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@93)))
 :qid |TreasuryComplianceScriptsbpl.19451:54|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@93))
)))
(assert (forall ((s@@94 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@94) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@94)))
 :qid |TreasuryComplianceScriptsbpl.20276:55|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |TreasuryComplianceScriptsbpl.20297:47|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |TreasuryComplianceScriptsbpl.20321:47|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |TreasuryComplianceScriptsbpl.20339:49|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |TreasuryComplianceScriptsbpl.20381:49|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |TreasuryComplianceScriptsbpl.20410:48|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |TreasuryComplianceScriptsbpl.20426:47|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@35 T@Vec_161457) (i@@60 Int) ) (! (= (InRangeVec_141934 v@@35 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_161457| v@@35))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_141934 v@@35 i@@60))
)))
(assert (forall ((v@@36 T@Vec_159543) (i@@61 Int) ) (! (= (InRangeVec_142135 v@@36 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_159543| v@@36))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142135 v@@36 i@@61))
)))
(assert (forall ((v@@37 T@Vec_159582) (i@@62 Int) ) (! (= (InRangeVec_142336 v@@37 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_159582| v@@37))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142336 v@@37 i@@62))
)))
(assert (forall ((v@@38 T@Vec_159693) (i@@63 Int) ) (! (= (InRangeVec_142537 v@@38 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_159693| v@@38))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142537 v@@38 i@@63))
)))
(assert (forall ((v@@39 T@Vec_160038) (i@@64 Int) ) (! (= (InRangeVec_142738 v@@39 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_160038| v@@39))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142738 v@@39 i@@64))
)))
(assert (forall ((v@@40 T@Vec_159999) (i@@65 Int) ) (! (= (InRangeVec_142939 v@@40 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_159999| v@@40))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_142939 v@@40 i@@65))
)))
(assert (forall ((v@@41 T@Vec_159960) (i@@66 Int) ) (! (= (InRangeVec_143140 v@@41 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_159960| v@@41))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143140 v@@41 i@@66))
)))
(assert (forall ((v@@42 T@Vec_160193) (i@@67 Int) ) (! (= (InRangeVec_143341 v@@42 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_160193| v@@42))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143341 v@@42 i@@67))
)))
(assert (forall ((v@@43 T@Vec_159504) (i@@68 Int) ) (! (= (InRangeVec_143542 v@@43 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_159504| v@@43))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143542 v@@43 i@@68))
)))
(assert (forall ((v@@44 T@Vec_185673) (i@@69 Int) ) (! (= (InRangeVec_143743 v@@44 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_185673| v@@44))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143743 v@@44 i@@69))
)))
(assert (forall ((v@@45 T@Vec_188353) (i@@70 Int) ) (! (= (InRangeVec_143944 v@@45 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_188353| v@@45))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_143944 v@@45 i@@70))
)))
(assert (forall ((v@@46 T@Vec_159750) (i@@71 Int) ) (! (= (InRangeVec_191115 v@@46 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_159750| v@@46))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_191115 v@@46 i@@71))
)))
(assert (forall ((v@@47 T@Vec_25263) (i@@72 Int) ) (! (= (InRangeVec_16728 v@@47 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_25263| v@@47))))
 :qid |TreasuryComplianceScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@47 i@@72))
)))
(assert (forall ((v@@48 T@Vec_25263) (e@@14 Int) ) (! (let ((i@@73 (IndexOfVec_25263 v@@48 e@@14)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_16728 v@@48 i@@74) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@48) i@@74) e@@14))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_16728 v@@48 i@@73) (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@48) i@@73) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@73)) (not (= (|Select__T@[Int]Int_| (|v#Vec_25263| v@@48) j@@14) e@@14)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_25263 v@@48 e@@14))
)))
(assert (forall ((v@@49 T@Vec_159504) (e@@15 T@$1_ValidatorConfig_Config) ) (! (let ((i@@75 (IndexOfVec_159504 v@@49 e@@15)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_143542 v@@49 i@@76) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@49) i@@76) e@@15))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_143542 v@@49 i@@75) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@49) i@@75) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@75)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_159504| v@@49) j@@15) e@@15)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159504 v@@49 e@@15))
)))
(assert (forall ((v@@50 T@Vec_159543) (e@@16 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@77 (IndexOfVec_159543 v@@50 e@@16)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_142135 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@50) i@@78) e@@16))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_142135 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@50) i@@77) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@77)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_159543| v@@50) j@@16) e@@16)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159543 v@@50 e@@16))
)))
(assert (forall ((v@@51 T@Vec_159582) (e@@17 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@79 (IndexOfVec_159582 v@@51 e@@17)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_142336 v@@51 i@@80) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@51) i@@80) e@@17))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_142336 v@@51 i@@79) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@51) i@@79) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@79)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_159582| v@@51) j@@17) e@@17)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159582 v@@51 e@@17))
)))
(assert (forall ((v@@52 T@Vec_159693) (e@@18 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@81 (IndexOfVec_159693 v@@52 e@@18)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_142537 v@@52 i@@82) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@52) i@@82) e@@18))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_142537 v@@52 i@@81) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@52) i@@81) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@81)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_159693| v@@52) j@@18) e@@18)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159693 v@@52 e@@18))
)))
(assert (forall ((v@@53 T@Vec_159750) (e@@19 T@Vec_25263) ) (! (let ((i@@83 (IndexOfVec_159750 v@@53 e@@19)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_191115 v@@53 i@@84) (= (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@53) i@@84) e@@19))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_191115 v@@53 i@@83) (= (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@53) i@@83) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@83)) (not (= (|Select__T@[Int]Vec_25263_| (|v#Vec_159750| v@@53) j@@19) e@@19)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159750 v@@53 e@@19))
)))
(assert (forall ((v@@54 T@Vec_159960) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@85 (IndexOfVec_159960 v@@54 e@@20)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_143140 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@54) i@@86) e@@20))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_143140 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@54) i@@85) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_159960| v@@54) j@@20) e@@20)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159960 v@@54 e@@20))
)))
(assert (forall ((v@@55 T@Vec_159999) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@87 (IndexOfVec_159999 v@@55 e@@21)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_142939 v@@55 i@@88) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@55) i@@88) e@@21))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_142939 v@@55 i@@87) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@55) i@@87) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@87)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_159999| v@@55) j@@21) e@@21)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_159999 v@@55 e@@21))
)))
(assert (forall ((v@@56 T@Vec_160038) (e@@22 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@89 (IndexOfVec_160038 v@@56 e@@22)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_142738 v@@56 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@56) i@@90) e@@22))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_142738 v@@56 i@@89) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@56) i@@89) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@89)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_160038| v@@56) j@@22) e@@22)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_160038 v@@56 e@@22))
)))
(assert (forall ((v@@57 T@Vec_160193) (e@@23 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@91 (IndexOfVec_160193 v@@57 e@@23)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_143341 v@@57 i@@92) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@57) i@@92) e@@23))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_143341 v@@57 i@@91) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@57) i@@91) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@91)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_160193| v@@57) j@@23) e@@23)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_160193 v@@57 e@@23))
)))
(assert (forall ((v@@58 T@Vec_161457) (e@@24 |T@#0|) ) (! (let ((i@@93 (IndexOfVec_161457 v@@58 e@@24)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_141934 v@@58 i@@94) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@58) i@@94) e@@24))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_141934 v@@58 i@@93) (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@58) i@@93) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@93)) (not (= (|Select__T@[Int]#0_| (|v#Vec_161457| v@@58) j@@24) e@@24)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_161457 v@@58 e@@24))
)))
(assert (forall ((v@@59 T@Vec_185673) (e@@25 T@$1_XDX_XDX) ) (! (let ((i@@95 (IndexOfVec_185673 v@@59 e@@25)))
(ite  (not (exists ((i@@96 Int) ) (!  (and (InRangeVec_143743 v@@59 i@@96) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@59) i@@96) e@@25))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@95 (- 0 1))  (and (and (InRangeVec_143743 v@@59 i@@95) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@59) i@@95) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@95)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_185673| v@@59) j@@25) e@@25)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_185673 v@@59 e@@25))
)))
(assert (forall ((v@@60 T@Vec_188353) (e@@26 T@$1_XUS_XUS) ) (! (let ((i@@97 (IndexOfVec_188353 v@@60 e@@26)))
(ite  (not (exists ((i@@98 Int) ) (!  (and (InRangeVec_143944 v@@60 i@@98) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@60) i@@98) e@@26))
 :qid |TreasuryComplianceScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@97 (- 0 1))  (and (and (InRangeVec_143944 v@@60 i@@97) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@60) i@@97) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@97)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_188353| v@@60) j@@26) e@@26)))
 :qid |TreasuryComplianceScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |TreasuryComplianceScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_188353 v@@60 e@@26))
)))
(assert (forall ((|l#0| Bool) (i@@99 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99) |l#0|)
 :qid |TreasuryComplianceScriptsbpl.275:54|
 :skolemid |1266|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_159418|) (|l#1| |T@[$1_Event_EventHandle]Multiset_159418|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#1| handle@@0))))
(Multiset_159418 (|lambda#42| (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#0@@0| handle@@0)) (|v#Multiset_159418| (|Select__T@[$1_Event_EventHandle]Multiset_159418_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |TreasuryComplianceScriptsbpl.3502:13|
 :skolemid |1267|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_159418_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@100 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100) (ite  (and (>= i@@100 |l#0@@1|) (< i@@100 |l#1@@0|)) (ite (< i@@100 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@100) (|Select__T@[Int]#0_| |l#4| (- i@@100 |l#5|))) |l#6|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1268|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@101 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101) (ite  (and (<= |l#0@@2| i@@101) (< i@@101 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@101) |l#4@@0|)) |l#5@@0|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1269|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@27 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27) (ite  (and (>= j@@27 |l#0@@3|) (< j@@27 |l#1@@2|)) (ite (< j@@27 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@27) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@27 |l#5@@1|))) |l#6@@0|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1270|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102) (ite  (and (>= i@@102 |l#0@@4|) (< i@@102 |l#1@@3|)) (ite (< i@@102 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@102) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@102 |l#5@@2|))) |l#6@@1|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1271|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103) (ite  (and (<= |l#0@@5| i@@103) (< i@@103 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@103) |l#4@@3|)) |l#5@@3|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1272|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28) (ite  (and (>= j@@28 |l#0@@6|) (< j@@28 |l#1@@5|)) (ite (< j@@28 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@28) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@28 |l#5@@4|))) |l#6@@2|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1273|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104) (ite  (and (>= i@@104 |l#0@@7|) (< i@@104 |l#1@@6|)) (ite (< i@@104 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@104) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@104 |l#5@@5|))) |l#6@@3|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1274|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105) (ite  (and (<= |l#0@@8| i@@105) (< i@@105 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@105) |l#4@@6|)) |l#5@@6|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1275|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29) (ite  (and (>= j@@29 |l#0@@9|) (< j@@29 |l#1@@8|)) (ite (< j@@29 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@29) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@29 |l#5@@7|))) |l#6@@4|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1276|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106) (ite  (and (>= i@@106 |l#0@@10|) (< i@@106 |l#1@@9|)) (ite (< i@@106 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@106) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@106 |l#5@@8|))) |l#6@@5|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1277|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107) (ite  (and (<= |l#0@@11| i@@107) (< i@@107 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@107) |l#4@@9|)) |l#5@@9|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1278|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30) (ite  (and (>= j@@30 |l#0@@12|) (< j@@30 |l#1@@11|)) (ite (< j@@30 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@30) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@30 |l#5@@10|))) |l#6@@6|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1279|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108) (ite  (and (>= i@@108 |l#0@@13|) (< i@@108 |l#1@@12|)) (ite (< i@@108 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@108 |l#5@@11|))) |l#6@@7|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1280|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109) (ite  (and (<= |l#0@@14| i@@109) (< i@@109 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@109) |l#4@@12|)) |l#5@@12|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1281|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31) (ite  (and (>= j@@31 |l#0@@15|) (< j@@31 |l#1@@14|)) (ite (< j@@31 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@31 |l#5@@13|))) |l#6@@8|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1282|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110) (ite  (and (>= i@@110 |l#0@@16|) (< i@@110 |l#1@@15|)) (ite (< i@@110 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@110) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@110 |l#5@@14|))) |l#6@@9|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1283|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111) (ite  (and (<= |l#0@@17| i@@111) (< i@@111 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@111) |l#4@@15|)) |l#5@@15|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1284|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32) (ite  (and (>= j@@32 |l#0@@18|) (< j@@32 |l#1@@17|)) (ite (< j@@32 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@32 |l#5@@16|))) |l#6@@10|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1285|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112) (ite  (and (>= i@@112 |l#0@@19|) (< i@@112 |l#1@@18|)) (ite (< i@@112 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@112) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@112 |l#5@@17|))) |l#6@@11|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1286|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113) (ite  (and (<= |l#0@@20| i@@113) (< i@@113 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@113) |l#4@@18|)) |l#5@@18|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1287|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33) (ite  (and (>= j@@33 |l#0@@21|) (< j@@33 |l#1@@20|)) (ite (< j@@33 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@33 |l#5@@19|))) |l#6@@12|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1288|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114) (ite  (and (>= i@@114 |l#0@@22|) (< i@@114 |l#1@@21|)) (ite (< i@@114 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@114) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@114 |l#5@@20|))) |l#6@@13|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1289|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115) (ite  (and (<= |l#0@@23| i@@115) (< i@@115 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@115) |l#4@@21|)) |l#5@@21|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1290|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34) (ite  (and (>= j@@34 |l#0@@24|) (< j@@34 |l#1@@23|)) (ite (< j@@34 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@34) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@34 |l#5@@22|))) |l#6@@14|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1291|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116) (ite  (and (>= i@@116 |l#0@@25|) (< i@@116 |l#1@@24|)) (ite (< i@@116 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@116) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@116 |l#5@@23|))) |l#6@@15|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1292|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117) (ite  (and (<= |l#0@@26| i@@117) (< i@@117 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@117) |l#4@@24|)) |l#5@@24|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1293|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35) (ite  (and (>= j@@35 |l#0@@27|) (< j@@35 |l#1@@26|)) (ite (< j@@35 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@35) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@35 |l#5@@25|))) |l#6@@16|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1294|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118) (ite  (and (>= i@@118 |l#0@@28|) (< i@@118 |l#1@@27|)) (ite (< i@@118 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@118) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@118 |l#5@@26|))) |l#6@@17|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1295|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119) (ite  (and (<= |l#0@@29| i@@119) (< i@@119 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@119) |l#4@@27|)) |l#5@@27|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1296|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36) (ite  (and (>= j@@36 |l#0@@30|) (< j@@36 |l#1@@29|)) (ite (< j@@36 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@36) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@36 |l#5@@28|))) |l#6@@18|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1297|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120) (ite  (and (>= i@@120 |l#0@@31|) (< i@@120 |l#1@@30|)) (ite (< i@@120 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@120) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@120 |l#5@@29|))) |l#6@@19|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1298|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121) (ite  (and (<= |l#0@@32| i@@121) (< i@@121 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@121) |l#4@@30|)) |l#5@@30|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1299|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37) (ite  (and (>= j@@37 |l#0@@33|) (< j@@37 |l#1@@32|)) (ite (< j@@37 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@37) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@37 |l#5@@31|))) |l#6@@20|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1300|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_25263|) (|l#4@@32| |T@[Int]Vec_25263|) (|l#5@@32| Int) (|l#6@@21| T@Vec_25263) (i@@122 Int) ) (! (= (|Select__T@[Int]Vec_25263_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122) (ite  (and (>= i@@122 |l#0@@34|) (< i@@122 |l#1@@33|)) (ite (< i@@122 |l#2@@32|) (|Select__T@[Int]Vec_25263_| |l#3@@32| i@@122) (|Select__T@[Int]Vec_25263_| |l#4@@32| (- i@@122 |l#5@@32|))) |l#6@@21|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1301|
 :pattern ( (|Select__T@[Int]Vec_25263_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_25263|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_25263) (i@@123 Int) ) (! (= (|Select__T@[Int]Vec_25263_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123) (ite  (and (<= |l#0@@35| i@@123) (< i@@123 |l#1@@34|)) (|Select__T@[Int]Vec_25263_| |l#2@@33| (- (- |l#3@@33| i@@123) |l#4@@33|)) |l#5@@33|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1302|
 :pattern ( (|Select__T@[Int]Vec_25263_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_25263|) (|l#4@@34| |T@[Int]Vec_25263|) (|l#5@@34| Int) (|l#6@@22| T@Vec_25263) (j@@38 Int) ) (! (= (|Select__T@[Int]Vec_25263_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38) (ite  (and (>= j@@38 |l#0@@36|) (< j@@38 |l#1@@35|)) (ite (< j@@38 |l#2@@34|) (|Select__T@[Int]Vec_25263_| |l#3@@34| j@@38) (|Select__T@[Int]Vec_25263_| |l#4@@34| (+ j@@38 |l#5@@34|))) |l#6@@22|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1303|
 :pattern ( (|Select__T@[Int]Vec_25263_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@124 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124) (ite  (and (>= i@@124 |l#0@@37|) (< i@@124 |l#1@@36|)) (ite (< i@@124 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@124) (|Select__T@[Int]Int_| |l#4@@35| (- i@@124 |l#5@@35|))) |l#6@@23|))
 :qid |TreasuryComplianceScriptsbpl.73:19|
 :skolemid |1304|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@125 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125) (ite  (and (<= |l#0@@38| i@@125) (< i@@125 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@125) |l#4@@36|)) |l#5@@36|))
 :qid |TreasuryComplianceScriptsbpl.82:30|
 :skolemid |1305|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@39 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39) (ite  (and (>= j@@39 |l#0@@39|) (< j@@39 |l#1@@38|)) (ite (< j@@39 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@39) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@39 |l#5@@37|))) |l#6@@24|))
 :qid |TreasuryComplianceScriptsbpl.63:20|
 :skolemid |1306|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@61) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@61)))
 :qid |TreasuryComplianceScriptsbpl.154:29|
 :skolemid |1307|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61))
)))
; Valid

