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
(declare-datatypes ((T@$Memory_212959 0)) ((($Memory_212959 (|domain#$Memory_212959| |T@[Int]Bool|) (|contents#$Memory_212959| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_176524 0)) (((Vec_176524 (|v#Vec_176524| |T@[Int]#0|) (|l#Vec_176524| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_222713 0)) ((($Memory_222713 (|domain#$Memory_222713| |T@[Int]Bool|) (|contents#$Memory_222713| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_222642 0)) ((($Memory_222642 (|domain#$Memory_222642| |T@[Int]Bool|) (|contents#$Memory_222642| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_222399 0)) ((($Memory_222399 (|domain#$Memory_222399| |T@[Int]Bool|) (|contents#$Memory_222399| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_222328 0)) ((($Memory_222328 (|domain#$Memory_222328| |T@[Int]Bool|) (|contents#$Memory_222328| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_222257 0)) ((($Memory_222257 (|domain#$Memory_222257| |T@[Int]Bool|) (|contents#$Memory_222257| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_233560 0)) ((($Memory_233560 (|domain#$Memory_233560| |T@[Int]Bool|) (|contents#$Memory_233560| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_222089 0)) ((($Memory_222089 (|domain#$Memory_222089| |T@[Int]Bool|) (|contents#$Memory_222089| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_233815 0)) ((($Memory_233815 (|domain#$Memory_233815| |T@[Int]Bool|) (|contents#$Memory_233815| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_233915 0)) ((($Memory_233915 (|domain#$Memory_233915| |T@[Int]Bool|) (|contents#$Memory_233915| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_233341 0)) ((($Memory_233341 (|domain#$Memory_233341| |T@[Int]Bool|) (|contents#$Memory_233341| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_200740 0)) (((Vec_200740 (|v#Vec_200740| |T@[Int]$1_XDX_XDX|) (|l#Vec_200740| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_203420 0)) (((Vec_203420 (|v#Vec_203420| |T@[Int]$1_XUS_XUS|) (|l#Vec_203420| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_302419 0)) ((($Memory_302419 (|domain#$Memory_302419| |T@[Int]Bool|) (|contents#$Memory_302419| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_302132 0)) ((($Memory_302132 (|domain#$Memory_302132| |T@[Int]Bool|) (|contents#$Memory_302132| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_221921 0)) ((($Memory_221921 (|domain#$Memory_221921| |T@[Int]Bool|) (|contents#$Memory_221921| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_221682 0)) ((($Memory_221682 (|domain#$Memory_221682| |T@[Int]Bool|) (|contents#$Memory_221682| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_222571 0)) ((($Memory_222571 (|domain#$Memory_222571| |T@[Int]Bool|) (|contents#$Memory_222571| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_288113 0)) ((($Memory_288113 (|domain#$Memory_288113| |T@[Int]Bool|) (|contents#$Memory_288113| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_288049 0)) ((($Memory_288049 (|domain#$Memory_288049| |T@[Int]Bool|) (|contents#$Memory_288049| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_287985 0)) ((($Memory_287985 (|domain#$Memory_287985| |T@[Int]Bool|) (|contents#$Memory_287985| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_288480 0)) ((($Memory_288480 (|domain#$Memory_288480| |T@[Int]Bool|) (|contents#$Memory_288480| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_288393 0)) ((($Memory_288393 (|domain#$Memory_288393| |T@[Int]Bool|) (|contents#$Memory_288393| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_316315 0)) ((($Memory_316315 (|domain#$Memory_316315| |T@[Int]Bool|) (|contents#$Memory_316315| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_294307 0)) ((($Memory_294307 (|domain#$Memory_294307| |T@[Int]Bool|) (|contents#$Memory_294307| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_225975 0)) ((($Memory_225975 (|domain#$Memory_225975| |T@[Int]Bool|) (|contents#$Memory_225975| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_294226 0)) ((($Memory_294226 (|domain#$Memory_294226| |T@[Int]Bool|) (|contents#$Memory_294226| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_221753 0)) ((($Memory_221753 (|domain#$Memory_221753| |T@[Int]Bool|) (|contents#$Memory_221753| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_225915 0)) ((($Memory_225915 (|domain#$Memory_225915| |T@[Int]Bool|) (|contents#$Memory_225915| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_294145 0)) ((($Memory_294145 (|domain#$Memory_294145| |T@[Int]Bool|) (|contents#$Memory_294145| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_221992 0)) ((($Memory_221992 (|domain#$Memory_221992| |T@[Int]Bool|) (|contents#$Memory_221992| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_283606 0)) ((($Memory_283606 (|domain#$Memory_283606| |T@[Int]Bool|) (|contents#$Memory_283606| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_283519 0)) ((($Memory_283519 (|domain#$Memory_283519| |T@[Int]Bool|) (|contents#$Memory_283519| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_283432 0)) ((($Memory_283432 (|domain#$Memory_283432| |T@[Int]Bool|) (|contents#$Memory_283432| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_283345 0)) ((($Memory_283345 (|domain#$Memory_283345| |T@[Int]Bool|) (|contents#$Memory_283345| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_283258 0)) ((($Memory_283258 (|domain#$Memory_283258| |T@[Int]Bool|) (|contents#$Memory_283258| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_283171 0)) ((($Memory_283171 (|domain#$Memory_283171| |T@[Int]Bool|) (|contents#$Memory_283171| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_221443 0)) ((($Memory_221443 (|domain#$Memory_221443| |T@[Int]Bool|) (|contents#$Memory_221443| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_282098 0)) ((($Memory_282098 (|domain#$Memory_282098| |T@[Int]Bool|) (|contents#$Memory_282098| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_221284 0)) ((($Memory_221284 (|domain#$Memory_221284| |T@[Int]Bool|) (|contents#$Memory_221284| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_220875 0)) ((($Memory_220875 (|domain#$Memory_220875| |T@[Int]Bool|) (|contents#$Memory_220875| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_221191 0)) ((($Memory_221191 (|domain#$Memory_221191| |T@[Int]Bool|) (|contents#$Memory_221191| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_174678 0)) (((Vec_174678 (|v#Vec_174678| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_174678| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_174678) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_174639 0)) (((Vec_174639 (|v#Vec_174639| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_174639| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_174639) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_322192 0)) ((($Memory_322192 (|domain#$Memory_322192| |T@[Int]Bool|) (|contents#$Memory_322192| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_174639) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_57736 0)) (((Vec_57736 (|v#Vec_57736| |T@[Int]Int|) (|l#Vec_57736| Int) ) ) ))
(declare-sort |T@[Int]Vec_57736| 0)
(declare-datatypes ((T@Vec_174869 0)) (((Vec_174869 (|v#Vec_174869| |T@[Int]Vec_57736|) (|l#Vec_174869| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_174869) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_222173 0)) ((($Memory_222173 (|domain#$Memory_222173| |T@[Int]Bool|) (|contents#$Memory_222173| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_174869) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_221514 0)) ((($Memory_221514 (|domain#$Memory_221514| |T@[Int]Bool|) (|contents#$Memory_221514| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_57736) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_57736) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_222797 0)) ((($Memory_222797 (|domain#$Memory_222797| |T@[Int]Bool|) (|contents#$Memory_222797| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_57736) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_281965 0)) ((($Memory_281965 (|domain#$Memory_281965| |T@[Int]Bool|) (|contents#$Memory_281965| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_57736) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_233241 0)) ((($Memory_233241 (|domain#$Memory_233241| |T@[Int]Bool|) (|contents#$Memory_233241| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_57736) (|$base_url#$1_DualAttestation_Credential| T@Vec_57736) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_57736) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_225800 0)) ((($Memory_225800 (|domain#$Memory_225800| |T@[Int]Bool|) (|contents#$Memory_225800| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_175296 0)) (((Vec_175296 (|v#Vec_175296| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_175296| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_175296) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_233426 0)) ((($Memory_233426 (|domain#$Memory_233426| |T@[Int]Bool|) (|contents#$Memory_233426| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_175154 0)) (((Vec_175154 (|v#Vec_175154| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_175154| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_175154) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_294791 0)) ((($Memory_294791 (|domain#$Memory_294791| |T@[Int]Bool|) (|contents#$Memory_294791| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_175115 0)) (((Vec_175115 (|v#Vec_175115| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_175115| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_175115) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_294674 0)) ((($Memory_294674 (|domain#$Memory_294674| |T@[Int]Bool|) (|contents#$Memory_294674| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_175076 0)) (((Vec_175076 (|v#Vec_175076| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_175076| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_175076) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_294557 0)) ((($Memory_294557 (|domain#$Memory_294557| |T@[Int]Bool|) (|contents#$Memory_294557| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_57736) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_287684 0)) ((($Memory_287684 (|domain#$Memory_287684| |T@[Int]Bool|) (|contents#$Memory_287684| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_57736) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_221837 0)) ((($Memory_221837 (|domain#$Memory_221837| |T@[Int]Bool|) (|contents#$Memory_221837| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_57736) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_221598 0)) ((($Memory_221598 (|domain#$Memory_221598| |T@[Int]Bool|) (|contents#$Memory_221598| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_57736) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_57736) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_174600 0)) (((Vec_174600 (|v#Vec_174600| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_174600| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_174600) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_174812 0)) (((Vec_174812 (|v#Vec_174812| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_174812| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_174812) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_221370 0)) ((($Memory_221370 (|domain#$Memory_221370| |T@[Int]Bool|) (|contents#$Memory_221370| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_225533 0)) ((($Memory_225533 (|domain#$Memory_225533| |T@[Int]Bool|) (|contents#$Memory_225533| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_225433 0)) ((($Memory_225433 (|domain#$Memory_225433| |T@[Int]Bool|) (|contents#$Memory_225433| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_221004 0)) ((($Memory_221004 (|domain#$Memory_221004| |T@[Int]Bool|) (|contents#$Memory_221004| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_220322 0)) ((($Memory_220322 (|domain#$Memory_220322| |T@[Int]Bool|) (|contents#$Memory_220322| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_57736) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_57736) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_57736) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_57736) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_57736) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_57736) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_57736) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_57736) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_57736) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_57736) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_174514 0)) (((Multiset_174514 (|v#Multiset_174514| |T@[$EventRep]Int|) (|l#Multiset_174514| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_174514| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_174514|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_420065 0)) ((($Mutation_420065 (|l#$Mutation_420065| T@$Location) (|p#$Mutation_420065| T@Vec_57736) (|v#$Mutation_420065| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_420020 0)) ((($Mutation_420020 (|l#$Mutation_420020| T@$Location) (|p#$Mutation_420020| T@Vec_57736) (|v#$Mutation_420020| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_307528 0)) ((($Mutation_307528 (|l#$Mutation_307528| T@$Location) (|p#$Mutation_307528| T@Vec_57736) (|v#$Mutation_307528| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_73543 0)) ((($Mutation_73543 (|l#$Mutation_73543| T@$Location) (|p#$Mutation_73543| T@Vec_57736) (|v#$Mutation_73543| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_300285 0)) ((($Mutation_300285 (|l#$Mutation_300285| T@$Location) (|p#$Mutation_300285| T@Vec_57736) (|v#$Mutation_300285| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_286256 0)) ((($Mutation_286256 (|l#$Mutation_286256| T@$Location) (|p#$Mutation_286256| T@Vec_57736) (|v#$Mutation_286256| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_220817 0)) ((($Mutation_220817 (|l#$Mutation_220817| T@$Location) (|p#$Mutation_220817| T@Vec_57736) (|v#$Mutation_220817| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_213590 0)) ((($Mutation_213590 (|l#$Mutation_213590| T@$Location) (|p#$Mutation_213590| T@Vec_57736) (|v#$Mutation_213590| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_57736) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_207847 0)) ((($Mutation_207847 (|l#$Mutation_207847| T@$Location) (|p#$Mutation_207847| T@Vec_57736) (|v#$Mutation_207847| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$Mutation_206759 0)) ((($Mutation_206759 (|l#$Mutation_206759| T@$Location) (|p#$Mutation_206759| T@Vec_57736) (|v#$Mutation_206759| T@Vec_174869) ) ) ))
(declare-datatypes ((T@$Mutation_205050 0)) ((($Mutation_205050 (|l#$Mutation_205050| T@$Location) (|p#$Mutation_205050| T@Vec_57736) (|v#$Mutation_205050| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_204063 0)) ((($Mutation_204063 (|l#$Mutation_204063| T@$Location) (|p#$Mutation_204063| T@Vec_57736) (|v#$Mutation_204063| T@Vec_203420) ) ) ))
(declare-datatypes ((T@$Mutation_202370 0)) ((($Mutation_202370 (|l#$Mutation_202370| T@$Location) (|p#$Mutation_202370| T@Vec_57736) (|v#$Mutation_202370| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_201383 0)) ((($Mutation_201383 (|l#$Mutation_201383| T@$Location) (|p#$Mutation_201383| T@Vec_57736) (|v#$Mutation_201383| T@Vec_200740) ) ) ))
(declare-datatypes ((T@$Mutation_199690 0)) ((($Mutation_199690 (|l#$Mutation_199690| T@$Location) (|p#$Mutation_199690| T@Vec_57736) (|v#$Mutation_199690| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_198703 0)) ((($Mutation_198703 (|l#$Mutation_198703| T@$Location) (|p#$Mutation_198703| T@Vec_57736) (|v#$Mutation_198703| T@Vec_174600) ) ) ))
(declare-datatypes ((T@$Mutation_197048 0)) ((($Mutation_197048 (|l#$Mutation_197048| T@$Location) (|p#$Mutation_197048| T@Vec_57736) (|v#$Mutation_197048| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_196061 0)) ((($Mutation_196061 (|l#$Mutation_196061| T@$Location) (|p#$Mutation_196061| T@Vec_57736) (|v#$Mutation_196061| T@Vec_175296) ) ) ))
(declare-datatypes ((T@$Mutation_194383 0)) ((($Mutation_194383 (|l#$Mutation_194383| T@$Location) (|p#$Mutation_194383| T@Vec_57736) (|v#$Mutation_194383| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_193396 0)) ((($Mutation_193396 (|l#$Mutation_193396| T@$Location) (|p#$Mutation_193396| T@Vec_57736) (|v#$Mutation_193396| T@Vec_175076) ) ) ))
(declare-datatypes ((T@$Mutation_191687 0)) ((($Mutation_191687 (|l#$Mutation_191687| T@$Location) (|p#$Mutation_191687| T@Vec_57736) (|v#$Mutation_191687| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_190700 0)) ((($Mutation_190700 (|l#$Mutation_190700| T@$Location) (|p#$Mutation_190700| T@Vec_57736) (|v#$Mutation_190700| T@Vec_175115) ) ) ))
(declare-datatypes ((T@$Mutation_188991 0)) ((($Mutation_188991 (|l#$Mutation_188991| T@$Location) (|p#$Mutation_188991| T@Vec_57736) (|v#$Mutation_188991| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_188004 0)) ((($Mutation_188004 (|l#$Mutation_188004| T@$Location) (|p#$Mutation_188004| T@Vec_57736) (|v#$Mutation_188004| T@Vec_175154) ) ) ))
(declare-datatypes ((T@$Mutation_186295 0)) ((($Mutation_186295 (|l#$Mutation_186295| T@$Location) (|p#$Mutation_186295| T@Vec_57736) (|v#$Mutation_186295| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_185308 0)) ((($Mutation_185308 (|l#$Mutation_185308| T@$Location) (|p#$Mutation_185308| T@Vec_57736) (|v#$Mutation_185308| T@Vec_174812) ) ) ))
(declare-datatypes ((T@$Mutation_183508 0)) ((($Mutation_183508 (|l#$Mutation_183508| T@$Location) (|p#$Mutation_183508| T@Vec_57736) (|v#$Mutation_183508| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_182521 0)) ((($Mutation_182521 (|l#$Mutation_182521| T@$Location) (|p#$Mutation_182521| T@Vec_57736) (|v#$Mutation_182521| T@Vec_174678) ) ) ))
(declare-datatypes ((T@$Mutation_180856 0)) ((($Mutation_180856 (|l#$Mutation_180856| T@$Location) (|p#$Mutation_180856| T@Vec_57736) (|v#$Mutation_180856| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_179869 0)) ((($Mutation_179869 (|l#$Mutation_179869| T@$Location) (|p#$Mutation_179869| T@Vec_57736) (|v#$Mutation_179869| T@Vec_174639) ) ) ))
(declare-datatypes ((T@$Mutation_178156 0)) ((($Mutation_178156 (|l#$Mutation_178156| T@$Location) (|p#$Mutation_178156| T@Vec_57736) (|v#$Mutation_178156| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_177169 0)) ((($Mutation_177169 (|l#$Mutation_177169| T@$Location) (|p#$Mutation_177169| T@Vec_57736) (|v#$Mutation_177169| T@Vec_176524) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_176524 T@Vec_176524) Bool)
(declare-fun InRangeVec_157242 (T@Vec_176524 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_176524) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_176524 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_174639 T@Vec_174639) Bool)
(declare-fun InRangeVec_157443 (T@Vec_174639 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_174639) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_174639 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_174678 T@Vec_174678) Bool)
(declare-fun InRangeVec_157644 (T@Vec_174678 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_174678) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_174678 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_174812 T@Vec_174812) Bool)
(declare-fun InRangeVec_157845 (T@Vec_174812 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_57736 T@Vec_57736) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_174812) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_174812 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_175154 T@Vec_175154) Bool)
(declare-fun InRangeVec_158046 (T@Vec_175154 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_175154) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_175154 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_175115 T@Vec_175115) Bool)
(declare-fun InRangeVec_158247 (T@Vec_175115 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_175115) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_175115 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_175076 T@Vec_175076) Bool)
(declare-fun InRangeVec_158448 (T@Vec_175076 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_175076) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_175076 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_175296 T@Vec_175296) Bool)
(declare-fun InRangeVec_158649 (T@Vec_175296 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_175296) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_175296 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_174600 T@Vec_174600) Bool)
(declare-fun InRangeVec_158850 (T@Vec_174600 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_174600) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_174600 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_200740 T@Vec_200740) Bool)
(declare-fun InRangeVec_159051 (T@Vec_200740 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_200740) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_200740 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_203420 T@Vec_203420) Bool)
(declare-fun InRangeVec_159252 (T@Vec_203420 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_203420) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_203420 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_174869 T@Vec_174869) Bool)
(declare-fun InRangeVec_206182 (T@Vec_174869 Int) Bool)
(declare-fun |Select__T@[Int]Vec_57736_| (|T@[Int]Vec_57736| Int) T@Vec_57736)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_174869) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_57736) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_174869 T@Vec_57736) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_57736 T@Vec_57736) Bool)
(declare-fun InRangeVec_16728 (T@Vec_57736 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_57736) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_57736 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_57736 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_57736) T@Vec_57736)
(declare-fun $1_Hash_sha3 (T@Vec_57736) T@Vec_57736)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_57736) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_57736 T@Vec_57736 T@Vec_57736) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_174514_| (|T@[$1_Event_EventHandle]Multiset_174514| T@$1_Event_EventHandle) T@Multiset_174514)
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
(declare-fun IndexOfVec_57736 (T@Vec_57736 Int) Int)
(declare-fun IndexOfVec_174600 (T@Vec_174600 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_174639 (T@Vec_174639 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_174678 (T@Vec_174678 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_174812 (T@Vec_174812 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_174869 (T@Vec_174869 T@Vec_57736) Int)
(declare-fun IndexOfVec_175076 (T@Vec_175076 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_175115 (T@Vec_175115 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_175154 (T@Vec_175154 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_175296 (T@Vec_175296 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_176524 (T@Vec_176524 |T@#0|) Int)
(declare-fun IndexOfVec_200740 (T@Vec_200740 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_203420 (T@Vec_203420 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_174514| |T@[$1_Event_EventHandle]Multiset_174514|) |T@[$1_Event_EventHandle]Multiset_174514|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_57736| |T@[Int]Vec_57736| Int T@Vec_57736) |T@[Int]Vec_57736|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_57736| Int Int T@Vec_57736) |T@[Int]Vec_57736|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_57736| |T@[Int]Vec_57736| Int T@Vec_57736) |T@[Int]Vec_57736|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Rolesbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Rolesbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Rolesbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Rolesbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Rolesbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Rolesbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Rolesbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Rolesbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_176524) (v2 T@Vec_176524) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_176524| v1) (|l#Vec_176524| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_157242 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_176524| v2) i@@0)))
 :qid |Rolesbpl.615:13|
 :skolemid |17|
))))
 :qid |Rolesbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_176524) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_176524| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_157242 v@@4 i@@1) true)
 :qid |Rolesbpl.621:13|
 :skolemid |19|
))))
 :qid |Rolesbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_176524) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_157242 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@5) i@@3) e))
 :qid |Rolesbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_157242 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@5) j) e)))
 :qid |Rolesbpl.634:17|
 :skolemid |22|
)))))
 :qid |Rolesbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_174639) (v2@@0 T@Vec_174639) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_174639| v1@@0) (|l#Vec_174639| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_157443 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v2@@0) i@@4)))
 :qid |Rolesbpl.796:13|
 :skolemid |24|
))))
 :qid |Rolesbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_174639) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_174639| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_157443 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@6) i@@5)))
 :qid |Rolesbpl.802:13|
 :skolemid |26|
))))
 :qid |Rolesbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_174639) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_157443 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@7) i@@7) e@@0))
 :qid |Rolesbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_157443 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@7) j@@0) e@@0)))
 :qid |Rolesbpl.815:17|
 :skolemid |29|
)))))
 :qid |Rolesbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_174678) (v2@@1 T@Vec_174678) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_174678| v1@@1) (|l#Vec_174678| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_157644 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v2@@1) i@@8)))
 :qid |Rolesbpl.977:13|
 :skolemid |31|
))))
 :qid |Rolesbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_174678) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_174678| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_157644 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@8) i@@9)))
 :qid |Rolesbpl.983:13|
 :skolemid |33|
))))
 :qid |Rolesbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_174678) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_157644 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@9) i@@11) e@@1))
 :qid |Rolesbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_157644 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@9) j@@1) e@@1)))
 :qid |Rolesbpl.996:17|
 :skolemid |36|
)))))
 :qid |Rolesbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_174812) (v2@@2 T@Vec_174812) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_174812| v1@@2) (|l#Vec_174812| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_157845 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))))
 :qid |Rolesbpl.1158:13|
 :skolemid |38|
))))
 :qid |Rolesbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_174812) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_174812| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_157845 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@10) i@@13)))
 :qid |Rolesbpl.1164:13|
 :skolemid |40|
))))
 :qid |Rolesbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_174812) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_157845 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |Rolesbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_157845 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |Rolesbpl.1177:17|
 :skolemid |43|
)))))
 :qid |Rolesbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_175154) (v2@@3 T@Vec_175154) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_175154| v1@@3) (|l#Vec_175154| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_158046 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v2@@3) i@@16)))))
 :qid |Rolesbpl.1339:13|
 :skolemid |45|
))))
 :qid |Rolesbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_175154) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_175154| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_158046 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@12) i@@17)))
 :qid |Rolesbpl.1345:13|
 :skolemid |47|
))))
 :qid |Rolesbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_175154) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_158046 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |Rolesbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_158046 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |Rolesbpl.1358:17|
 :skolemid |50|
)))))
 :qid |Rolesbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_175115) (v2@@4 T@Vec_175115) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_175115| v1@@4) (|l#Vec_175115| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_158247 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v2@@4) i@@20)))))
 :qid |Rolesbpl.1520:13|
 :skolemid |52|
))))
 :qid |Rolesbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_175115) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_175115| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_158247 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@14) i@@21)))
 :qid |Rolesbpl.1526:13|
 :skolemid |54|
))))
 :qid |Rolesbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_175115) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_158247 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |Rolesbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_158247 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |Rolesbpl.1539:17|
 :skolemid |57|
)))))
 :qid |Rolesbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_175076) (v2@@5 T@Vec_175076) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_175076| v1@@5) (|l#Vec_175076| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_158448 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v2@@5) i@@24)))))
 :qid |Rolesbpl.1701:13|
 :skolemid |59|
))))
 :qid |Rolesbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_175076) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_175076| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_158448 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@16) i@@25)))
 :qid |Rolesbpl.1707:13|
 :skolemid |61|
))))
 :qid |Rolesbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_175076) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_158448 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |Rolesbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_158448 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |Rolesbpl.1720:17|
 :skolemid |64|
)))))
 :qid |Rolesbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_175296) (v2@@6 T@Vec_175296) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_175296| v1@@6) (|l#Vec_175296| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_158649 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v2@@6) i@@28))))
 :qid |Rolesbpl.1882:13|
 :skolemid |66|
))))
 :qid |Rolesbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_175296) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_175296| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_158649 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@18) i@@29)))
 :qid |Rolesbpl.1888:13|
 :skolemid |68|
))))
 :qid |Rolesbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_175296) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_158649 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |Rolesbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_158649 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |Rolesbpl.1901:17|
 :skolemid |71|
)))))
 :qid |Rolesbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_174600) (v2@@7 T@Vec_174600) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_174600| v1@@7) (|l#Vec_174600| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_158850 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v2@@7) i@@32)))))
 :qid |Rolesbpl.2063:13|
 :skolemid |73|
))))
 :qid |Rolesbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_174600) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_174600| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_158850 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@20) i@@33)))
 :qid |Rolesbpl.2069:13|
 :skolemid |75|
))))
 :qid |Rolesbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_174600) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_158850 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |Rolesbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_158850 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |Rolesbpl.2082:17|
 :skolemid |78|
)))))
 :qid |Rolesbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_200740) (v2@@8 T@Vec_200740) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_200740| v1@@8) (|l#Vec_200740| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_159051 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v2@@8) i@@36)))
 :qid |Rolesbpl.2244:13|
 :skolemid |80|
))))
 :qid |Rolesbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_200740) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_200740| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_159051 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@22) i@@37)))
 :qid |Rolesbpl.2250:13|
 :skolemid |82|
))))
 :qid |Rolesbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_200740) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_159051 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@23) i@@39) e@@8))
 :qid |Rolesbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_159051 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@23) j@@8) e@@8)))
 :qid |Rolesbpl.2263:17|
 :skolemid |85|
)))))
 :qid |Rolesbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_203420) (v2@@9 T@Vec_203420) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_203420| v1@@9) (|l#Vec_203420| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_159252 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v2@@9) i@@40)))
 :qid |Rolesbpl.2425:13|
 :skolemid |87|
))))
 :qid |Rolesbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_203420) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_203420| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_159252 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@24) i@@41)))
 :qid |Rolesbpl.2431:13|
 :skolemid |89|
))))
 :qid |Rolesbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_203420) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_159252 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@25) i@@43) e@@9))
 :qid |Rolesbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_159252 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@25) j@@9) e@@9)))
 :qid |Rolesbpl.2444:17|
 :skolemid |92|
)))))
 :qid |Rolesbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_174869) (v2@@10 T@Vec_174869) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_174869| v1@@10) (|l#Vec_174869| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_206182 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v1@@10) i@@44) (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v2@@10) i@@44)))
 :qid |Rolesbpl.2606:13|
 :skolemid |94|
))))
 :qid |Rolesbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_174869) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_174869| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_206182 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@26) i@@45)))
 :qid |Rolesbpl.2612:13|
 :skolemid |96|
))))
 :qid |Rolesbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_174869) (e@@10 T@Vec_57736) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_206182 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@27) i@@47) e@@10))
 :qid |Rolesbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_206182 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@27) j@@10) e@@10)))
 :qid |Rolesbpl.2625:17|
 :skolemid |99|
)))))
 :qid |Rolesbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_57736) (v2@@11 T@Vec_57736) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_57736| v1@@11) (|l#Vec_57736| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_57736| v2@@11) i@@48)))
 :qid |Rolesbpl.2787:13|
 :skolemid |101|
))))
 :qid |Rolesbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_57736) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_57736| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_57736| v@@28) i@@49)))
 :qid |Rolesbpl.2793:13|
 :skolemid |103|
))))
 :qid |Rolesbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_57736) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@29) i@@51) e@@11))
 :qid |Rolesbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@29) j@@11) e@@11)))
 :qid |Rolesbpl.2806:17|
 :skolemid |106|
)))))
 :qid |Rolesbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_57736) (v2@@12 T@Vec_57736) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_57736| v1@@12) (|l#Vec_57736| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_57736| v2@@12) i@@52)))
 :qid |Rolesbpl.2968:13|
 :skolemid |108|
))))
 :qid |Rolesbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_57736) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_57736| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_57736| v@@30) i@@53)))
 :qid |Rolesbpl.2974:13|
 :skolemid |110|
))))
 :qid |Rolesbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_57736) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@31) i@@55) e@@12))
 :qid |Rolesbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@31) j@@12) e@@12)))
 :qid |Rolesbpl.2987:17|
 :skolemid |113|
)))))
 :qid |Rolesbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_57736) (v2@@13 T@Vec_57736) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |Rolesbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_57736) (v2@@14 T@Vec_57736) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |Rolesbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_57736) (k2 T@Vec_57736) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Rolesbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_57736) (s2 T@Vec_57736) (k1@@0 T@Vec_57736) (k2@@0 T@Vec_57736) (m1 T@Vec_57736) (m2 T@Vec_57736) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Rolesbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_174514| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| stream) v@@32) 0)
 :qid |Rolesbpl.159:13|
 :skolemid |4|
))))
 :qid |Rolesbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Rolesbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |Rolesbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Rolesbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |Rolesbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Rolesbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |Rolesbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Rolesbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |Rolesbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Rolesbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |Rolesbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Rolesbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |Rolesbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Rolesbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |Rolesbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Rolesbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |Rolesbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Rolesbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |Rolesbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |Rolesbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |Rolesbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |Rolesbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |Rolesbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |Rolesbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |Rolesbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |Rolesbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |Rolesbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |Rolesbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |Rolesbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |Rolesbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |Rolesbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |Rolesbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |Rolesbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |Rolesbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |Rolesbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |Rolesbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |Rolesbpl.5153:36|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |Rolesbpl.14202:71|
 :skolemid |843|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |Rolesbpl.14571:46|
 :skolemid |844|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |Rolesbpl.14583:64|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |Rolesbpl.14595:75|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |Rolesbpl.14607:72|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |Rolesbpl.14640:55|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |Rolesbpl.14663:46|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |Rolesbpl.14945:49|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |Rolesbpl.15030:71|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |Rolesbpl.15043:91|
 :skolemid |852|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |Rolesbpl.15056:113|
 :skolemid |853|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |Rolesbpl.15069:89|
 :skolemid |854|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |Rolesbpl.15082:75|
 :skolemid |855|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |Rolesbpl.15095:73|
 :skolemid |856|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |Rolesbpl.15115:48|
 :skolemid |857|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |Rolesbpl.15132:57|
 :skolemid |858|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |Rolesbpl.15146:83|
 :skolemid |859|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |Rolesbpl.15160:103|
 :skolemid |860|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |Rolesbpl.15174:125|
 :skolemid |861|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |Rolesbpl.15188:101|
 :skolemid |862|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |Rolesbpl.15202:87|
 :skolemid |863|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |Rolesbpl.15216:85|
 :skolemid |864|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |Rolesbpl.15230:48|
 :skolemid |865|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |Rolesbpl.15251:45|
 :skolemid |866|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |Rolesbpl.15265:51|
 :skolemid |867|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |Rolesbpl.15288:48|
 :skolemid |868|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |Rolesbpl.15582:49|
 :skolemid |869|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |Rolesbpl.15595:65|
 :skolemid |870|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |Rolesbpl.16136:45|
 :skolemid |871|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |Rolesbpl.16149:45|
 :skolemid |872|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |Rolesbpl.16162:37|
 :skolemid |873|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |Rolesbpl.16175:55|
 :skolemid |874|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |Rolesbpl.16189:55|
 :skolemid |875|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |Rolesbpl.16209:38|
 :skolemid |876|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |Rolesbpl.16231:44|
 :skolemid |877|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |Rolesbpl.16283:53|
 :skolemid |878|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |Rolesbpl.16356:53|
 :skolemid |879|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |Rolesbpl.16429:45|
 :skolemid |880|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |Rolesbpl.16466:55|
 :skolemid |881|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |Rolesbpl.16480:55|
 :skolemid |882|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |Rolesbpl.16494:47|
 :skolemid |883|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |Rolesbpl.16511:38|
 :skolemid |884|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |Rolesbpl.16525:48|
 :skolemid |885|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |Rolesbpl.16539:48|
 :skolemid |886|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |Rolesbpl.16553:40|
 :skolemid |887|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |Rolesbpl.16573:41|
 :skolemid |888|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |Rolesbpl.16589:53|
 :skolemid |889|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |Rolesbpl.16602:53|
 :skolemid |890|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |Rolesbpl.16615:45|
 :skolemid |891|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |Rolesbpl.16631:60|
 :skolemid |892|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |Rolesbpl.16648:60|
 :skolemid |893|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |Rolesbpl.16665:52|
 :skolemid |894|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |Rolesbpl.16682:57|
 :skolemid |895|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |Rolesbpl.18855:68|
 :skolemid |896|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |Rolesbpl.18877:66|
 :skolemid |897|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |Rolesbpl.18903:66|
 :skolemid |898|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))))
 :qid |Rolesbpl.18932:56|
 :skolemid |899|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))))
 :qid |Rolesbpl.18962:56|
 :skolemid |900|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@59) true)
 :qid |Rolesbpl.19396:31|
 :skolemid |901|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@60) true)
 :qid |Rolesbpl.19726:31|
 :skolemid |902|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@60))
)))
(assert (forall ((s@@61 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@61)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@61)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@61))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@61))))
 :qid |Rolesbpl.19745:35|
 :skolemid |903|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@62)))
 :qid |Rolesbpl.20159:45|
 :skolemid |904|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@63))))
 :qid |Rolesbpl.20177:50|
 :skolemid |905|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@64)))
 :qid |Rolesbpl.20193:52|
 :skolemid |906|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@65)))
 :qid |Rolesbpl.20206:46|
 :skolemid |907|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@66) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@66)))
 :qid |Rolesbpl.20587:38|
 :skolemid |908|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@67) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@67)))
 :qid |Rolesbpl.20601:39|
 :skolemid |909|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@67))
)))
(assert (forall ((s@@68 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68))))
 :qid |Rolesbpl.21288:65|
 :skolemid |910|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@69))))
 :qid |Rolesbpl.21661:60|
 :skolemid |911|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70))))
 :qid |Rolesbpl.21678:66|
 :skolemid |912|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@71)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@71))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@71))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@71))))
 :qid |Rolesbpl.21707:50|
 :skolemid |913|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@72) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@72)))
 :qid |Rolesbpl.21730:45|
 :skolemid |914|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@73)) true))
 :qid |Rolesbpl.22303:87|
 :skolemid |915|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@74)))
 :qid |Rolesbpl.22504:47|
 :skolemid |916|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@75)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@75))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@75))))
 :qid |Rolesbpl.22523:58|
 :skolemid |917|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@76) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@76)))
 :qid |Rolesbpl.22539:39|
 :skolemid |918|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@77))))
 :qid |Rolesbpl.22561:58|
 :skolemid |919|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78))))
 :qid |Rolesbpl.22578:58|
 :skolemid |920|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79) true)
 :qid |Rolesbpl.22593:51|
 :skolemid |921|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80))))
 :qid |Rolesbpl.22610:60|
 :skolemid |922|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@81)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@81))))
 :qid |Rolesbpl.22896:47|
 :skolemid |923|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@82))))
 :qid |Rolesbpl.22922:63|
 :skolemid |924|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@83)))
 :qid |Rolesbpl.22937:57|
 :skolemid |925|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@84)))
 :qid |Rolesbpl.22950:55|
 :skolemid |926|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@85)))
 :qid |Rolesbpl.22964:55|
 :skolemid |927|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@86)))
 :qid |Rolesbpl.22978:47|
 :skolemid |928|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@87)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@87))))
 :qid |Rolesbpl.22995:54|
 :skolemid |929|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@88)))
 :qid |Rolesbpl.23009:55|
 :skolemid |930|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@89)))
 :qid |Rolesbpl.23022:57|
 :skolemid |931|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@90))))
 :qid |Rolesbpl.23044:56|
 :skolemid |932|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@91))))
 :qid |Rolesbpl.23071:52|
 :skolemid |933|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@92)))
 :qid |Rolesbpl.23089:54|
 :skolemid |934|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@93)))
 :qid |Rolesbpl.40113:55|
 :skolemid |1882|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@94)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@94))))
 :qid |Rolesbpl.40134:47|
 :skolemid |1883|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@95)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@95))))
 :qid |Rolesbpl.40158:47|
 :skolemid |1884|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@96)))
 :qid |Rolesbpl.40392:63|
 :skolemid |1885|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |Rolesbpl.40727:49|
 :skolemid |1886|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |Rolesbpl.40769:49|
 :skolemid |1887|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |Rolesbpl.40798:48|
 :skolemid |1888|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |Rolesbpl.41083:47|
 :skolemid |1889|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@33 T@Vec_176524) (i@@56 Int) ) (! (= (InRangeVec_157242 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_176524| v@@33))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157242 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_174639) (i@@57 Int) ) (! (= (InRangeVec_157443 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_174639| v@@34))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157443 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_174678) (i@@58 Int) ) (! (= (InRangeVec_157644 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_174678| v@@35))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157644 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_174812) (i@@59 Int) ) (! (= (InRangeVec_157845 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_174812| v@@36))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157845 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_175154) (i@@60 Int) ) (! (= (InRangeVec_158046 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_175154| v@@37))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158046 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_175115) (i@@61 Int) ) (! (= (InRangeVec_158247 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_175115| v@@38))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158247 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_175076) (i@@62 Int) ) (! (= (InRangeVec_158448 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_175076| v@@39))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158448 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_175296) (i@@63 Int) ) (! (= (InRangeVec_158649 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_175296| v@@40))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158649 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_174600) (i@@64 Int) ) (! (= (InRangeVec_158850 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_174600| v@@41))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158850 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_200740) (i@@65 Int) ) (! (= (InRangeVec_159051 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_200740| v@@42))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_159051 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_203420) (i@@66 Int) ) (! (= (InRangeVec_159252 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_203420| v@@43))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_159252 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_174869) (i@@67 Int) ) (! (= (InRangeVec_206182 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_174869| v@@44))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_206182 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_57736) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_57736| v@@45))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_57736) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_57736 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@46) i@@70) e@@13))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@46) j@@13) e@@13)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_57736 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_174600) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_174600 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_158850 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@47) i@@72) e@@14))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_158850 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@47) j@@14) e@@14)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174600 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_174639) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_174639 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_157443 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@48) i@@74) e@@15))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_157443 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@48) j@@15) e@@15)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174639 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_174678) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_174678 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_157644 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@49) i@@76) e@@16))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_157644 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@49) j@@16) e@@16)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174678 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_174812) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_174812 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_157845 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@50) i@@78) e@@17))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_157845 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@50) j@@17) e@@17)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174812 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_174869) (e@@18 T@Vec_57736) ) (! (let ((i@@79 (IndexOfVec_174869 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_206182 v@@51 i@@80) (= (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@51) i@@80) e@@18))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_206182 v@@51 i@@79) (= (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@51) j@@18) e@@18)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174869 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_175076) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_175076 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_158448 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@52) i@@82) e@@19))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_158448 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@52) j@@19) e@@19)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175076 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_175115) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_175115 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_158247 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@53) i@@84) e@@20))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_158247 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@53) j@@20) e@@20)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175115 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_175154) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_175154 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_158046 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@54) i@@86) e@@21))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_158046 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@54) j@@21) e@@21)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175154 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_175296) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_175296 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_158649 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@55) i@@88) e@@22))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_158649 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@55) j@@22) e@@22)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175296 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_176524) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_176524 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_157242 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@56) i@@90) e@@23))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_157242 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@56) j@@23) e@@23)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_176524 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_200740) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_200740 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_159051 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@57) i@@92) e@@24))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_159051 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@57) j@@24) e@@24)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_200740 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_203420) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_203420 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_159252 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@58) i@@94) e@@25))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_159252 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@58) j@@25) e@@25)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203420 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |Rolesbpl.275:54|
 :skolemid |1980|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_174514|) (|l#1| |T@[$1_Event_EventHandle]Multiset_174514|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#1| handle@@0))))
(Multiset_174514 (|lambda#42| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#0@@0| handle@@0)) (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Rolesbpl.3321:13|
 :skolemid |1981|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |Rolesbpl.73:19|
 :skolemid |1982|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |Rolesbpl.82:30|
 :skolemid |1983|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |Rolesbpl.63:20|
 :skolemid |1984|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |Rolesbpl.73:19|
 :skolemid |1985|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |Rolesbpl.82:30|
 :skolemid |1986|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |Rolesbpl.63:20|
 :skolemid |1987|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |Rolesbpl.73:19|
 :skolemid |1988|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |Rolesbpl.82:30|
 :skolemid |1989|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |Rolesbpl.63:20|
 :skolemid |1990|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |Rolesbpl.73:19|
 :skolemid |1991|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |Rolesbpl.82:30|
 :skolemid |1992|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |Rolesbpl.63:20|
 :skolemid |1993|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |Rolesbpl.73:19|
 :skolemid |1994|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |Rolesbpl.82:30|
 :skolemid |1995|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |Rolesbpl.63:20|
 :skolemid |1996|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |Rolesbpl.73:19|
 :skolemid |1997|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |Rolesbpl.82:30|
 :skolemid |1998|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |Rolesbpl.63:20|
 :skolemid |1999|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |Rolesbpl.73:19|
 :skolemid |2000|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |Rolesbpl.82:30|
 :skolemid |2001|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |Rolesbpl.63:20|
 :skolemid |2002|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |Rolesbpl.73:19|
 :skolemid |2003|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |Rolesbpl.82:30|
 :skolemid |2004|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |Rolesbpl.63:20|
 :skolemid |2005|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |Rolesbpl.73:19|
 :skolemid |2006|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |Rolesbpl.82:30|
 :skolemid |2007|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |Rolesbpl.63:20|
 :skolemid |2008|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |Rolesbpl.73:19|
 :skolemid |2009|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |Rolesbpl.82:30|
 :skolemid |2010|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |Rolesbpl.63:20|
 :skolemid |2011|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |Rolesbpl.73:19|
 :skolemid |2012|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |Rolesbpl.82:30|
 :skolemid |2013|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |Rolesbpl.63:20|
 :skolemid |2014|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_57736|) (|l#4@@32| |T@[Int]Vec_57736|) (|l#5@@32| Int) (|l#6@@21| T@Vec_57736) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_57736_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_57736_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_57736_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |Rolesbpl.73:19|
 :skolemid |2015|
 :pattern ( (|Select__T@[Int]Vec_57736_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_57736|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_57736) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_57736_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_57736_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |Rolesbpl.82:30|
 :skolemid |2016|
 :pattern ( (|Select__T@[Int]Vec_57736_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_57736|) (|l#4@@34| |T@[Int]Vec_57736|) (|l#5@@34| Int) (|l#6@@22| T@Vec_57736) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_57736_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_57736_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_57736_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |Rolesbpl.63:20|
 :skolemid |2017|
 :pattern ( (|Select__T@[Int]Vec_57736_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |Rolesbpl.73:19|
 :skolemid |2018|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |Rolesbpl.82:30|
 :skolemid |2019|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |Rolesbpl.63:20|
 :skolemid |2020|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |Rolesbpl.154:29|
 :skolemid |2021|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_221004)
(declare-fun _$t1 () Int)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_233815)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_233915)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_220322)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_233426)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_287684)
(declare-fun _$t4 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_225915)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_221598)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_225975)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_221837)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_222399)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_222571)
(declare-fun _$t2 () T@Vec_57736)
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
(declare-fun $1_VASPDomain_VASPDomains_$memory@3 () T@$Memory_233426)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_221004)
(declare-fun $t32 () T@$1_Event_EventHandle)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_222571)
(declare-fun $t33 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_233241)
(declare-fun $1_VASP_ParentVASP_$memory@3 () T@$Memory_233815)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@3| () T@$Memory_316315)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| () T@$Memory_225915)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| () T@$Memory_225975)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_233241)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_316315)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_174514_| (|T@[$1_Event_EventHandle]Multiset_174514| T@$1_Event_EventHandle T@Multiset_174514) |T@[$1_Event_EventHandle]Multiset_174514|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_174514|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_174514)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|Store__T@[$1_Event_EventHandle]Multiset_174514_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_174514|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_174514)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|Store__T@[$1_Event_EventHandle]Multiset_174514_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_174514_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| () T@$Memory_225975)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| () T@$Memory_225915)
(declare-fun $abort_flag@42 () Bool)
(declare-fun $abort_code@37 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_225915)
(declare-fun $abort_flag@61 () Bool)
(declare-fun $abort_code@53 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_225975)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| () T@$Memory_225915)
(declare-fun $abort_flag@24 () Bool)
(declare-fun $abort_code@22 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| () T@$Memory_225975)
(declare-fun $abort_code@55 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| () T@$Memory_225915)
(declare-fun $abort_flag@63 () Bool)
(declare-fun $abort_code@54 () Int)
(declare-fun $abort_flag@62 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| () T@$Memory_225975)
(declare-fun $abort_flag@60 () Bool)
(declare-fun $abort_code@52 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_225975)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_225975)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_225975)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@51 () Int)
(declare-fun $abort_flag@59 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$6$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| () Int)
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
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun inline$$Not$5$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t12@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t10@1| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| () Int)
(declare-fun $abort_flag@41 () Bool)
(declare-fun $abort_code@36 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_225915)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_225915)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_225915)
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
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t7@1| () Bool)
(declare-fun $abort_flag@23 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@1| () T@$Memory_316315)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@2| () T@$Memory_316315)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_316315)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int |T@$1_DiemAccount_Balance'#0'|) |T@[Int]$1_DiemAccount_Balance'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t23@1| () |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@20 () Int)
(declare-fun $abort_flag@22 () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t3@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| () Int)
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
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@0| () Int)
(declare-fun $t26 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t27 () T@$1_Event_EventHandle)
(declare-fun $t28 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_222399)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t22 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t29 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t30 () T@$1_Event_EventHandle)
(declare-fun $t31 () Int)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_222571)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_222571)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_222399)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_222399)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_212959)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_212959)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_212959)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_233241)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_233241)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t23 () Int)
(declare-fun $t24 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $1_VASPDomain_VASPDomains_$memory@1 () T@$Memory_233426)
(declare-fun $abort_code@6 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@2 () T@$Memory_233426)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_233426)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 () T@$1_VASPDomain_VASPDomains)
(declare-fun |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| () T@Vec_175296)
(declare-fun MapConstVec_158669 (T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun DefaultVecElem_158669 () T@$1_VASPDomain_VASPDomain)
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
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_225800)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_225800)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t24@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t3 () T@Vec_57736)
(declare-fun |inline$$1_Vector_empty'u8'$0$v@1| () T@Vec_57736)
(declare-fun |inline$$1_Vector_empty'u8'$1$v@1| () T@Vec_57736)
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
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_233815)
(declare-fun inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 () Int)
(declare-fun $1_VASP_ParentVASP_$memory@2 () T@$Memory_233815)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_233815)
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
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_221004)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_221004)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_221004)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t8@0 () Int)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_new_parent_vasp_role$0$$t3@0 () Int)
(declare-fun $t11 () Int)
(declare-fun $t12 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_225433)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_225533)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_221191)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_221284)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_221370)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_221443)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_221514)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_287985)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_288049)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_288113)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_294145)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_294226)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_294307)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_221682)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_221753)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_221921)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_221992)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_222089)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_222173)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_222257)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_222328)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_222642)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_233341)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_233560)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_322192)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_222713)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_222797)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_220875)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_parent_vasp_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 879290) (let ((L2_correct  (and (=> (= (ControlFlow 0 635235) (- 0 892928)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) _$t1) (or (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1 0)) (= _$t1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_57736| _$t2)) 32)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) _$t1) (or (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1 0)) (= _$t1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_57736| _$t2)) 32))) (=> (= (ControlFlow 0 635235) (- 0 893079)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) _$t1) (= 6 $t9@0)) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) _$t1)) (= 6 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) $t6)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t9@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) _$t1) (= 6 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t9@0))) (and (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t9@0))) (and (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t9@0))) (and (= _$t1 0) (= 7 $t9@0))) (and (= _$t1 1) (= 7 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) _$t1) (= 6 $t9@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9@0))) (and (not (= (+ 16 (|l#Vec_57736| _$t2)) 32)) (= 7 $t9@0))))))))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@64 (= $abort_code@56 $abort_code@56)) (and (= $t9@0 $abort_code@56) (= (ControlFlow 0 634751) 635235))) L2_correct)))
(let ((anon39_Then_correct  (=> $t25 (=> (and (and (or (or (or (or (and (= $t21 0) (= 7 $t9)) (and (= $t21 1) (= 7 $t9))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) $t21) (= 6 $t9))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9))) (and (not (= (+ 16 (|l#Vec_57736| _$t2)) 32)) (= 7 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 635389) 635235))) L2_correct))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t9@0 $abort_code@7) (= (ControlFlow 0 635403) 635235))) L2_correct)))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t9@0 $abort_code@5) (= (ControlFlow 0 635417) 635235))) L2_correct)))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0 $abort_code@3) (= (ControlFlow 0 635431) 635235))) L2_correct)))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0 $abort_code@3) (= (ControlFlow 0 635445) 635235))) L2_correct)))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t9@0 $abort_code@1) (= (ControlFlow 0 635459) 635235))) L2_correct)))
(let ((anon32_Then_correct  (=> $t8 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) $t7)) (= 5 $t9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $t7)) 1)) (= 3 $t9))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 635545) 635235))) L2_correct))))
(let ((anon44_Else_correct  (=> (not $abort_flag@64) (and (=> (= (ControlFlow 0 634737) (- 0 892353)) (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 634737) (- 0 892362)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0))) 1))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) (|$addr#$signer| _$t0))) 1)) (=> (and (= $t32 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t33 ($1_DiemAccount_CreateAccountEvent _$t1 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) _$t1))))) (and (=> (= (ControlFlow 0 634737) (- 0 892402)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) _$t1)) (and (=> (= (ControlFlow 0 634737) (- 0 892411)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) _$t1)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) _$t1))) (and (=> (= (ControlFlow 0 634737) (- 0 892421)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 634737) (- 0 892431)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 634737) (- 0 892443)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 634737) (- 0 892461)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 634737) (- 0 892475)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) _$t1)) (and (=> (= (ControlFlow 0 634737) (- 0 892484)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 634737) (- 0 892491)) (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 634737) (- 0 892509)) (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 634737) (- 0 892530)) (not (= _$t1 0))) (=> (not (= _$t1 0)) (and (=> (= (ControlFlow 0 634737) (- 0 892540)) (not (= _$t1 1))) (=> (not (= _$t1 1)) (and (=> (= (ControlFlow 0 634737) (- 0 892550)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (=> (= (ControlFlow 0 634737) (- 0 892559)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 634737) (- 0 892576)) (not (not (= (+ 16 (|l#Vec_57736| _$t2)) 32)))) (=> (not (not (= (+ 16 (|l#Vec_57736| _$t2)) 32))) (and (=> (= (ControlFlow 0 634737) (- 0 892594)) (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) _$t1) (and (=> (= (ControlFlow 0 634737) (- 0 892601)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) _$t1)) 5))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) _$t1)) 5)) (and (=> (= (ControlFlow 0 634737) (- 0 892608)) (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory@3) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory@3) _$t1) (and (=> (= (ControlFlow 0 634737) (- 0 892615)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_233815| $1_VASP_ParentVASP_$memory@3) _$t1)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_233815| $1_VASP_ParentVASP_$memory@3) _$t1)) 0) (and (=> (= (ControlFlow 0 634737) (- 0 892626)) (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1) (and (=> (= (ControlFlow 0 634737) (- 0 892633)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0)))) (=> (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0))) (and (=> (= (ControlFlow 0 634737) (- 0 892648)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1)) (and (=> (= (ControlFlow 0 634737) (- 0 892666)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (and (=> (= (ControlFlow 0 634737) (- 0 892692)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1)) (and (=> (= (ControlFlow 0 634737) (- 0 892710)) (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))))) (=> (=> (and _$t4 (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (and (=> (= (ControlFlow 0 634737) (- 0 892736)) (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory@3) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory@3) _$t1) (and (=> (= (ControlFlow 0 634737) (- 0 892743)) (= (|l#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_233426| $1_VASPDomain_VASPDomains_$memory@3) _$t1))) 0)) (=> (= (|l#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_233426| $1_VASPDomain_VASPDomains_$memory@3) _$t1))) 0) (and (=> (= (ControlFlow 0 634737) (- 0 892754)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) addr)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr)))))
 :qid |Rolesbpl.33907:15|
 :skolemid |1536|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@0) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) addr@@0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@0)))))
 :qid |Rolesbpl.33907:15|
 :skolemid |1536|
)) (and (=> (= (ControlFlow 0 634737) (- 0 892789)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) addr@@1) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory@3|) addr@@1))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) addr@@1))))))
 :qid |Rolesbpl.33912:15|
 :skolemid |1537|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) addr@@2) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory@3|) addr@@2))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) addr@@2))))))
 :qid |Rolesbpl.33912:15|
 :skolemid |1537|
)) (and (=> (= (ControlFlow 0 634737) (- 0 892828)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) $t32)))
(let ((stream_new (let ((len (|l#Multiset_174514| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33))))
(Multiset_174514 (|Store__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) $t32 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| expected) handle@@1)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| actual) handle@@1)) v@@60))
 :qid |Rolesbpl.164:13|
 :skolemid |5|
)))
 :qid |Rolesbpl.3327:13|
 :skolemid |120|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) $t32)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_174514| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33))))
(Multiset_174514 (|Store__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) $t32 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| expected@@0) handle@@2)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| actual@@0) handle@@2)) v@@61))
 :qid |Rolesbpl.164:13|
 :skolemid |5|
)))
 :qid |Rolesbpl.3327:13|
 :skolemid |120|
))))) (=> (= (ControlFlow 0 634737) (- 0 892853)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) $t32)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_174514| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33))))
(Multiset_174514 (|Store__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t33) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) $t32 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@62 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| actual@@1) handle@@3)) v@@62) (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| expected@@1) handle@@3)) v@@62))
 :qid |Rolesbpl.164:13|
 :skolemid |5|
)))
 :qid |Rolesbpl.3327:13|
 :skolemid |120|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6|) (= $abort_code@56 |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6|) (= $abort_flag@64 true))) (and (=> (= (ControlFlow 0 630201) 634751) anon44_Then_correct) (=> (= (ControlFlow 0 630201) 634737) anon44_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|  (=> (and $abort_flag@42 (= $abort_code@37 $abort_code@37)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| $abort_code@37)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 634123) 630201))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|  (=> (and $abort_flag@61 (= $abort_code@53 $abort_code@53)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| $abort_code@53)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 630195) 630201))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|  (=> (and $abort_flag@24 (= $abort_code@22 $abort_code@22)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| $abort_code@22)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 634137) 630201))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|) (= $abort_code@56 $abort_code@55)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|) (= $abort_flag@64 $abort_flag@63))) (and (=> (= (ControlFlow 0 626165) 634751) anon44_Then_correct) (=> (= (ControlFlow 0 626165) 634737) anon44_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|  (=> (= $abort_code@55 $abort_code@54) (=> (and (and (= $abort_flag@63 $abort_flag@62) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4|) (= (ControlFlow 0 626275) 626165))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|  (=> (not $abort_flag@61) (=> (and (and (= $abort_code@54 $abort_code@53) (= $abort_flag@62 $abort_flag@61)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 630181) 626275))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@60) (= $abort_code@53 $abort_code@52)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@61 $abort_flag@60))) (and (=> (= (ControlFlow 0 630035) 630195) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 630035) 630181) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@53 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@61 true)) (and (=> (= (ControlFlow 0 627116) 630195) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 627116) 630181) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@60 (=> (and (and (= $abort_code@52 $abort_code@52) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@52)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 630049) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@52 $EXEC_FAILURE_CODE) (= $abort_flag@60 true)) (and (=> (= (ControlFlow 0 630101) 630049) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 630101) 630035) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 630099) 630101)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_225975 (|Store__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@52 $abort_code@51) (= $abort_flag@60 $abort_flag@59))) (and (=> (= (ControlFlow 0 630025) 630049) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 630025) 630035) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@59) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 630003) 630099) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 630003) 630025) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@59 (=> (and (and (= $abort_code@51 $abort_code@51) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@51)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 630115) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@59 $abort_flag@58)) (and (= $abort_code@51 $abort_code@50) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 629955) 630115) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 629955) 630003) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@59 true)) (and (= $abort_code@51 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 629985) 630115) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 629985) 630003) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 629927) 629985) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 629927) 629955) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$6$dst@1 (= (ControlFlow 0 629991) 629927)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$6$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 629774) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= inline$$Not$6$dst@1 inline$$Not$6$dst@1))) (and (=> (= (ControlFlow 0 629758) 629991) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 629758) 629774) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$6$anon0_correct  (=> (and (= inline$$Not$6$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1|)) (= (ControlFlow 0 629718) 629758)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$1$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= (ControlFlow 0 629724) 629718)) inline$$Not$6$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$1$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 629678) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@58) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@1))) (and (=> (= (ControlFlow 0 629662) 629724) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 629662) 629678) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@58 (=> (and (and (= $abort_code@50 $abort_code@50) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 630129) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$1$L9_correct  (=> (= $abort_flag@58 true) (=> (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@0) (= $abort_code@50 inline$$1_Roles_can_hold_balance$1$$t4@1)) (and (=> (= (ControlFlow 0 629552) 630129) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 629552) 629662) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Then_correct  (=> (and (and $abort_flag@56 (= $abort_code@48 $abort_code@48)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@48) (= (ControlFlow 0 629546) 629552))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Then_correct  (=> (and (and $abort_flag@51 (= $abort_code@44 $abort_code@44)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@44) (= (ControlFlow 0 629584) 629552))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Then_correct  (=> (and (and $abort_flag@47 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@41) (= (ControlFlow 0 629616) 629552))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_flag@58 $abort_flag@57)) (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_code@50 $abort_code@49))) (and (=> (= (ControlFlow 0 629532) 630129) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 629532) 629662) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Else_correct  (=> (and (not $abort_flag@56) (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1) (= $abort_code@49 $abort_code@48)) (and (= $abort_flag@57 $abort_flag@56) (= (ControlFlow 0 629520) 629532))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@55) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1) (= $abort_flag@56 $abort_flag@55))) (and (=> (= (ControlFlow 0 629478) 629546) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 629478) 629520) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct  (=> (and (and $abort_flag@55 (= $abort_code@48 $abort_code@48)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@0) (= $abort_flag@56 true))) (and (=> (= (ControlFlow 0 629496) 629546) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 629496) 629520) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Then_correct  (=> $abort_flag@53 (=> (and (and (= $abort_code@46 $abort_code@46) (= $abort_flag@55 true)) (and (= $abort_code@48 $abort_code@46) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@0))) (and (=> (= (ControlFlow 0 629402) 629496) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 629402) 629478) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t2@1) (= $abort_flag@55 $abort_flag@54)) (and (= $abort_code@48 $abort_code@47) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$t2@1))) (and (=> (= (ControlFlow 0 629338) 629496) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 629338) 629478) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Else_correct  (=> (and (and (and (not $abort_flag@53) (= inline$$1_Roles_has_role$5$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$5$$t6@2))) (and (= inline$$1_Roles_has_role$5$$t9@1 (= inline$$1_Roles_has_role$5$$t8@1 2)) (= inline$$1_Roles_has_role$5$$t9@1 inline$$1_Roles_has_role$5$$t9@1))) (and (and (= $abort_flag@54 $abort_flag@53) (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t9@1)) (and (= $abort_code@47 $abort_code@46) (= (ControlFlow 0 629384) 629338)))) inline$$1_Roles_has_role$5$L3_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Then$1_correct  (=> (= $abort_code@46 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@53 true) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@0)) (and (=> (= (ControlFlow 0 629454) 629402) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 629454) 629384) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= (ControlFlow 0 629452) 629454)) inline$$1_Roles_has_role$5$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$5$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= $abort_code@46 $abort_code@45)) (and (= $abort_flag@53 $abort_flag@52) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@1))) (and (=> (= (ControlFlow 0 629356) 629402) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 629356) 629384) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon9_Then_correct  (=> inline$$1_Roles_has_role$5$$t5@1 (and (=> (= (ControlFlow 0 629342) 629452) inline$$1_Roles_has_role$5$anon10_Then_correct) (=> (= (ControlFlow 0 629342) 629356) inline$$1_Roles_has_role$5$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$5$$t5@1) (= false false)) (=> (and (and (= $abort_flag@54 $abort_flag@52) (= inline$$1_Roles_has_role$5$$t2@1 false)) (and (= $abort_code@47 $abort_code@45) (= (ControlFlow 0 629326) 629338))) inline$$1_Roles_has_role$5$L3_correct))))
(let ((inline$$1_Roles_has_role$5$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$5$$t4@0 inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)))) (and (=> (= (ControlFlow 0 629306) 629342) inline$$1_Roles_has_role$5$anon9_Then_correct) (=> (= (ControlFlow 0 629306) 629326) inline$$1_Roles_has_role$5$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 629460) 629306)) inline$$1_Roles_has_role$5$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$1$$t1@1) (= (ControlFlow 0 629502) 629460)) inline$$1_Roles_has_designated_dealer_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$1$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 true) (= $abort_code@49 $abort_code@45)) (and (= $abort_flag@57 $abort_flag@52) (= (ControlFlow 0 629570) 629532))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Else_correct  (=> (not $abort_flag@51) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1) (= inline$$1_Roles_can_hold_balance$1$$t1@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1)) (and (= $abort_flag@52 $abort_flag@51) (= $abort_code@45 $abort_code@44))) (and (=> (= (ControlFlow 0 628820) 629570) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 628820) 629502) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@50) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1) (= $abort_flag@51 $abort_flag@50))) (and (=> (= (ControlFlow 0 628778) 629584) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 628778) 628820) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@50 (= $abort_code@44 $abort_code@44)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@0) (= $abort_flag@51 true))) (and (=> (= (ControlFlow 0 628796) 629584) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 628796) 628820) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Then_correct  (=> $abort_flag@48 (=> (and (and (= $abort_code@42 $abort_code@42) (= $abort_code@44 $abort_code@42)) (and (= $abort_flag@50 true) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@0))) (and (=> (= (ControlFlow 0 628702) 628796) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 628702) 628778) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t2@1) (= $abort_code@44 $abort_code@43)) (and (= $abort_flag@50 $abort_flag@49) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$t2@1))) (and (=> (= (ControlFlow 0 628638) 628796) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 628638) 628778) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Else_correct  (=> (and (and (and (not $abort_flag@48) (= inline$$1_Roles_has_role$4$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$4$$t6@2))) (and (= inline$$1_Roles_has_role$4$$t9@1 (= inline$$1_Roles_has_role$4$$t8@1 6)) (= inline$$1_Roles_has_role$4$$t9@1 inline$$1_Roles_has_role$4$$t9@1))) (and (and (= $abort_code@43 $abort_code@42) (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t9@1)) (and (= $abort_flag@49 $abort_flag@48) (= (ControlFlow 0 628684) 628638)))) inline$$1_Roles_has_role$4$L3_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Then$1_correct  (=> (= $abort_flag@48 true) (=> (and (= $abort_code@42 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@0)) (and (=> (= (ControlFlow 0 628754) 628702) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 628754) 628684) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= (ControlFlow 0 628752) 628754)) inline$$1_Roles_has_role$4$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$4$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= $abort_flag@48 $abort_flag@47)) (and (= $abort_code@42 $abort_code@41) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@1))) (and (=> (= (ControlFlow 0 628656) 628702) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 628656) 628684) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon9_Then_correct  (=> inline$$1_Roles_has_role$4$$t5@1 (and (=> (= (ControlFlow 0 628642) 628752) inline$$1_Roles_has_role$4$anon10_Then_correct) (=> (= (ControlFlow 0 628642) 628656) inline$$1_Roles_has_role$4$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$4$$t5@1) (= false false)) (=> (and (and (= $abort_code@43 $abort_code@41) (= inline$$1_Roles_has_role$4$$t2@1 false)) (and (= $abort_flag@49 $abort_flag@47) (= (ControlFlow 0 628626) 628638))) inline$$1_Roles_has_role$4$L3_correct))))
(let ((inline$$1_Roles_has_role$4$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$4$$t4@0 inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)))) (and (=> (= (ControlFlow 0 628606) 628642) inline$$1_Roles_has_role$4$anon9_Then_correct) (=> (= (ControlFlow 0 628606) 628626) inline$$1_Roles_has_role$4$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 628760) 628606)) inline$$1_Roles_has_role$4$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$1$$ret0@1) (= (ControlFlow 0 628802) 628760)) inline$$1_Roles_has_child_VASP_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$1$$t1@1 true)) (and (= $abort_flag@52 $abort_flag@47) (= $abort_code@45 $abort_code@41))) (and (=> (= (ControlFlow 0 629602) 629570) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 629602) 629502) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Else_correct  (=> (not $abort_flag@47) (and (=> (= (ControlFlow 0 628122) 629602) inline$$1_Roles_can_hold_balance$1$anon14_Then_correct) (=> (= (ControlFlow 0 628122) 628802) inline$$1_Roles_can_hold_balance$1$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@46) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1) (= $abort_flag@47 $abort_flag@46))) (and (=> (= (ControlFlow 0 628090) 629616) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 628090) 628122) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@46 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_parent_VASP_role$1$$ret0@0) (= $abort_flag@47 true))) (and (=> (= (ControlFlow 0 628108) 629616) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 628108) 628122) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Then_correct  (=> $abort_flag@44 (=> (and (and (= $abort_code@39 $abort_code@39) (= $abort_code@41 $abort_code@39)) (and (= $abort_flag@46 true) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@0))) (and (=> (= (ControlFlow 0 628014) 628108) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 628014) 628090) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t2@1) (= $abort_code@41 $abort_code@40)) (and (= $abort_flag@46 $abort_flag@45) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$t2@1))) (and (=> (= (ControlFlow 0 627950) 628108) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 627950) 628090) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Else_correct  (=> (and (and (and (not $abort_flag@44) (= inline$$1_Roles_has_role$3$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$3$$t6@2))) (and (= inline$$1_Roles_has_role$3$$t9@1 (= inline$$1_Roles_has_role$3$$t8@1 5)) (= inline$$1_Roles_has_role$3$$t9@1 inline$$1_Roles_has_role$3$$t9@1))) (and (and (= $abort_code@40 $abort_code@39) (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t9@1)) (and (= $abort_flag@45 $abort_flag@44) (= (ControlFlow 0 627996) 627950)))) inline$$1_Roles_has_role$3$L3_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Then$1_correct  (=> (= $abort_flag@44 true) (=> (and (= $abort_code@39 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@0)) (and (=> (= (ControlFlow 0 628066) 628014) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 628066) 627996) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= (ControlFlow 0 628064) 628066)) inline$$1_Roles_has_role$3$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$3$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= $abort_flag@44 $abort_flag@43)) (and (= $abort_code@39 $abort_code@38) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@1))) (and (=> (= (ControlFlow 0 627968) 628014) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 627968) 627996) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon9_Then_correct  (=> inline$$1_Roles_has_role$3$$t5@1 (and (=> (= (ControlFlow 0 627954) 628064) inline$$1_Roles_has_role$3$anon10_Then_correct) (=> (= (ControlFlow 0 627954) 627968) inline$$1_Roles_has_role$3$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$3$$t5@1) (= false false)) (=> (and (and (= $abort_code@40 $abort_code@38) (= inline$$1_Roles_has_role$3$$t2@1 false)) (and (= $abort_flag@45 $abort_flag@43) (= (ControlFlow 0 627938) 627950))) inline$$1_Roles_has_role$3$L3_correct))))
(let ((inline$$1_Roles_has_role$3$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$3$$t4@0 inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)))) (and (=> (= (ControlFlow 0 627918) 627954) inline$$1_Roles_has_role$3$anon9_Then_correct) (=> (= (ControlFlow 0 627918) 627938) inline$$1_Roles_has_role$3$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 628072) 627918)) inline$$1_Roles_has_role$3$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 628114) 628072)) inline$$1_Roles_has_parent_VASP_role$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$1$$t1@1 (= (ControlFlow 0 629622) 628114)) inline$$1_Roles_can_hold_balance$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$1$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 627110) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not $abort_flag@43) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 627094) 629622) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 627094) 627110) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|  (=> $abort_flag@43 (=> (and (and (= $abort_code@38 $abort_code@38) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@38)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 630143) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 627052) 630143) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 627052) 627094) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= (ControlFlow 0 627058) 627052)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 630169) 627116))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 626947) 630169) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 626947) 627058) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|  (=> inline$$Not$5$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t12@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 630173) 626947)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|  (=> (not inline$$Not$5$dst@1) (=> (and (and (= $abort_code@54 $abort_code@38) (= $abort_flag@62 $abort_flag@43)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 626273) 626275))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((inline$$Not$5$anon0_correct  (=> (= inline$$Not$5$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t10@1|)) (and (=> (= (ControlFlow 0 626257) 630173) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 626257) 626273) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|  (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 626263) 626257)) inline$$Not$5$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|  (=> (not $abort_flag@42) (=> (and (and (= $abort_code@38 $abort_code@37) (= $abort_flag@43 $abort_flag@42)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 634109) 626263))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@41) (= $abort_code@37 $abort_code@36)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@42 $abort_flag@41))) (and (=> (= (ControlFlow 0 633961) 634123) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 633961) 634109) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@37 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@42 true)) (and (=> (= (ControlFlow 0 631042) 634123) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 631042) 634109) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@41 (=> (and (and (= $abort_code@36 $abort_code@36) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@36)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 633975) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@36 $EXEC_FAILURE_CODE) (= $abort_flag@41 true)) (and (=> (= (ControlFlow 0 634027) 633975) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 634027) 633961) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 634025) 634027)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_225915 (|Store__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@36 $abort_code@35) (= $abort_flag@41 $abort_flag@40))) (and (=> (= (ControlFlow 0 633951) 633975) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 633951) 633961) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@40) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 633929) 634025) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 633929) 633951) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@40 (=> (and (and (= $abort_code@35 $abort_code@35) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@35)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 634041) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@40 $abort_flag@39)) (and (= $abort_code@35 $abort_code@34) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 633881) 634041) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 633881) 633929) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@40 true)) (and (= $abort_code@35 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 633911) 634041) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 633911) 633929) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 633853) 633911) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 633853) 633881) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$7$dst@1 (= (ControlFlow 0 633917) 633853)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$7$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 633700) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= inline$$Not$7$dst@1 inline$$Not$7$dst@1))) (and (=> (= (ControlFlow 0 633684) 633917) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 633684) 633700) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$7$anon0_correct  (=> (and (= inline$$Not$7$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1|)) (= (ControlFlow 0 633644) 633684)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$2$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= (ControlFlow 0 633650) 633644)) inline$$Not$7$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$2$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 633604) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@39) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@1))) (and (=> (= (ControlFlow 0 633588) 633650) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 633588) 633604) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@39 (=> (and (and (= $abort_code@34 $abort_code@34) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 634055) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$2$L9_correct  (=> (= $abort_flag@39 true) (=> (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@0) (= $abort_code@34 inline$$1_Roles_can_hold_balance$2$$t4@1)) (and (=> (= (ControlFlow 0 633478) 634055) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 633478) 633588) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Then_correct  (=> (and (and $abort_flag@37 (= $abort_code@32 $abort_code@32)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@32) (= (ControlFlow 0 633472) 633478))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Then_correct  (=> (and (and $abort_flag@32 (= $abort_code@28 $abort_code@28)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@28) (= (ControlFlow 0 633510) 633478))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Then_correct  (=> (and (and $abort_flag@28 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@25) (= (ControlFlow 0 633542) 633478))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_flag@39 $abort_flag@38)) (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_code@34 $abort_code@33))) (and (=> (= (ControlFlow 0 633458) 634055) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 633458) 633588) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Else_correct  (=> (and (not $abort_flag@37) (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1) (= $abort_code@33 $abort_code@32)) (and (= $abort_flag@38 $abort_flag@37) (= (ControlFlow 0 633446) 633458))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@36) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1) (= $abort_flag@37 $abort_flag@36))) (and (=> (= (ControlFlow 0 633404) 633472) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 633404) 633446) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct  (=> (and (and $abort_flag@36 (= $abort_code@32 $abort_code@32)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@0) (= $abort_flag@37 true))) (and (=> (= (ControlFlow 0 633422) 633472) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 633422) 633446) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Then_correct  (=> $abort_flag@34 (=> (and (and (= $abort_code@30 $abort_code@30) (= $abort_flag@36 true)) (and (= $abort_code@32 $abort_code@30) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@0))) (and (=> (= (ControlFlow 0 633328) 633422) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 633328) 633404) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t2@1) (= $abort_flag@36 $abort_flag@35)) (and (= $abort_code@32 $abort_code@31) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$t2@1))) (and (=> (= (ControlFlow 0 633264) 633422) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 633264) 633404) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Else_correct  (=> (and (and (and (not $abort_flag@34) (= inline$$1_Roles_has_role$8$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$8$$t6@2))) (and (= inline$$1_Roles_has_role$8$$t9@1 (= inline$$1_Roles_has_role$8$$t8@1 2)) (= inline$$1_Roles_has_role$8$$t9@1 inline$$1_Roles_has_role$8$$t9@1))) (and (and (= $abort_flag@35 $abort_flag@34) (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t9@1)) (and (= $abort_code@31 $abort_code@30) (= (ControlFlow 0 633310) 633264)))) inline$$1_Roles_has_role$8$L3_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Then$1_correct  (=> (= $abort_code@30 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@34 true) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@0)) (and (=> (= (ControlFlow 0 633380) 633328) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 633380) 633310) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= (ControlFlow 0 633378) 633380)) inline$$1_Roles_has_role$8$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$8$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= $abort_code@30 $abort_code@29)) (and (= $abort_flag@34 $abort_flag@33) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@1))) (and (=> (= (ControlFlow 0 633282) 633328) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 633282) 633310) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon9_Then_correct  (=> inline$$1_Roles_has_role$8$$t5@1 (and (=> (= (ControlFlow 0 633268) 633378) inline$$1_Roles_has_role$8$anon10_Then_correct) (=> (= (ControlFlow 0 633268) 633282) inline$$1_Roles_has_role$8$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$8$$t5@1) (= false false)) (=> (and (and (= $abort_flag@35 $abort_flag@33) (= inline$$1_Roles_has_role$8$$t2@1 false)) (and (= $abort_code@31 $abort_code@29) (= (ControlFlow 0 633252) 633264))) inline$$1_Roles_has_role$8$L3_correct))))
(let ((inline$$1_Roles_has_role$8$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$8$$t4@0 inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)))) (and (=> (= (ControlFlow 0 633232) 633268) inline$$1_Roles_has_role$8$anon9_Then_correct) (=> (= (ControlFlow 0 633232) 633252) inline$$1_Roles_has_role$8$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 633386) 633232)) inline$$1_Roles_has_role$8$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$2$$t1@1) (= (ControlFlow 0 633428) 633386)) inline$$1_Roles_has_designated_dealer_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$2$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 true) (= $abort_code@33 $abort_code@29)) (and (= $abort_flag@38 $abort_flag@33) (= (ControlFlow 0 633496) 633458))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Else_correct  (=> (not $abort_flag@32) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1) (= inline$$1_Roles_can_hold_balance$2$$t1@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1)) (and (= $abort_flag@33 $abort_flag@32) (= $abort_code@29 $abort_code@28))) (and (=> (= (ControlFlow 0 632746) 633496) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 632746) 633428) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@31) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1) (= $abort_flag@32 $abort_flag@31))) (and (=> (= (ControlFlow 0 632704) 633510) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 632704) 632746) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@31 (= $abort_code@28 $abort_code@28)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@0) (= $abort_flag@32 true))) (and (=> (= (ControlFlow 0 632722) 633510) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 632722) 632746) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Then_correct  (=> $abort_flag@29 (=> (and (and (= $abort_code@26 $abort_code@26) (= $abort_code@28 $abort_code@26)) (and (= $abort_flag@31 true) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@0))) (and (=> (= (ControlFlow 0 632628) 632722) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 632628) 632704) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t2@1) (= $abort_code@28 $abort_code@27)) (and (= $abort_flag@31 $abort_flag@30) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$t2@1))) (and (=> (= (ControlFlow 0 632564) 632722) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 632564) 632704) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Else_correct  (=> (and (and (and (not $abort_flag@29) (= inline$$1_Roles_has_role$7$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$7$$t6@2))) (and (= inline$$1_Roles_has_role$7$$t9@1 (= inline$$1_Roles_has_role$7$$t8@1 6)) (= inline$$1_Roles_has_role$7$$t9@1 inline$$1_Roles_has_role$7$$t9@1))) (and (and (= $abort_code@27 $abort_code@26) (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t9@1)) (and (= $abort_flag@30 $abort_flag@29) (= (ControlFlow 0 632610) 632564)))) inline$$1_Roles_has_role$7$L3_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Then$1_correct  (=> (= $abort_flag@29 true) (=> (and (= $abort_code@26 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@0)) (and (=> (= (ControlFlow 0 632680) 632628) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 632680) 632610) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= (ControlFlow 0 632678) 632680)) inline$$1_Roles_has_role$7$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$7$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= $abort_flag@29 $abort_flag@28)) (and (= $abort_code@26 $abort_code@25) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@1))) (and (=> (= (ControlFlow 0 632582) 632628) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 632582) 632610) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon9_Then_correct  (=> inline$$1_Roles_has_role$7$$t5@1 (and (=> (= (ControlFlow 0 632568) 632678) inline$$1_Roles_has_role$7$anon10_Then_correct) (=> (= (ControlFlow 0 632568) 632582) inline$$1_Roles_has_role$7$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$7$$t5@1) (= false false)) (=> (and (and (= $abort_code@27 $abort_code@25) (= inline$$1_Roles_has_role$7$$t2@1 false)) (and (= $abort_flag@30 $abort_flag@28) (= (ControlFlow 0 632552) 632564))) inline$$1_Roles_has_role$7$L3_correct))))
(let ((inline$$1_Roles_has_role$7$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$7$$t4@0 inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)))) (and (=> (= (ControlFlow 0 632532) 632568) inline$$1_Roles_has_role$7$anon9_Then_correct) (=> (= (ControlFlow 0 632532) 632552) inline$$1_Roles_has_role$7$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 632686) 632532)) inline$$1_Roles_has_role$7$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$2$$ret0@1) (= (ControlFlow 0 632728) 632686)) inline$$1_Roles_has_child_VASP_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$2$$t1@1 true)) (and (= $abort_flag@33 $abort_flag@28) (= $abort_code@29 $abort_code@25))) (and (=> (= (ControlFlow 0 633528) 633496) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 633528) 633428) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Else_correct  (=> (not $abort_flag@28) (and (=> (= (ControlFlow 0 632048) 633528) inline$$1_Roles_can_hold_balance$2$anon14_Then_correct) (=> (= (ControlFlow 0 632048) 632728) inline$$1_Roles_can_hold_balance$2$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@27) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1) (= $abort_flag@28 $abort_flag@27))) (and (=> (= (ControlFlow 0 632016) 633542) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 632016) 632048) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@27 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_parent_VASP_role$2$$ret0@0) (= $abort_flag@28 true))) (and (=> (= (ControlFlow 0 632034) 633542) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 632034) 632048) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Then_correct  (=> $abort_flag@25 (=> (and (and (= $abort_code@23 $abort_code@23) (= $abort_flag@27 true)) (and (= $abort_code@25 $abort_code@23) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@0))) (and (=> (= (ControlFlow 0 631940) 632034) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 631940) 632016) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t2@1) (= $abort_flag@27 $abort_flag@26)) (and (= $abort_code@25 $abort_code@24) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$t2@1))) (and (=> (= (ControlFlow 0 631876) 632034) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 631876) 632016) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Else_correct  (=> (and (and (and (not $abort_flag@25) (= inline$$1_Roles_has_role$6$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$6$$t6@2))) (and (= inline$$1_Roles_has_role$6$$t9@1 (= inline$$1_Roles_has_role$6$$t8@1 5)) (= inline$$1_Roles_has_role$6$$t9@1 inline$$1_Roles_has_role$6$$t9@1))) (and (and (= $abort_flag@26 $abort_flag@25) (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t9@1)) (and (= $abort_code@24 $abort_code@23) (= (ControlFlow 0 631922) 631876)))) inline$$1_Roles_has_role$6$L3_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Then$1_correct  (=> (= $abort_code@23 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@25 true) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@0)) (and (=> (= (ControlFlow 0 631992) 631940) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 631992) 631922) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= (ControlFlow 0 631990) 631992)) inline$$1_Roles_has_role$6$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$6$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= $abort_code@23 $abort_code@22)) (and (= $abort_flag@25 $abort_flag@24) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@1))) (and (=> (= (ControlFlow 0 631894) 631940) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 631894) 631922) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon9_Then_correct  (=> inline$$1_Roles_has_role$6$$t5@1 (and (=> (= (ControlFlow 0 631880) 631990) inline$$1_Roles_has_role$6$anon10_Then_correct) (=> (= (ControlFlow 0 631880) 631894) inline$$1_Roles_has_role$6$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$6$$t5@1) (= false false)) (=> (and (and (= $abort_flag@26 $abort_flag@24) (= inline$$1_Roles_has_role$6$$t2@1 false)) (and (= $abort_code@24 $abort_code@22) (= (ControlFlow 0 631864) 631876))) inline$$1_Roles_has_role$6$L3_correct))))
(let ((inline$$1_Roles_has_role$6$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$6$$t4@0 inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)))) (and (=> (= (ControlFlow 0 631844) 631880) inline$$1_Roles_has_role$6$anon9_Then_correct) (=> (= (ControlFlow 0 631844) 631864) inline$$1_Roles_has_role$6$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 631998) 631844)) inline$$1_Roles_has_role$6$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 632040) 631998)) inline$$1_Roles_has_parent_VASP_role$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= (ControlFlow 0 633548) 632040)) inline$$1_Roles_can_hold_balance$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$2$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 631036) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@24) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 631020) 633548) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 631020) 631036) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@24 (=> (and (and (= $abort_code@22 $abort_code@22) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@22)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 634069) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 630978) 634069) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 630978) 631020) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 630984) 630978)) inline$$1_DiemAccount_exists_at$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 634095) 631042))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 630873) 634095) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 630873) 630984) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|  (=> inline$$Not$4$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 634099) 630873)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= $abort_code@38 $abort_code@22) (= $abort_flag@43 $abort_flag@24)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 626219) 626263))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((inline$$Not$4$anon0_correct  (=> (= inline$$Not$4$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t7@1|)) (and (=> (= (ControlFlow 0 626205) 634099) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 626205) 626219) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|  (=> _$t4 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 626211) 626205)) inline$$Not$4$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|  (=> (and (not _$t4) (= $abort_code@55 $abort_code@22)) (=> (and (and (= $abort_flag@63 $abort_flag@24) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 626161) 626165))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|  (=> (not $abort_flag@24) (and (=> (= (ControlFlow 0 626153) 626211) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 626153) 626161) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@23) (= $abort_code@22 $abort_code@21)) (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@1|) (= $abort_flag@24 $abort_flag@23))) (and (=> (= (ControlFlow 0 626005) 634137) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 626005) 626153) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|  (=> (= $abort_code@22 |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@2|) (= $abort_flag@24 true)) (and (=> (= (ControlFlow 0 623086) 634137) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 623086) 626153) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|  (=> $abort_flag@23 (=> (and (and (= $abort_code@21 $abort_code@21) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@21)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory@1|) (= (ControlFlow 0 626019) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory|) (=> (and (= $abort_code@21 $EXEC_FAILURE_CODE) (= $abort_flag@23 true)) (and (=> (= (ControlFlow 0 626071) 626019) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 626071) 626005) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 626069) 626071)) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_316315 (|Store__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'#0'$0$$t23@1|))) (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory@0|)) (and (= $abort_code@21 $abort_code@20) (= $abort_flag@23 $abort_flag@22))) (and (=> (= (ControlFlow 0 625995) 626019) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 625995) 626005) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|  (=> (and (not $abort_flag@22) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t23@1| (|$1_DiemAccount_Balance'#0'| |inline$$1_Diem_zero'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 625973) 626069) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 625973) 625995) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|  (=> $abort_flag@22 (=> (and (and (= $abort_code@20 $abort_code@20) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@20)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 626085) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'#0'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'#0'$0$$t3@1| (|$1_Diem_Diem'#0'| 0))) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t3@1| |inline$$1_Diem_zero'#0'$0$$t3@1|) (= $abort_flag@22 $abort_flag@21)) (and (= $abort_code@20 $abort_code@19) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$t3@1|))) (and (=> (= (ControlFlow 0 625925) 626085) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 625925) 625973) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'#0'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'#0'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t1@0| |inline$$1_Diem_zero'#0'$0$$t1@0|) (= $abort_flag@22 true)) (and (= $abort_code@20 |inline$$1_Diem_zero'#0'$0$$t1@0|) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 625955) 626085) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 625955) 625973) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'#0'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 625897) 625955) |inline$$1_Diem_zero'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 625897) 625925) |inline$$1_Diem_zero'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|  (=> (and inline$$Not$3$dst@1 (= (ControlFlow 0 625961) 625897)) |inline$$1_Diem_zero'#0'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 625744) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|) (= inline$$Not$3$dst@1 inline$$Not$3$dst@1))) (and (=> (= (ControlFlow 0 625728) 625961) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 625728) 625744) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|))))))
(let ((inline$$Not$3$anon0_correct  (=> (and (= inline$$Not$3$dst@1  (not |inline$$1_DiemAccount_add_currency'#0'$0$$t18@1|)) (= (ControlFlow 0 625688) 625728)) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|)) (= (ControlFlow 0 625694) 625688)) inline$$Not$3$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 625648) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|  (=> (and (not $abort_flag@21) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 625632) 625694) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 625632) 625648) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|  (=> $abort_flag@21 (=> (and (and (= $abort_code@19 $abort_code@19) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 626099) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@21 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@19 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 625522) 626099) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 625522) 625632) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@19 (= $abort_code@17 $abort_code@17)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@17) (= (ControlFlow 0 625516) 625522))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@14 (= $abort_code@13 $abort_code@13)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@13) (= (ControlFlow 0 625554) 625522))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@10 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@10) (= (ControlFlow 0 625586) 625522))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@21 $abort_flag@20)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@19 $abort_code@18))) (and (=> (= (ControlFlow 0 625502) 626099) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 625502) 625632) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@19) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@18 $abort_code@17)) (and (= $abort_flag@20 $abort_flag@19) (= (ControlFlow 0 625490) 625502))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@18) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@19 $abort_flag@18))) (and (=> (= (ControlFlow 0 625448) 625516) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 625448) 625490) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@18 (= $abort_code@17 $abort_code@17)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@19 true))) (and (=> (= (ControlFlow 0 625466) 625516) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 625466) 625490) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@16 (=> (and (and (= $abort_code@15 $abort_code@15) (= $abort_flag@18 true)) (and (= $abort_code@17 $abort_code@15) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 625372) 625466) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 625372) 625448) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@18 $abort_flag@17)) (and (= $abort_code@17 $abort_code@16) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 625308) 625466) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 625308) 625448) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@16) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@17 $abort_flag@16) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@16 $abort_code@15) (= (ControlFlow 0 625354) 625308)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@15 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@16 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 625424) 625372) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 625424) 625354) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 625422) 625424)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@15 $abort_code@14)) (and (= $abort_flag@16 $abort_flag@15) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 625326) 625372) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 625326) 625354) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 625312) 625422) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 625312) 625326) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@17 $abort_flag@15) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@16 $abort_code@14) (= (ControlFlow 0 625296) 625308))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 625276) 625312) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 625276) 625296) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 625430) 625276)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 625472) 625430)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@18 $abort_code@14)) (and (= $abort_flag@20 $abort_flag@15) (= (ControlFlow 0 625540) 625502))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@14) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@15 $abort_flag@14) (= $abort_code@14 $abort_code@13))) (and (=> (= (ControlFlow 0 624790) 625540) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 624790) 625472) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@13) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@14 $abort_flag@13))) (and (=> (= (ControlFlow 0 624748) 625554) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 624748) 624790) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@13 (= $abort_code@13 $abort_code@13)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@14 true))) (and (=> (= (ControlFlow 0 624766) 625554) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 624766) 624790) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@11 (=> (and (and (= $abort_code@11 $abort_code@11) (= $abort_code@13 $abort_code@11)) (and (= $abort_flag@13 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 624672) 624766) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 624672) 624748) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@13 $abort_code@12)) (and (= $abort_flag@13 $abort_flag@12) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 624608) 624766) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 624608) 624748) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@12 $abort_code@11) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@12 $abort_flag@11) (= (ControlFlow 0 624654) 624608)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@11 true) (=> (and (= $abort_code@11 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 624724) 624672) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 624724) 624654) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 624722) 624724)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@11 $abort_code@10) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 624626) 624672) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 624626) 624654) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 624612) 624722) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 624612) 624626) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@12 $abort_code@10) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@12 $abort_flag@10) (= (ControlFlow 0 624596) 624608))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 624576) 624612) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 624576) 624596) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 624730) 624576)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 624772) 624730)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@15 $abort_flag@10) (= $abort_code@14 $abort_code@10))) (and (=> (= (ControlFlow 0 625572) 625540) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 625572) 625472) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@10) (and (=> (= (ControlFlow 0 624092) 625572) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 624092) 624772) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@10 $abort_flag@9))) (and (=> (= (ControlFlow 0 624060) 625586) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 624060) 624092) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@10 true))) (and (=> (= (ControlFlow 0 624078) 625586) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 624078) 624092) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@7 (=> (and (and (= $abort_code@8 $abort_code@8) (= $abort_code@10 $abort_code@8)) (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 623984) 624078) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 623984) 624060) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_code@10 $abort_code@9)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 623920) 624078) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 623920) 624060) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@7) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@9 $abort_code@8) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@8 $abort_flag@7) (= (ControlFlow 0 623966) 623920)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@7 true) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 624036) 623984) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 624036) 623966) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 624034) 624036)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@8 $abort_code@7) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 623938) 623984) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 623938) 623966) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 623924) 624034) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 623924) 623938) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@9 $abort_code@7) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_flag@8 $abort_flag@6) (= (ControlFlow 0 623908) 623920))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 623888) 623924) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 623888) 623908) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 624042) 623888)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 624084) 624042)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= (ControlFlow 0 625592) 624084)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 623080) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|  (=> (and (not $abort_flag@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 623064) 625592) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 623064) 623080) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|  (=> $abort_flag@6 (=> (and (and (= $abort_code@7 $abort_code@7) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@7)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 626113) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 623022) 626113) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 623022) 623064) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|) (= (ControlFlow 0 623028) 623022)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 626139) 623086))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 622917) 626139) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 622917) 623028) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|  (=> (and (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= _$t4 _$t4) (|$IsValid'address'| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|))) (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 626143) 622917)))) |inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|)))
(let ((anon28_correct  (=> (= $t26 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (=> (and (= $t27 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t28 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) $t21)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory@2) $t21) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory@2) $t21))))) (and (and (= (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t26) (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t22) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t22)))) (= (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t26) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t22) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t22))))) (and (not (= (|l#Vec_174639| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)) (= $t21 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)))))) (and (and (and (not (= (|l#Vec_174678| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)) (= $t21 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory@2) $t21)))) 0)))) (= $t29 $t28)) (and (and (= $t30 $t27) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $es) $t30)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_174514| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29))))
(Multiset_174514 (|Store__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $es) $t30 stream_new@@2)))))) (and (= $t31 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 634141) 626143))))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|)))))
(let ((anon43_Else_correct  (=> (and (and (not |$temp_0'bool'@3|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_222571 (|Store__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1) (= (ControlFlow 0 621666) 634141))) anon28_correct)))
(let ((anon43_Then_correct  (=> (and (and |$temp_0'bool'@3| (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_222571 (|Store__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0) (= (ControlFlow 0 635247) 634141))) anon28_correct)))
(let ((anon42_Else_correct  (=> (not |$temp_0'bool'@2|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_222399 (|Store__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) $t21 false) (|contents#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 621652) 635247) anon43_Then_correct) (=> (= (ControlFlow 0 621652) 621666) anon43_Else_correct))))))
(let ((anon42_Then_correct  (=> |$temp_0'bool'@2| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_222399 (|Store__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) $t21 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) $t21 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 635259) 635247) anon43_Then_correct) (=> (= (ControlFlow 0 635259) 621666) anon43_Else_correct))))))
(let ((anon41_Else_correct  (=> (and (not |$temp_0'bool'@1|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_212959 (|Store__T@[Int]Bool_| (|domain#$Memory_212959| $1_Event_EventHandleGenerator_$memory) $t21 false) (|contents#$Memory_212959| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 621638) 635259) anon42_Then_correct) (=> (= (ControlFlow 0 621638) 621652) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and |$temp_0'bool'@1| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_212959 (|Store__T@[Int]Bool_| (|domain#$Memory_212959| $1_Event_EventHandleGenerator_$memory) $t21 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_212959| $1_Event_EventHandleGenerator_$memory) $t21 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 635271) 635259) anon42_Then_correct) (=> (= (ControlFlow 0 635271) 621652) anon42_Else_correct)))))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_233241 (|Store__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) $t21 false) (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 621624) 635271) anon41_Then_correct) (=> (= (ControlFlow 0 621624) 621638) anon41_Else_correct))))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_233241 (|Store__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) $t21 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) $t21 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 635283) 635271) anon41_Then_correct) (=> (= (ControlFlow 0 635283) 621638) anon41_Else_correct))))))
(let ((anon39_Else_correct  (=> (not $t25) (and (=> (= (ControlFlow 0 621612) 635283) anon40_Then_correct) (=> (= (ControlFlow 0 621612) 621624) anon40_Else_correct)))))
(let ((anon38_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= $t21 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t22 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $t23 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t24 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (=> (= (ControlFlow 0 621606) (- 0 885327)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) $t21))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) $t21)) (and (=> (= (ControlFlow 0 621606) (- 0 885338)) (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (and (=> (= (ControlFlow 0 621606) (- 0 885347)) (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) $t21)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) $t21) (=> (= $t25  (or (or (or (or (= $t21 0) (= $t21 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) $t21)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_57736| _$t2)) 32)))) (and (=> (= (ControlFlow 0 621606) 635389) anon39_Then_correct) (=> (= (ControlFlow 0 621606) 621612) anon39_Else_correct)))))))))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct  (=> (and (and (not $abort_flag@5) (= $abort_flag@6 $abort_flag@5)) (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@1) (= $abort_code@7 $abort_code@6))) (and (=> (= (ControlFlow 0 621336) 635403) anon38_Then_correct) (=> (= (ControlFlow 0 621336) 621606) anon38_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct  (=> (= $abort_flag@6 true) (=> (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@2) (= $abort_code@7 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1)) (and (=> (= (ControlFlow 0 621258) 635403) anon38_Then_correct) (=> (= (ControlFlow 0 621258) 621606) anon38_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory@1)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 $abort_code@6) (= (ControlFlow 0 621350) 621258))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct  (=> (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory) (=> (and (= $abort_flag@5 true) (= $abort_code@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 621402) 621350) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 621402) 621336) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 621400) 621402)) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_233426 (|Store__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1))) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory@0)) (and (= $abort_flag@5 $abort_flag@4) (= $abort_code@6 $abort_code@5))) (and (=> (= (ControlFlow 0 621326) 621350) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 621326) 621336) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct  (=> (and (not $abort_flag@4) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 ($1_VASPDomain_VASPDomains |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1|))) (and (=> (= (ControlFlow 0 621304) 621400) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct) (=> (= (ControlFlow 0 621304) 621326) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct  (=> $abort_flag@4 (=> (and (and (= $abort_code@5 $abort_code@5) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 $abort_code@5) (= (ControlFlow 0 621416) 621258))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((|inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| (Vec_175296 (MapConstVec_158669 DefaultVecElem_158669) 0)) (and (=> (= (ControlFlow 0 621284) 621416) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct) (=> (= (ControlFlow 0 621284) 621304) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct  (=> (and inline$$Not$2$dst@1 (= (ControlFlow 0 621290) 621284)) |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct  (=> (not inline$$Not$2$dst@1) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= (ControlFlow 0 621252) 621258))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 6)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 621236) 621290) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct) (=> (= (ControlFlow 0 621236) 621252) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1)) (= (ControlFlow 0 621196) 621236)) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct  (=> (not inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0) (=> (and (and (|$IsValid'address'| inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0)) (= (ControlFlow 0 621202) 621196))) inline$$Not$2$anon0_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct  (=> (and inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (= 5 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)) (= 3 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)))) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= (ControlFlow 0 621468) 621258))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct  (=> (= inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)))))) (and (=> (= (ControlFlow 0 621140) 621468) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct) (=> (= (ControlFlow 0 621140) 621202) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct))))))
(let ((anon37_Else_correct  (=> (and (and (not $abort_flag@4) (= $t19 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= $t20 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 621472) 621140))) inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct  (=> (not $abort_flag@3) (=> (and (= $abort_code@5 $abort_code@4) (= $abort_flag@4 $abort_flag@3)) (and (=> (= (ControlFlow 0 620333) 635417) anon37_Then_correct) (=> (= (ControlFlow 0 620333) 621472) anon37_Else_correct))))))
(let ((inline$$1_DualAttestation_publish_credential$0$L3_correct  (=> (and (= $abort_code@5 inline$$1_DualAttestation_publish_credential$0$$t11@1) (= $abort_flag@4 true)) (and (=> (= (ControlFlow 0 620037) 635417) anon37_Then_correct) (=> (= (ControlFlow 0 620037) 621472) anon37_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@4) (= (ControlFlow 0 620347) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 620399) 620347) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 620399) 620333) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_225800| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 620397) 620399)) inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_225800| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (= $1_DualAttestation_Credential_$memory@0 ($Memory_225800 (|Store__T@[Int]Bool_| (|domain#$Memory_225800| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_225800| $1_DualAttestation_Credential_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_DualAttestation_publish_credential$0$$t24@1)))) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 620323) 620347) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 620323) 620333) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct  (=> (and (not $abort_flag@2) (= inline$$1_DualAttestation_publish_credential$0$$t24@1 ($1_DualAttestation_Credential _$t3 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 620301) 620397) inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct) (=> (= (ControlFlow 0 620301) 620323) inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 620413) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 620271) 620413) inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct) (=> (= (ControlFlow 0 620271) 620301) inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 620277) 620271)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 620427) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 620189) 620427) inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct) (=> (= (ControlFlow 0 620189) 620277) inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct  (=> (not $abort_flag@2) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 620195) 620189)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 620441) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (Vec_57736 (MapConstVec_16957 DefaultVecElem_16957) 0)) (and (=> (= (ControlFlow 0 620099) 620441) inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct) (=> (= (ControlFlow 0 620099) 620195) inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 620105) 620099)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 $abort_code@3) (= (ControlFlow 0 620455) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (Vec_57736 (MapConstVec_16957 DefaultVecElem_16957) 0)) (and (=> (= (ControlFlow 0 620063) 620455) inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct) (=> (= (ControlFlow 0 620063) 620105) inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 620069) 620063)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= inline$$1_DualAttestation_publish_credential$0$$t18@0 inline$$1_DualAttestation_publish_credential$0$$t18@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t18@0) (= (ControlFlow 0 620031) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_DualAttestation_publish_credential$0$$t18@0) (= inline$$1_DualAttestation_publish_credential$0$$t18@0 6)) (and (= inline$$1_DualAttestation_publish_credential$0$$t18@0 inline$$1_DualAttestation_publish_credential$0$$t18@0) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 620015) 620069) inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct) (=> (= (ControlFlow 0 620015) 620031) inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_DualAttestation_publish_credential$0$$t15@1)) (= (ControlFlow 0 619975) 620015)) inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t13@0) (=> (and (and (|$IsValid'address'| inline$$1_DualAttestation_publish_credential$0$$t14@0) (= inline$$1_DualAttestation_publish_credential$0$$t14@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_DualAttestation_publish_credential$0$$t15@1 (|Select__T@[Int]Bool_| (|domain#$Memory_225800| $1_DualAttestation_Credential_$memory) inline$$1_DualAttestation_publish_credential$0$$t14@0)) (= (ControlFlow 0 619981) 619975))) inline$$Not$1$anon0_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t13@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) 1)) (= 3 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (= inline$$1_DualAttestation_publish_credential$0$$t11@0 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t11@0) (= (ControlFlow 0 620527) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t10@0) (=> (and (= inline$$1_DualAttestation_publish_credential$0$$t12@0 (|$addr#$signer| _$t0)) (= inline$$1_DualAttestation_publish_credential$0$$t13@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t12@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))) (and (=> (= (ControlFlow 0 619919) 620527) inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct) (=> (= (ControlFlow 0 619919) 619981) inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct))))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t10@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (and (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 2))) (= 3 inline$$1_DualAttestation_publish_credential$0$$t11@0))) (= inline$$1_DualAttestation_publish_credential$0$$t11@0 inline$$1_DualAttestation_publish_credential$0$$t11@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@1 inline$$1_DualAttestation_publish_credential$0$$t11@0) (= (ControlFlow 0 620583) 620037))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon0_correct  (=> (= inline$$1_DualAttestation_publish_credential$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (and (= inline$$1_DualAttestation_publish_credential$0$$t6@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t5@0))) (= inline$$1_DualAttestation_publish_credential$0$$t7@0 (|$addr#$signer| _$t0))) (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= _$t0 _$t0))) (and (and (= _$t3 _$t3) (= inline$$1_DualAttestation_publish_credential$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_DualAttestation_publish_credential$0$$t9@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0))) (= inline$$1_DualAttestation_publish_credential$0$$t10@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0)) (and (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t9@0 2)))))))) (and (=> (= (ControlFlow 0 619861) 620583) inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct) (=> (= (ControlFlow 0 619861) 619919) inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct))))))
(let ((anon36_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= $t16 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t17 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) $t16)))) (and (= $t18 (|$addr#$signer| _$t0)) (= (ControlFlow 0 620587) 619861))) inline$$1_DualAttestation_publish_credential$0$anon0_correct))))
(let ((anon35_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 618868) 635431) anon36_Then_correct) (=> (= (ControlFlow 0 618868) 620587) anon36_Else_correct)))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Else_correct  (=> (and (and (not $abort_flag@1) (= $abort_code@3 $abort_code@2)) (and (= $1_VASP_ParentVASP_$memory@3 $1_VASP_ParentVASP_$memory@1) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 618619) 635445) anon35_Then_correct) (=> (= (ControlFlow 0 618619) 618868) anon35_Else_correct)))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct  (=> (= $abort_code@3 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1) (=> (and (= $1_VASP_ParentVASP_$memory@3 $1_VASP_ParentVASP_$memory@2) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 618573) 635445) anon35_Then_correct) (=> (= (ControlFlow 0 618573) 618868) anon35_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Then_correct  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@1)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 $abort_code@2) (= (ControlFlow 0 618633) 618573))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 618685) 618633) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Then_correct) (=> (= (ControlFlow 0 618685) 618619) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 618683) 618685)) inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then$1_correct)))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_VASP_ParentVASP_$memory@0 ($Memory_233815 (|Store__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_233815| $1_VASP_ParentVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_VASP_publish_parent_vasp_credential$0$$t20@1))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 618609) 618633) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Then_correct) (=> (= (ControlFlow 0 618609) 618619) inline$$1_VASP_publish_parent_vasp_credential$0$anon20_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (|$IsValid'u64'| 0) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t20@1 ($1_VASP_ParentVASP 0))) (and (=> (= (ControlFlow 0 618587) 618683) inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Then_correct) (=> (= (ControlFlow 0 618587) 618609) inline$$1_VASP_publish_parent_vasp_credential$0$anon19_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Else_correct  (=> (not inline$$Not$0$dst@1) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= (ControlFlow 0 618567) 618573))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0 6)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t18@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 618551) 618587) inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Then_correct) (=> (= (ControlFlow 0 618551) 618567) inline$$1_VASP_publish_parent_vasp_credential$0$anon18_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_VASP_publish_parent_vasp_credential$0$$t15@0)) (= (ControlFlow 0 618515) 618551)) inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else$1_correct)))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else_correct  (=> (and (not inline$$1_VASP_publish_parent_vasp_credential$0$$t13@0) (|$IsValid'address'| inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0)) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t15@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0) (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) inline$$1_VASP_publish_parent_vasp_credential$0$$t14@0))) (= (ControlFlow 0 618521) 618515))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Then_correct  (=> (and inline$$1_VASP_publish_parent_vasp_credential$0$$t13@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) (= 5 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) 5)) (= 3 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)))) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= (ControlFlow 0 618737) 618573))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Else_correct  (=> (not inline$$1_VASP_publish_parent_vasp_credential$0$$t11@0) (=> (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t13@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t12@0)) 5))))) (and (=> (= (ControlFlow 0 618441) 618737) inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Then_correct) (=> (= (ControlFlow 0 618441) 618521) inline$$1_VASP_publish_parent_vasp_credential$0$anon17_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Then_correct  (=> (and inline$$1_VASP_publish_parent_vasp_credential$0$$t11@0 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) (= 5 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) 1)) (= 3 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)))) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= (ControlFlow 0 618809) 618573))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Else_correct  (=> (not inline$$1_VASP_publish_parent_vasp_credential$0$$t8@0) (=> (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0 (|$addr#$signer| _$t0)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t11@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_parent_vasp_credential$0$$t10@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))) (and (=> (= (ControlFlow 0 618395) 618809) inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Then_correct) (=> (= (ControlFlow 0 618395) 618441) inline$$1_VASP_publish_parent_vasp_credential$0$anon16_Else_correct))))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Then_correct  (=> inline$$1_VASP_publish_parent_vasp_credential$0$$t8@0 (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0)) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory)) (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t9@1 inline$$1_VASP_publish_parent_vasp_credential$0$$t9@0) (= (ControlFlow 0 618835) 618573))) inline$$1_VASP_publish_parent_vasp_credential$0$L3_correct)))))
(let ((inline$$1_VASP_publish_parent_vasp_credential$0$anon0_correct  (=> (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t6@0 (|$addr#$signer| _$t0))) (=> (and (and (= inline$$1_VASP_publish_parent_vasp_credential$0$$t7@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= _$t0 _$t0) (= inline$$1_VASP_publish_parent_vasp_credential$0$$t8@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 618337) 618835) inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Then_correct) (=> (= (ControlFlow 0 618337) 618395) inline$$1_VASP_publish_parent_vasp_credential$0$anon15_Else_correct))))))
(let ((anon34_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t13 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t14 (|$addr#$signer| _$t0))) (and (= $t15 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 618839) 618337))) inline$$1_VASP_publish_parent_vasp_credential$0$anon0_correct))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)) (and (=> (= (ControlFlow 0 617499) 635459) anon34_Then_correct) (=> (= (ControlFlow 0 617499) 618839) anon34_Else_correct))))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon9_Then_correct  (=> inline$$1_Roles_new_parent_vasp_role$0$$t9@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)) (and (= inline$$1_Roles_new_parent_vasp_role$0$$t6@0 inline$$1_Roles_new_parent_vasp_role$0$$t6@0) (= (ControlFlow 0 617493) 617499))) inline$$1_Roles_new_parent_vasp_role$0$L2_correct))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon8_Then_correct  (=> (and (and inline$$1_Roles_new_parent_vasp_role$0$$t5@0 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) (= 5 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) 1)) (= 3 inline$$1_Roles_new_parent_vasp_role$0$$t6@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 inline$$1_Roles_new_parent_vasp_role$0$$t6@0)))) (and (= inline$$1_Roles_new_parent_vasp_role$0$$t6@0 inline$$1_Roles_new_parent_vasp_role$0$$t6@0) (= (ControlFlow 0 617571) 617499))) inline$$1_Roles_new_parent_vasp_role$0$L2_correct)))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon7_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 5) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 617451) 635459) anon34_Then_correct) (=> (= (ControlFlow 0 617451) 618839) anon34_Else_correct))))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon10_Else_correct  (=> (and (and (not |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_221004 (|Store__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_221004| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 617425) 617451))) inline$$1_Roles_new_parent_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon10_Then_correct  (=> (and (and |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_221004 (|Store__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_new_parent_vasp_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 617465) 617451))) inline$$1_Roles_new_parent_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon9_Else_correct  (=> (not inline$$1_Roles_new_parent_vasp_role$0$$t9@0) (and (=> (= (ControlFlow 0 617411) 617465) inline$$1_Roles_new_parent_vasp_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 617411) 617425) inline$$1_Roles_new_parent_vasp_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon8_Else_correct  (=> (and (not inline$$1_Roles_new_parent_vasp_role$0$$t5@0) (|$IsValid'u64'| 5)) (=> (and (and (= inline$$1_Roles_new_parent_vasp_role$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 5 0) (= inline$$1_Roles_new_parent_vasp_role$0$$t8@0 173345816))) (and (=> (= 5 1) (= inline$$1_Roles_new_parent_vasp_role$0$$t8@0 186537453)) (= inline$$1_Roles_new_parent_vasp_role$0$$t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 617405) 617493) inline$$1_Roles_new_parent_vasp_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 617405) 617411) inline$$1_Roles_new_parent_vasp_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_new_parent_vasp_role$0$anon0_correct  (=> (and (= inline$$1_Roles_new_parent_vasp_role$0$$t2@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_parent_vasp_role$0$$t3@0 (|$addr#$signer| _$t0))) (=> (and (and (= _$t0 _$t0) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_Roles_new_parent_vasp_role$0$$t4@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_parent_vasp_role$0$$t5@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) inline$$1_Roles_new_parent_vasp_role$0$$t4@0)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))) (and (=> (= (ControlFlow 0 617339) 617571) inline$$1_Roles_new_parent_vasp_role$0$anon8_Then_correct) (=> (= (ControlFlow 0 617339) 617405) inline$$1_Roles_new_parent_vasp_role$0$anon8_Else_correct))))))
(let ((anon33_Else_correct  (=> (not false) (=> (and (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= $t11 (|$addr#$signer| _$t0))) (and (= $t12 (|$addr#$signer| _$t0)) (= (ControlFlow 0 617575) 617339))) inline$$1_Roles_new_parent_vasp_role$0$anon0_correct))))
(let ((anon33_Then_correct true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer _$t1)) (and (=> (= (ControlFlow 0 616768) 635473) anon33_Then_correct) (=> (= (ControlFlow 0 616768) 617575) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not $t8) (= (ControlFlow 0 616774) 616768)) inline$$1_DiemAccount_create_signer$0$anon0_correct)))
(let ((anon0$1_correct  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@3)) 0)) (= addr@@3 173345816)))
 :qid |Rolesbpl.33031:20|
 :skolemid |1471|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@4)) 1)) (= addr@@4 186537453)))
 :qid |Rolesbpl.33039:20|
 :skolemid |1472|
)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |Rolesbpl.33047:20|
 :skolemid |1473|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |Rolesbpl.33051:20|
 :skolemid |1474|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@7)) 2))))))
 :qid |Rolesbpl.33055:20|
 :skolemid |1475|
))))) (=> (and (and (and (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |Rolesbpl.33059:20|
 :skolemid |1476|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |Rolesbpl.33063:20|
 :skolemid |1477|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@10)) 2)))))
 :qid |Rolesbpl.33067:20|
 :skolemid |1478|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |Rolesbpl.33071:20|
 :skolemid |1479|
)))) (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_225433| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@12)) 4))))
 :qid |Rolesbpl.33075:20|
 :skolemid |1480|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_225533| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |Rolesbpl.33079:20|
 :skolemid |1481|
))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_225533| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |Rolesbpl.33083:20|
 :skolemid |1482|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_225533| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (not (= (|l#Vec_174600| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_225533| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |Rolesbpl.33087:20|
 :skolemid |1483|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221191| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221191| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221284| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221370| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221443| $1_DiemSystem_CapabilityHolder_$memory) 173345816))))) (and (and (let (($range_0 ($Range 0 (|l#Vec_174812| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_221370| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_221370| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_221370| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i1)))) 3))))
 :qid |Rolesbpl.33107:151|
 :skolemid |1484|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221514| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_287985| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_287985| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |Rolesbpl.33116:104|
 :skolemid |1485|
))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@0 Int) (mint_cap_owner2@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@0) (=> (|$IsValid'address'| mint_cap_owner2@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_288049| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_288049| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner2@@0)) (= mint_cap_owner1@@0 mint_cap_owner2@@0))))
 :qid |Rolesbpl.33120:104|
 :skolemid |1486|
))))))) (and (and (and (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@1 Int) (mint_cap_owner2@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@1) (=> (|$IsValid'address'| mint_cap_owner2@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_288113| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_288113| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@1)) (= mint_cap_owner1@@1 mint_cap_owner2@@1))))
 :qid |Rolesbpl.33124:88|
 :skolemid |1487|
))) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_287985| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |Rolesbpl.33128:20|
 :skolemid |1488|
))) (and (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_288049| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |Rolesbpl.33132:20|
 :skolemid |1489|
)) (forall ((addr3@@1 Int) ) (!  (=> (|$IsValid'address'| addr3@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_288113| |$1_Diem_MintCapability'#0'_$memory|) addr3@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |Rolesbpl.33136:20|
 :skolemid |1490|
)))) (and (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_294145| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Rolesbpl.33140:20|
 :skolemid |1491|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_294226| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Rolesbpl.33144:20|
 :skolemid |1492|
))) (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_294307| |$1_Diem_Preburn'#0'_$memory|) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Rolesbpl.33148:20|
 :skolemid |1493|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221682| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221753| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221921| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_233915| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |Rolesbpl.33172:20|
 :skolemid |1494|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_221992| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222089| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_225800| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |Rolesbpl.33184:20|
 :skolemid |1495|
))))))) (=> (and (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222173| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222257| $1_ChainId_ChainId_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222328| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) 173345816))))))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222328| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@21) (or (= (|l#Vec_174639| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0) (and (not (= (|l#Vec_174639| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (= addr@@21 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)))))))
 :qid |Rolesbpl.33212:20|
 :skolemid |1496|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@22) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@22) (= (|l#Vec_174678| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0)) (and (not (= (|l#Vec_174678| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0)) (= addr@@22 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0)))))))
 :qid |Rolesbpl.33216:20|
 :skolemid |1497|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222642| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@23)))
 :qid |Rolesbpl.33228:20|
 :skolemid |1498|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@24)  (and (= addr@@24 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@24))))
 :qid |Rolesbpl.33232:20|
 :skolemid |1499|
)))) (and (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_222642| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@25)  (and (= addr@@25 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@25))))
 :qid |Rolesbpl.33236:20|
 :skolemid |1500|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_233341| $1_VASPDomain_VASPDomainManager_$memory) addr@@26)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@26)) 1))))
 :qid |Rolesbpl.33240:20|
 :skolemid |1501|
))) (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (= (|Select__T@[Int]Bool_| (|domain#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) addr@@27)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@27)) 5))))
 :qid |Rolesbpl.33244:20|
 :skolemid |1502|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@28)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@28)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@28)) 2)))))
 :qid |Rolesbpl.33248:20|
 :skolemid |1503|
)))))) (and (and (and (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (= (|Select__T@[Int]Bool_| (|domain#$Memory_233560| $1_DesignatedDealer_Dealer_$memory) addr@@29)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@29)) 2))))
 :qid |Rolesbpl.33252:20|
 :skolemid |1504|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_225800| $1_DualAttestation_Credential_$memory) addr@@30)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@30)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@30)) 5)))))
 :qid |Rolesbpl.33256:20|
 :skolemid |1505|
))) (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (= (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) addr@@31)))
 :qid |Rolesbpl.33260:20|
 :skolemid |1506|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) addr@@32)))
 :qid |Rolesbpl.33264:20|
 :skolemid |1507|
)))) (and (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@33)))
 :qid |Rolesbpl.33268:20|
 :skolemid |1508|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@34)))
 :qid |Rolesbpl.33272:20|
 :skolemid |1509|
))) (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) addr@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) addr@@35)))
 :qid |Rolesbpl.33276:20|
 :skolemid |1510|
)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_221191| $1_SlidingNonce_SlidingNonce_$memory) addr@@36)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@36)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@36)) 1)))))
 :qid |Rolesbpl.33280:20|
 :skolemid |1511|
))))) (and (and (and (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (= (|Select__T@[Int]Bool_| (|domain#$Memory_225533| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@37)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@37)) 3))))
 :qid |Rolesbpl.33284:20|
 :skolemid |1512|
)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (= (|Select__T@[Int]Bool_| (|domain#$Memory_225433| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@38)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@38)) 4))))
 :qid |Rolesbpl.33288:20|
 :skolemid |1513|
))) (and (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (= (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) addr@@39)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@39)) 5))))
 :qid |Rolesbpl.33292:20|
 :skolemid |1514|
)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (= (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) addr@@40)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) addr@@40)) 6))))
 :qid |Rolesbpl.33296:20|
 :skolemid |1515|
)))) (and (and (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_322192| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@41) (or (|Select__T@[Int]Bool_| (|domain#$Memory_233815| $1_VASP_ParentVASP_$memory) addr@@41) (|Select__T@[Int]Bool_| (|domain#$Memory_233915| $1_VASP_ChildVASP_$memory) addr@@41))))
 :qid |Rolesbpl.33300:20|
 :skolemid |1516|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222713| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222797| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_220875| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))))))) (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))) (and (and (and (|$IsValid'vec'u8''| _$t3) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |Rolesbpl.33343:20|
 :skolemid |1517|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_220322| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |Rolesbpl.33347:20|
 :skolemid |1518|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1) 10000000000))))
 :qid |Rolesbpl.33351:20|
 :skolemid |1519|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_221598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1))
)))) (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@2) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2) 10000000000))))
 :qid |Rolesbpl.33355:20|
 :skolemid |1520|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_221837| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@3)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@3) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@3)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@3) 10000000000))))
 :qid |Rolesbpl.33359:20|
 :skolemid |1521|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_287684| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) $a_0@@4)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@4) (and (and (let (($range_1 ($Range 0 (|l#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@122 $i_2))
(<= (|l#Vec_57736| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)) i@@122))) 63)))
 :qid |Rolesbpl.33364:140|
 :skolemid |1522|
))) (let (($range_3 ($Range 0 (|l#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@123 $i_4))
(let (($range_5 ($Range (+ i@@123 1) (|l#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@39 $i_6))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)) i@@123)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)) j@@39))))))
 :qid |Rolesbpl.33366:98|
 :skolemid |1523|
)))))
 :qid |Rolesbpl.33365:202|
 :skolemid |1524|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))
(forall (($i_8 Int) ) (!  (=> (InRangeVec_158649 $range_7 $i_8) (let (($elem (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| $range_7) $i_8)))
(<= (|l#Vec_57736| (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |Rolesbpl.33367:229|
 :skolemid |1525|
))))))
 :qid |Rolesbpl.33363:20|
 :skolemid |1526|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_233426| $1_VASPDomain_VASPDomains_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_233915| $1_VASP_ChildVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@5))
 :qid |Rolesbpl.33371:20|
 :skolemid |1527|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_233915| $1_VASP_ChildVASP_$memory) $a_0@@5))
)))))) (and (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_233815| $1_VASP_ParentVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@6))
 :qid |Rolesbpl.33375:20|
 :skolemid |1528|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_233815| $1_VASP_ParentVASP_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_225800| $1_DualAttestation_Credential_$memory) $a_0@@7)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@7))
 :qid |Rolesbpl.33379:20|
 :skolemid |1529|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_225800| $1_DualAttestation_Credential_$memory) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@8))
 :qid |Rolesbpl.33383:20|
 :skolemid |1530|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_222399| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) $a_0@@9)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@9) (and (<= (|l#Vec_174678| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1) (<= (|l#Vec_174639| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1))))
 :qid |Rolesbpl.33387:20|
 :skolemid |1531|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_233241| $1_DiemAccount_DiemAccount_$memory) $a_0@@9))
)))) (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@10)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@10))
 :qid |Rolesbpl.33391:20|
 :skolemid |1532|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_222571| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@11))
 :qid |Rolesbpl.33395:20|
 :skolemid |1533|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_225915| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@11))
))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@12)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@12))
 :qid |Rolesbpl.33399:20|
 :skolemid |1534|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_225975| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@13)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@13))
 :qid |Rolesbpl.33403:20|
 :skolemid |1535|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_316315| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@13))
))))) (and (and (and (= $t6 (|$addr#$signer| _$t0)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2))) (and (and (= _$t3 _$t3) (= _$t4 _$t4)) (and (= $t7 (|$addr#$signer| _$t0)) (= $t8  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_221004| $1_Roles_RoleId_$memory) $t7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_221004| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))))))) (and (=> (= (ControlFlow 0 616730) 635545) anon32_Then_correct) (=> (= (ControlFlow 0 616730) 616774) anon32_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_174514| stream@@4) 0) (forall ((v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| stream@@4) v@@63) 0)
 :qid |Rolesbpl.159:13|
 :skolemid |4|
))))
 :qid |Rolesbpl.3311:13|
 :skolemid |119|
))) (= (ControlFlow 0 614472) 616730)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 879290) 614472) inline$$InitEventStore$0$anon0_correct)))
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
(declare-datatypes ((T@$Memory_212959 0)) ((($Memory_212959 (|domain#$Memory_212959| |T@[Int]Bool|) (|contents#$Memory_212959| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_176524 0)) (((Vec_176524 (|v#Vec_176524| |T@[Int]#0|) (|l#Vec_176524| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_222713 0)) ((($Memory_222713 (|domain#$Memory_222713| |T@[Int]Bool|) (|contents#$Memory_222713| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_222642 0)) ((($Memory_222642 (|domain#$Memory_222642| |T@[Int]Bool|) (|contents#$Memory_222642| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_222399 0)) ((($Memory_222399 (|domain#$Memory_222399| |T@[Int]Bool|) (|contents#$Memory_222399| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_222328 0)) ((($Memory_222328 (|domain#$Memory_222328| |T@[Int]Bool|) (|contents#$Memory_222328| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_222257 0)) ((($Memory_222257 (|domain#$Memory_222257| |T@[Int]Bool|) (|contents#$Memory_222257| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_233560 0)) ((($Memory_233560 (|domain#$Memory_233560| |T@[Int]Bool|) (|contents#$Memory_233560| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_222089 0)) ((($Memory_222089 (|domain#$Memory_222089| |T@[Int]Bool|) (|contents#$Memory_222089| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_233815 0)) ((($Memory_233815 (|domain#$Memory_233815| |T@[Int]Bool|) (|contents#$Memory_233815| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_233915 0)) ((($Memory_233915 (|domain#$Memory_233915| |T@[Int]Bool|) (|contents#$Memory_233915| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_233341 0)) ((($Memory_233341 (|domain#$Memory_233341| |T@[Int]Bool|) (|contents#$Memory_233341| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_200740 0)) (((Vec_200740 (|v#Vec_200740| |T@[Int]$1_XDX_XDX|) (|l#Vec_200740| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_203420 0)) (((Vec_203420 (|v#Vec_203420| |T@[Int]$1_XUS_XUS|) (|l#Vec_203420| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_302419 0)) ((($Memory_302419 (|domain#$Memory_302419| |T@[Int]Bool|) (|contents#$Memory_302419| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_302132 0)) ((($Memory_302132 (|domain#$Memory_302132| |T@[Int]Bool|) (|contents#$Memory_302132| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_221921 0)) ((($Memory_221921 (|domain#$Memory_221921| |T@[Int]Bool|) (|contents#$Memory_221921| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_221682 0)) ((($Memory_221682 (|domain#$Memory_221682| |T@[Int]Bool|) (|contents#$Memory_221682| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_222571 0)) ((($Memory_222571 (|domain#$Memory_222571| |T@[Int]Bool|) (|contents#$Memory_222571| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_288113 0)) ((($Memory_288113 (|domain#$Memory_288113| |T@[Int]Bool|) (|contents#$Memory_288113| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_288049 0)) ((($Memory_288049 (|domain#$Memory_288049| |T@[Int]Bool|) (|contents#$Memory_288049| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_287985 0)) ((($Memory_287985 (|domain#$Memory_287985| |T@[Int]Bool|) (|contents#$Memory_287985| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_288480 0)) ((($Memory_288480 (|domain#$Memory_288480| |T@[Int]Bool|) (|contents#$Memory_288480| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_288393 0)) ((($Memory_288393 (|domain#$Memory_288393| |T@[Int]Bool|) (|contents#$Memory_288393| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_316315 0)) ((($Memory_316315 (|domain#$Memory_316315| |T@[Int]Bool|) (|contents#$Memory_316315| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_294307 0)) ((($Memory_294307 (|domain#$Memory_294307| |T@[Int]Bool|) (|contents#$Memory_294307| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_225975 0)) ((($Memory_225975 (|domain#$Memory_225975| |T@[Int]Bool|) (|contents#$Memory_225975| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_294226 0)) ((($Memory_294226 (|domain#$Memory_294226| |T@[Int]Bool|) (|contents#$Memory_294226| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_221753 0)) ((($Memory_221753 (|domain#$Memory_221753| |T@[Int]Bool|) (|contents#$Memory_221753| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_225915 0)) ((($Memory_225915 (|domain#$Memory_225915| |T@[Int]Bool|) (|contents#$Memory_225915| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_294145 0)) ((($Memory_294145 (|domain#$Memory_294145| |T@[Int]Bool|) (|contents#$Memory_294145| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_221992 0)) ((($Memory_221992 (|domain#$Memory_221992| |T@[Int]Bool|) (|contents#$Memory_221992| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_283606 0)) ((($Memory_283606 (|domain#$Memory_283606| |T@[Int]Bool|) (|contents#$Memory_283606| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_283519 0)) ((($Memory_283519 (|domain#$Memory_283519| |T@[Int]Bool|) (|contents#$Memory_283519| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_283432 0)) ((($Memory_283432 (|domain#$Memory_283432| |T@[Int]Bool|) (|contents#$Memory_283432| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_283345 0)) ((($Memory_283345 (|domain#$Memory_283345| |T@[Int]Bool|) (|contents#$Memory_283345| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_283258 0)) ((($Memory_283258 (|domain#$Memory_283258| |T@[Int]Bool|) (|contents#$Memory_283258| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_283171 0)) ((($Memory_283171 (|domain#$Memory_283171| |T@[Int]Bool|) (|contents#$Memory_283171| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_221443 0)) ((($Memory_221443 (|domain#$Memory_221443| |T@[Int]Bool|) (|contents#$Memory_221443| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_282098 0)) ((($Memory_282098 (|domain#$Memory_282098| |T@[Int]Bool|) (|contents#$Memory_282098| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_221284 0)) ((($Memory_221284 (|domain#$Memory_221284| |T@[Int]Bool|) (|contents#$Memory_221284| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_220875 0)) ((($Memory_220875 (|domain#$Memory_220875| |T@[Int]Bool|) (|contents#$Memory_220875| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_221191 0)) ((($Memory_221191 (|domain#$Memory_221191| |T@[Int]Bool|) (|contents#$Memory_221191| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_174678 0)) (((Vec_174678 (|v#Vec_174678| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_174678| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_174678) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_174639 0)) (((Vec_174639 (|v#Vec_174639| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_174639| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_174639) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_322192 0)) ((($Memory_322192 (|domain#$Memory_322192| |T@[Int]Bool|) (|contents#$Memory_322192| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_174639) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_57736 0)) (((Vec_57736 (|v#Vec_57736| |T@[Int]Int|) (|l#Vec_57736| Int) ) ) ))
(declare-sort |T@[Int]Vec_57736| 0)
(declare-datatypes ((T@Vec_174869 0)) (((Vec_174869 (|v#Vec_174869| |T@[Int]Vec_57736|) (|l#Vec_174869| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_174869) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_222173 0)) ((($Memory_222173 (|domain#$Memory_222173| |T@[Int]Bool|) (|contents#$Memory_222173| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_174869) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_221514 0)) ((($Memory_221514 (|domain#$Memory_221514| |T@[Int]Bool|) (|contents#$Memory_221514| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_57736) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_57736) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_222797 0)) ((($Memory_222797 (|domain#$Memory_222797| |T@[Int]Bool|) (|contents#$Memory_222797| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_57736) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_281965 0)) ((($Memory_281965 (|domain#$Memory_281965| |T@[Int]Bool|) (|contents#$Memory_281965| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_57736) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_233241 0)) ((($Memory_233241 (|domain#$Memory_233241| |T@[Int]Bool|) (|contents#$Memory_233241| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_57736) (|$base_url#$1_DualAttestation_Credential| T@Vec_57736) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_57736) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_225800 0)) ((($Memory_225800 (|domain#$Memory_225800| |T@[Int]Bool|) (|contents#$Memory_225800| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_175296 0)) (((Vec_175296 (|v#Vec_175296| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_175296| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_175296) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_233426 0)) ((($Memory_233426 (|domain#$Memory_233426| |T@[Int]Bool|) (|contents#$Memory_233426| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_175154 0)) (((Vec_175154 (|v#Vec_175154| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_175154| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_175154) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_294791 0)) ((($Memory_294791 (|domain#$Memory_294791| |T@[Int]Bool|) (|contents#$Memory_294791| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_175115 0)) (((Vec_175115 (|v#Vec_175115| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_175115| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_175115) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_294674 0)) ((($Memory_294674 (|domain#$Memory_294674| |T@[Int]Bool|) (|contents#$Memory_294674| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_175076 0)) (((Vec_175076 (|v#Vec_175076| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_175076| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_175076) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_294557 0)) ((($Memory_294557 (|domain#$Memory_294557| |T@[Int]Bool|) (|contents#$Memory_294557| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_57736) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_287684 0)) ((($Memory_287684 (|domain#$Memory_287684| |T@[Int]Bool|) (|contents#$Memory_287684| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_57736) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_221837 0)) ((($Memory_221837 (|domain#$Memory_221837| |T@[Int]Bool|) (|contents#$Memory_221837| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_57736) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_221598 0)) ((($Memory_221598 (|domain#$Memory_221598| |T@[Int]Bool|) (|contents#$Memory_221598| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_57736) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_57736) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_174600 0)) (((Vec_174600 (|v#Vec_174600| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_174600| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_174600) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_174812 0)) (((Vec_174812 (|v#Vec_174812| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_174812| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_174812) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_221370 0)) ((($Memory_221370 (|domain#$Memory_221370| |T@[Int]Bool|) (|contents#$Memory_221370| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_225533 0)) ((($Memory_225533 (|domain#$Memory_225533| |T@[Int]Bool|) (|contents#$Memory_225533| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_57736) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_225433 0)) ((($Memory_225433 (|domain#$Memory_225433| |T@[Int]Bool|) (|contents#$Memory_225433| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_221004 0)) ((($Memory_221004 (|domain#$Memory_221004| |T@[Int]Bool|) (|contents#$Memory_221004| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_220322 0)) ((($Memory_220322 (|domain#$Memory_220322| |T@[Int]Bool|) (|contents#$Memory_220322| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_57736) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_57736) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_57736) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_57736) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_57736) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_57736) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_57736) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_57736) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_57736) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_57736) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_174514 0)) (((Multiset_174514 (|v#Multiset_174514| |T@[$EventRep]Int|) (|l#Multiset_174514| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_174514| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_174514|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_420065 0)) ((($Mutation_420065 (|l#$Mutation_420065| T@$Location) (|p#$Mutation_420065| T@Vec_57736) (|v#$Mutation_420065| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_420020 0)) ((($Mutation_420020 (|l#$Mutation_420020| T@$Location) (|p#$Mutation_420020| T@Vec_57736) (|v#$Mutation_420020| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_307528 0)) ((($Mutation_307528 (|l#$Mutation_307528| T@$Location) (|p#$Mutation_307528| T@Vec_57736) (|v#$Mutation_307528| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_73543 0)) ((($Mutation_73543 (|l#$Mutation_73543| T@$Location) (|p#$Mutation_73543| T@Vec_57736) (|v#$Mutation_73543| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_300285 0)) ((($Mutation_300285 (|l#$Mutation_300285| T@$Location) (|p#$Mutation_300285| T@Vec_57736) (|v#$Mutation_300285| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_286256 0)) ((($Mutation_286256 (|l#$Mutation_286256| T@$Location) (|p#$Mutation_286256| T@Vec_57736) (|v#$Mutation_286256| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_220817 0)) ((($Mutation_220817 (|l#$Mutation_220817| T@$Location) (|p#$Mutation_220817| T@Vec_57736) (|v#$Mutation_220817| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_213590 0)) ((($Mutation_213590 (|l#$Mutation_213590| T@$Location) (|p#$Mutation_213590| T@Vec_57736) (|v#$Mutation_213590| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_57736) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_207847 0)) ((($Mutation_207847 (|l#$Mutation_207847| T@$Location) (|p#$Mutation_207847| T@Vec_57736) (|v#$Mutation_207847| T@Vec_57736) ) ) ))
(declare-datatypes ((T@$Mutation_206759 0)) ((($Mutation_206759 (|l#$Mutation_206759| T@$Location) (|p#$Mutation_206759| T@Vec_57736) (|v#$Mutation_206759| T@Vec_174869) ) ) ))
(declare-datatypes ((T@$Mutation_205050 0)) ((($Mutation_205050 (|l#$Mutation_205050| T@$Location) (|p#$Mutation_205050| T@Vec_57736) (|v#$Mutation_205050| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_204063 0)) ((($Mutation_204063 (|l#$Mutation_204063| T@$Location) (|p#$Mutation_204063| T@Vec_57736) (|v#$Mutation_204063| T@Vec_203420) ) ) ))
(declare-datatypes ((T@$Mutation_202370 0)) ((($Mutation_202370 (|l#$Mutation_202370| T@$Location) (|p#$Mutation_202370| T@Vec_57736) (|v#$Mutation_202370| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_201383 0)) ((($Mutation_201383 (|l#$Mutation_201383| T@$Location) (|p#$Mutation_201383| T@Vec_57736) (|v#$Mutation_201383| T@Vec_200740) ) ) ))
(declare-datatypes ((T@$Mutation_199690 0)) ((($Mutation_199690 (|l#$Mutation_199690| T@$Location) (|p#$Mutation_199690| T@Vec_57736) (|v#$Mutation_199690| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_198703 0)) ((($Mutation_198703 (|l#$Mutation_198703| T@$Location) (|p#$Mutation_198703| T@Vec_57736) (|v#$Mutation_198703| T@Vec_174600) ) ) ))
(declare-datatypes ((T@$Mutation_197048 0)) ((($Mutation_197048 (|l#$Mutation_197048| T@$Location) (|p#$Mutation_197048| T@Vec_57736) (|v#$Mutation_197048| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_196061 0)) ((($Mutation_196061 (|l#$Mutation_196061| T@$Location) (|p#$Mutation_196061| T@Vec_57736) (|v#$Mutation_196061| T@Vec_175296) ) ) ))
(declare-datatypes ((T@$Mutation_194383 0)) ((($Mutation_194383 (|l#$Mutation_194383| T@$Location) (|p#$Mutation_194383| T@Vec_57736) (|v#$Mutation_194383| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_193396 0)) ((($Mutation_193396 (|l#$Mutation_193396| T@$Location) (|p#$Mutation_193396| T@Vec_57736) (|v#$Mutation_193396| T@Vec_175076) ) ) ))
(declare-datatypes ((T@$Mutation_191687 0)) ((($Mutation_191687 (|l#$Mutation_191687| T@$Location) (|p#$Mutation_191687| T@Vec_57736) (|v#$Mutation_191687| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_190700 0)) ((($Mutation_190700 (|l#$Mutation_190700| T@$Location) (|p#$Mutation_190700| T@Vec_57736) (|v#$Mutation_190700| T@Vec_175115) ) ) ))
(declare-datatypes ((T@$Mutation_188991 0)) ((($Mutation_188991 (|l#$Mutation_188991| T@$Location) (|p#$Mutation_188991| T@Vec_57736) (|v#$Mutation_188991| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_188004 0)) ((($Mutation_188004 (|l#$Mutation_188004| T@$Location) (|p#$Mutation_188004| T@Vec_57736) (|v#$Mutation_188004| T@Vec_175154) ) ) ))
(declare-datatypes ((T@$Mutation_186295 0)) ((($Mutation_186295 (|l#$Mutation_186295| T@$Location) (|p#$Mutation_186295| T@Vec_57736) (|v#$Mutation_186295| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_185308 0)) ((($Mutation_185308 (|l#$Mutation_185308| T@$Location) (|p#$Mutation_185308| T@Vec_57736) (|v#$Mutation_185308| T@Vec_174812) ) ) ))
(declare-datatypes ((T@$Mutation_183508 0)) ((($Mutation_183508 (|l#$Mutation_183508| T@$Location) (|p#$Mutation_183508| T@Vec_57736) (|v#$Mutation_183508| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_182521 0)) ((($Mutation_182521 (|l#$Mutation_182521| T@$Location) (|p#$Mutation_182521| T@Vec_57736) (|v#$Mutation_182521| T@Vec_174678) ) ) ))
(declare-datatypes ((T@$Mutation_180856 0)) ((($Mutation_180856 (|l#$Mutation_180856| T@$Location) (|p#$Mutation_180856| T@Vec_57736) (|v#$Mutation_180856| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_179869 0)) ((($Mutation_179869 (|l#$Mutation_179869| T@$Location) (|p#$Mutation_179869| T@Vec_57736) (|v#$Mutation_179869| T@Vec_174639) ) ) ))
(declare-datatypes ((T@$Mutation_178156 0)) ((($Mutation_178156 (|l#$Mutation_178156| T@$Location) (|p#$Mutation_178156| T@Vec_57736) (|v#$Mutation_178156| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_177169 0)) ((($Mutation_177169 (|l#$Mutation_177169| T@$Location) (|p#$Mutation_177169| T@Vec_57736) (|v#$Mutation_177169| T@Vec_176524) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_176524 T@Vec_176524) Bool)
(declare-fun InRangeVec_157242 (T@Vec_176524 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_176524) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_176524 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_174639 T@Vec_174639) Bool)
(declare-fun InRangeVec_157443 (T@Vec_174639 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_174639) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_174639 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_174678 T@Vec_174678) Bool)
(declare-fun InRangeVec_157644 (T@Vec_174678 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_174678) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_174678 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_174812 T@Vec_174812) Bool)
(declare-fun InRangeVec_157845 (T@Vec_174812 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_57736 T@Vec_57736) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_174812) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_174812 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_175154 T@Vec_175154) Bool)
(declare-fun InRangeVec_158046 (T@Vec_175154 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_175154) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_175154 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_175115 T@Vec_175115) Bool)
(declare-fun InRangeVec_158247 (T@Vec_175115 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_175115) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_175115 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_175076 T@Vec_175076) Bool)
(declare-fun InRangeVec_158448 (T@Vec_175076 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_175076) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_175076 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_175296 T@Vec_175296) Bool)
(declare-fun InRangeVec_158649 (T@Vec_175296 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_175296) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_175296 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_174600 T@Vec_174600) Bool)
(declare-fun InRangeVec_158850 (T@Vec_174600 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_174600) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_174600 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_200740 T@Vec_200740) Bool)
(declare-fun InRangeVec_159051 (T@Vec_200740 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_200740) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_200740 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_203420 T@Vec_203420) Bool)
(declare-fun InRangeVec_159252 (T@Vec_203420 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_203420) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_203420 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_174869 T@Vec_174869) Bool)
(declare-fun InRangeVec_206182 (T@Vec_174869 Int) Bool)
(declare-fun |Select__T@[Int]Vec_57736_| (|T@[Int]Vec_57736| Int) T@Vec_57736)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_174869) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_57736) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_174869 T@Vec_57736) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_57736 T@Vec_57736) Bool)
(declare-fun InRangeVec_16728 (T@Vec_57736 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_57736) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_57736 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_57736 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_57736) T@Vec_57736)
(declare-fun $1_Hash_sha3 (T@Vec_57736) T@Vec_57736)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_57736) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_57736 T@Vec_57736 T@Vec_57736) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_174514_| (|T@[$1_Event_EventHandle]Multiset_174514| T@$1_Event_EventHandle) T@Multiset_174514)
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
(declare-fun IndexOfVec_57736 (T@Vec_57736 Int) Int)
(declare-fun IndexOfVec_174600 (T@Vec_174600 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_174639 (T@Vec_174639 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_174678 (T@Vec_174678 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_174812 (T@Vec_174812 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_174869 (T@Vec_174869 T@Vec_57736) Int)
(declare-fun IndexOfVec_175076 (T@Vec_175076 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_175115 (T@Vec_175115 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_175154 (T@Vec_175154 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_175296 (T@Vec_175296 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_176524 (T@Vec_176524 |T@#0|) Int)
(declare-fun IndexOfVec_200740 (T@Vec_200740 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_203420 (T@Vec_203420 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_174514| |T@[$1_Event_EventHandle]Multiset_174514|) |T@[$1_Event_EventHandle]Multiset_174514|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_57736| |T@[Int]Vec_57736| Int T@Vec_57736) |T@[Int]Vec_57736|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_57736| Int Int T@Vec_57736) |T@[Int]Vec_57736|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_57736| |T@[Int]Vec_57736| Int T@Vec_57736) |T@[Int]Vec_57736|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Rolesbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Rolesbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Rolesbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Rolesbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Rolesbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Rolesbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Rolesbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Rolesbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_176524) (v2 T@Vec_176524) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_176524| v1) (|l#Vec_176524| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_157242 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_176524| v2) i@@0)))
 :qid |Rolesbpl.615:13|
 :skolemid |17|
))))
 :qid |Rolesbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_176524) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_176524| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_157242 v@@4 i@@1) true)
 :qid |Rolesbpl.621:13|
 :skolemid |19|
))))
 :qid |Rolesbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_176524) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_157242 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@5) i@@3) e))
 :qid |Rolesbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_157242 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@5) j) e)))
 :qid |Rolesbpl.634:17|
 :skolemid |22|
)))))
 :qid |Rolesbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_174639) (v2@@0 T@Vec_174639) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_174639| v1@@0) (|l#Vec_174639| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_157443 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v2@@0) i@@4)))
 :qid |Rolesbpl.796:13|
 :skolemid |24|
))))
 :qid |Rolesbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_174639) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_174639| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_157443 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@6) i@@5)))
 :qid |Rolesbpl.802:13|
 :skolemid |26|
))))
 :qid |Rolesbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_174639) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_157443 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@7) i@@7) e@@0))
 :qid |Rolesbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_157443 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@7) j@@0) e@@0)))
 :qid |Rolesbpl.815:17|
 :skolemid |29|
)))))
 :qid |Rolesbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_174678) (v2@@1 T@Vec_174678) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_174678| v1@@1) (|l#Vec_174678| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_157644 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v2@@1) i@@8)))
 :qid |Rolesbpl.977:13|
 :skolemid |31|
))))
 :qid |Rolesbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_174678) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_174678| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_157644 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@8) i@@9)))
 :qid |Rolesbpl.983:13|
 :skolemid |33|
))))
 :qid |Rolesbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_174678) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_157644 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@9) i@@11) e@@1))
 :qid |Rolesbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_157644 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@9) j@@1) e@@1)))
 :qid |Rolesbpl.996:17|
 :skolemid |36|
)))))
 :qid |Rolesbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_174812) (v2@@2 T@Vec_174812) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_174812| v1@@2) (|l#Vec_174812| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_157845 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v2@@2) i@@12)))))
 :qid |Rolesbpl.1158:13|
 :skolemid |38|
))))
 :qid |Rolesbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_174812) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_174812| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_157845 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@10) i@@13)))
 :qid |Rolesbpl.1164:13|
 :skolemid |40|
))))
 :qid |Rolesbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_174812) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_157845 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |Rolesbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_157845 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |Rolesbpl.1177:17|
 :skolemid |43|
)))))
 :qid |Rolesbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_175154) (v2@@3 T@Vec_175154) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_175154| v1@@3) (|l#Vec_175154| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_158046 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v2@@3) i@@16)))))
 :qid |Rolesbpl.1339:13|
 :skolemid |45|
))))
 :qid |Rolesbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_175154) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_175154| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_158046 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@12) i@@17)))
 :qid |Rolesbpl.1345:13|
 :skolemid |47|
))))
 :qid |Rolesbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_175154) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_158046 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |Rolesbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_158046 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |Rolesbpl.1358:17|
 :skolemid |50|
)))))
 :qid |Rolesbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_175115) (v2@@4 T@Vec_175115) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_175115| v1@@4) (|l#Vec_175115| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_158247 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v2@@4) i@@20)))))
 :qid |Rolesbpl.1520:13|
 :skolemid |52|
))))
 :qid |Rolesbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_175115) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_175115| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_158247 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@14) i@@21)))
 :qid |Rolesbpl.1526:13|
 :skolemid |54|
))))
 :qid |Rolesbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_175115) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_158247 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |Rolesbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_158247 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |Rolesbpl.1539:17|
 :skolemid |57|
)))))
 :qid |Rolesbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_175076) (v2@@5 T@Vec_175076) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_175076| v1@@5) (|l#Vec_175076| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_158448 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v2@@5) i@@24)))))
 :qid |Rolesbpl.1701:13|
 :skolemid |59|
))))
 :qid |Rolesbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_175076) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_175076| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_158448 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@16) i@@25)))
 :qid |Rolesbpl.1707:13|
 :skolemid |61|
))))
 :qid |Rolesbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_175076) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_158448 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |Rolesbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_158448 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |Rolesbpl.1720:17|
 :skolemid |64|
)))))
 :qid |Rolesbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_175296) (v2@@6 T@Vec_175296) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_175296| v1@@6) (|l#Vec_175296| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_158649 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v2@@6) i@@28))))
 :qid |Rolesbpl.1882:13|
 :skolemid |66|
))))
 :qid |Rolesbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_175296) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_175296| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_158649 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@18) i@@29)))
 :qid |Rolesbpl.1888:13|
 :skolemid |68|
))))
 :qid |Rolesbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_175296) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_158649 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |Rolesbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_158649 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |Rolesbpl.1901:17|
 :skolemid |71|
)))))
 :qid |Rolesbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_174600) (v2@@7 T@Vec_174600) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_174600| v1@@7) (|l#Vec_174600| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_158850 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v2@@7) i@@32)))))
 :qid |Rolesbpl.2063:13|
 :skolemid |73|
))))
 :qid |Rolesbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_174600) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_174600| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_158850 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@20) i@@33)))
 :qid |Rolesbpl.2069:13|
 :skolemid |75|
))))
 :qid |Rolesbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_174600) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_158850 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |Rolesbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_158850 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |Rolesbpl.2082:17|
 :skolemid |78|
)))))
 :qid |Rolesbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_200740) (v2@@8 T@Vec_200740) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_200740| v1@@8) (|l#Vec_200740| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_159051 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v2@@8) i@@36)))
 :qid |Rolesbpl.2244:13|
 :skolemid |80|
))))
 :qid |Rolesbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_200740) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_200740| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_159051 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@22) i@@37)))
 :qid |Rolesbpl.2250:13|
 :skolemid |82|
))))
 :qid |Rolesbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_200740) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_159051 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@23) i@@39) e@@8))
 :qid |Rolesbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_159051 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@23) j@@8) e@@8)))
 :qid |Rolesbpl.2263:17|
 :skolemid |85|
)))))
 :qid |Rolesbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_203420) (v2@@9 T@Vec_203420) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_203420| v1@@9) (|l#Vec_203420| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_159252 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v2@@9) i@@40)))
 :qid |Rolesbpl.2425:13|
 :skolemid |87|
))))
 :qid |Rolesbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_203420) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_203420| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_159252 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@24) i@@41)))
 :qid |Rolesbpl.2431:13|
 :skolemid |89|
))))
 :qid |Rolesbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_203420) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_159252 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@25) i@@43) e@@9))
 :qid |Rolesbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_159252 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@25) j@@9) e@@9)))
 :qid |Rolesbpl.2444:17|
 :skolemid |92|
)))))
 :qid |Rolesbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_174869) (v2@@10 T@Vec_174869) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_174869| v1@@10) (|l#Vec_174869| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_206182 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v1@@10) i@@44) (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v2@@10) i@@44)))
 :qid |Rolesbpl.2606:13|
 :skolemid |94|
))))
 :qid |Rolesbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_174869) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_174869| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_206182 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@26) i@@45)))
 :qid |Rolesbpl.2612:13|
 :skolemid |96|
))))
 :qid |Rolesbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_174869) (e@@10 T@Vec_57736) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_206182 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@27) i@@47) e@@10))
 :qid |Rolesbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_206182 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@27) j@@10) e@@10)))
 :qid |Rolesbpl.2625:17|
 :skolemid |99|
)))))
 :qid |Rolesbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_57736) (v2@@11 T@Vec_57736) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_57736| v1@@11) (|l#Vec_57736| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_57736| v2@@11) i@@48)))
 :qid |Rolesbpl.2787:13|
 :skolemid |101|
))))
 :qid |Rolesbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_57736) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_57736| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_57736| v@@28) i@@49)))
 :qid |Rolesbpl.2793:13|
 :skolemid |103|
))))
 :qid |Rolesbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_57736) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@29) i@@51) e@@11))
 :qid |Rolesbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@29) j@@11) e@@11)))
 :qid |Rolesbpl.2806:17|
 :skolemid |106|
)))))
 :qid |Rolesbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_57736) (v2@@12 T@Vec_57736) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_57736| v1@@12) (|l#Vec_57736| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_57736| v2@@12) i@@52)))
 :qid |Rolesbpl.2968:13|
 :skolemid |108|
))))
 :qid |Rolesbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_57736) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_57736| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_57736| v@@30) i@@53)))
 :qid |Rolesbpl.2974:13|
 :skolemid |110|
))))
 :qid |Rolesbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_57736) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@31) i@@55) e@@12))
 :qid |Rolesbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@31) j@@12) e@@12)))
 :qid |Rolesbpl.2987:17|
 :skolemid |113|
)))))
 :qid |Rolesbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_57736) (v2@@13 T@Vec_57736) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |Rolesbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_57736) (v2@@14 T@Vec_57736) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |Rolesbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_57736) (k2 T@Vec_57736) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Rolesbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_57736) (s2 T@Vec_57736) (k1@@0 T@Vec_57736) (k2@@0 T@Vec_57736) (m1 T@Vec_57736) (m2 T@Vec_57736) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Rolesbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_174514| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_174514| stream) v@@32) 0)
 :qid |Rolesbpl.159:13|
 :skolemid |4|
))))
 :qid |Rolesbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Rolesbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |Rolesbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Rolesbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |Rolesbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Rolesbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |Rolesbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Rolesbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |Rolesbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Rolesbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |Rolesbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Rolesbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |Rolesbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Rolesbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |Rolesbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Rolesbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |Rolesbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Rolesbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |Rolesbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |Rolesbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |Rolesbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |Rolesbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |Rolesbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |Rolesbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |Rolesbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |Rolesbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |Rolesbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |Rolesbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |Rolesbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |Rolesbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |Rolesbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |Rolesbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |Rolesbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |Rolesbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |Rolesbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |Rolesbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |Rolesbpl.5153:36|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |Rolesbpl.14202:71|
 :skolemid |843|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |Rolesbpl.14571:46|
 :skolemid |844|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |Rolesbpl.14583:64|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |Rolesbpl.14595:75|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |Rolesbpl.14607:72|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |Rolesbpl.14640:55|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |Rolesbpl.14663:46|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |Rolesbpl.14945:49|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |Rolesbpl.15030:71|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |Rolesbpl.15043:91|
 :skolemid |852|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |Rolesbpl.15056:113|
 :skolemid |853|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |Rolesbpl.15069:89|
 :skolemid |854|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |Rolesbpl.15082:75|
 :skolemid |855|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |Rolesbpl.15095:73|
 :skolemid |856|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |Rolesbpl.15115:48|
 :skolemid |857|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |Rolesbpl.15132:57|
 :skolemid |858|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |Rolesbpl.15146:83|
 :skolemid |859|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |Rolesbpl.15160:103|
 :skolemid |860|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |Rolesbpl.15174:125|
 :skolemid |861|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |Rolesbpl.15188:101|
 :skolemid |862|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |Rolesbpl.15202:87|
 :skolemid |863|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |Rolesbpl.15216:85|
 :skolemid |864|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |Rolesbpl.15230:48|
 :skolemid |865|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |Rolesbpl.15251:45|
 :skolemid |866|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |Rolesbpl.15265:51|
 :skolemid |867|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |Rolesbpl.15288:48|
 :skolemid |868|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |Rolesbpl.15582:49|
 :skolemid |869|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |Rolesbpl.15595:65|
 :skolemid |870|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |Rolesbpl.16136:45|
 :skolemid |871|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |Rolesbpl.16149:45|
 :skolemid |872|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |Rolesbpl.16162:37|
 :skolemid |873|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |Rolesbpl.16175:55|
 :skolemid |874|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |Rolesbpl.16189:55|
 :skolemid |875|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |Rolesbpl.16209:38|
 :skolemid |876|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |Rolesbpl.16231:44|
 :skolemid |877|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |Rolesbpl.16283:53|
 :skolemid |878|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |Rolesbpl.16356:53|
 :skolemid |879|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |Rolesbpl.16429:45|
 :skolemid |880|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |Rolesbpl.16466:55|
 :skolemid |881|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |Rolesbpl.16480:55|
 :skolemid |882|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |Rolesbpl.16494:47|
 :skolemid |883|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |Rolesbpl.16511:38|
 :skolemid |884|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |Rolesbpl.16525:48|
 :skolemid |885|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |Rolesbpl.16539:48|
 :skolemid |886|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |Rolesbpl.16553:40|
 :skolemid |887|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |Rolesbpl.16573:41|
 :skolemid |888|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |Rolesbpl.16589:53|
 :skolemid |889|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |Rolesbpl.16602:53|
 :skolemid |890|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |Rolesbpl.16615:45|
 :skolemid |891|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |Rolesbpl.16631:60|
 :skolemid |892|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |Rolesbpl.16648:60|
 :skolemid |893|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |Rolesbpl.16665:52|
 :skolemid |894|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |Rolesbpl.16682:57|
 :skolemid |895|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |Rolesbpl.18855:68|
 :skolemid |896|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |Rolesbpl.18877:66|
 :skolemid |897|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |Rolesbpl.18903:66|
 :skolemid |898|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))))
 :qid |Rolesbpl.18932:56|
 :skolemid |899|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))))
 :qid |Rolesbpl.18962:56|
 :skolemid |900|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@59) true)
 :qid |Rolesbpl.19396:31|
 :skolemid |901|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@60) true)
 :qid |Rolesbpl.19726:31|
 :skolemid |902|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@60))
)))
(assert (forall ((s@@61 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@61)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@61)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@61))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@61))))
 :qid |Rolesbpl.19745:35|
 :skolemid |903|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@62)))
 :qid |Rolesbpl.20159:45|
 :skolemid |904|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@63))))
 :qid |Rolesbpl.20177:50|
 :skolemid |905|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@64)))
 :qid |Rolesbpl.20193:52|
 :skolemid |906|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@65)))
 :qid |Rolesbpl.20206:46|
 :skolemid |907|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@66) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@66)))
 :qid |Rolesbpl.20587:38|
 :skolemid |908|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@67) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@67)))
 :qid |Rolesbpl.20601:39|
 :skolemid |909|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@67))
)))
(assert (forall ((s@@68 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68))))
 :qid |Rolesbpl.21288:65|
 :skolemid |910|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@69))))
 :qid |Rolesbpl.21661:60|
 :skolemid |911|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70))))
 :qid |Rolesbpl.21678:66|
 :skolemid |912|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@71)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@71))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@71))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@71))))
 :qid |Rolesbpl.21707:50|
 :skolemid |913|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@72) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@72)))
 :qid |Rolesbpl.21730:45|
 :skolemid |914|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@73)) true))
 :qid |Rolesbpl.22303:87|
 :skolemid |915|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@74)))
 :qid |Rolesbpl.22504:47|
 :skolemid |916|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@75)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@75))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@75))))
 :qid |Rolesbpl.22523:58|
 :skolemid |917|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@76) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@76)))
 :qid |Rolesbpl.22539:39|
 :skolemid |918|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@77))))
 :qid |Rolesbpl.22561:58|
 :skolemid |919|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78))))
 :qid |Rolesbpl.22578:58|
 :skolemid |920|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79) true)
 :qid |Rolesbpl.22593:51|
 :skolemid |921|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80))))
 :qid |Rolesbpl.22610:60|
 :skolemid |922|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@81)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@81))))
 :qid |Rolesbpl.22896:47|
 :skolemid |923|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@82))))
 :qid |Rolesbpl.22922:63|
 :skolemid |924|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@83)))
 :qid |Rolesbpl.22937:57|
 :skolemid |925|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@84)))
 :qid |Rolesbpl.22950:55|
 :skolemid |926|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@85)))
 :qid |Rolesbpl.22964:55|
 :skolemid |927|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@86)))
 :qid |Rolesbpl.22978:47|
 :skolemid |928|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@87)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@87))))
 :qid |Rolesbpl.22995:54|
 :skolemid |929|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@88)))
 :qid |Rolesbpl.23009:55|
 :skolemid |930|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@89)))
 :qid |Rolesbpl.23022:57|
 :skolemid |931|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@90))))
 :qid |Rolesbpl.23044:56|
 :skolemid |932|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@91))))
 :qid |Rolesbpl.23071:52|
 :skolemid |933|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@92)))
 :qid |Rolesbpl.23089:54|
 :skolemid |934|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@93)))
 :qid |Rolesbpl.40113:55|
 :skolemid |1882|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@94)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@94))))
 :qid |Rolesbpl.40134:47|
 :skolemid |1883|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@95)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@95))))
 :qid |Rolesbpl.40158:47|
 :skolemid |1884|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@96)))
 :qid |Rolesbpl.40392:63|
 :skolemid |1885|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |Rolesbpl.40727:49|
 :skolemid |1886|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |Rolesbpl.40769:49|
 :skolemid |1887|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |Rolesbpl.40798:48|
 :skolemid |1888|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |Rolesbpl.41083:47|
 :skolemid |1889|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@33 T@Vec_176524) (i@@56 Int) ) (! (= (InRangeVec_157242 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_176524| v@@33))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157242 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_174639) (i@@57 Int) ) (! (= (InRangeVec_157443 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_174639| v@@34))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157443 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_174678) (i@@58 Int) ) (! (= (InRangeVec_157644 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_174678| v@@35))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157644 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_174812) (i@@59 Int) ) (! (= (InRangeVec_157845 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_174812| v@@36))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_157845 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_175154) (i@@60 Int) ) (! (= (InRangeVec_158046 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_175154| v@@37))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158046 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_175115) (i@@61 Int) ) (! (= (InRangeVec_158247 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_175115| v@@38))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158247 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_175076) (i@@62 Int) ) (! (= (InRangeVec_158448 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_175076| v@@39))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158448 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_175296) (i@@63 Int) ) (! (= (InRangeVec_158649 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_175296| v@@40))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158649 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_174600) (i@@64 Int) ) (! (= (InRangeVec_158850 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_174600| v@@41))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158850 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_200740) (i@@65 Int) ) (! (= (InRangeVec_159051 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_200740| v@@42))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_159051 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_203420) (i@@66 Int) ) (! (= (InRangeVec_159252 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_203420| v@@43))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_159252 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_174869) (i@@67 Int) ) (! (= (InRangeVec_206182 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_174869| v@@44))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_206182 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_57736) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_57736| v@@45))))
 :qid |Rolesbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_57736) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_57736 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@46) i@@70) e@@13))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_57736| v@@46) j@@13) e@@13)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_57736 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_174600) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_174600 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_158850 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@47) i@@72) e@@14))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_158850 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_174600| v@@47) j@@14) e@@14)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174600 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_174639) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_174639 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_157443 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@48) i@@74) e@@15))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_157443 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_174639| v@@48) j@@15) e@@15)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174639 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_174678) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_174678 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_157644 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@49) i@@76) e@@16))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_157644 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_174678| v@@49) j@@16) e@@16)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174678 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_174812) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_174812 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_157845 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@50) i@@78) e@@17))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_157845 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_174812| v@@50) j@@17) e@@17)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174812 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_174869) (e@@18 T@Vec_57736) ) (! (let ((i@@79 (IndexOfVec_174869 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_206182 v@@51 i@@80) (= (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@51) i@@80) e@@18))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_206182 v@@51 i@@79) (= (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_57736_| (|v#Vec_174869| v@@51) j@@18) e@@18)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_174869 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_175076) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_175076 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_158448 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@52) i@@82) e@@19))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_158448 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_175076| v@@52) j@@19) e@@19)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175076 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_175115) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_175115 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_158247 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@53) i@@84) e@@20))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_158247 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_175115| v@@53) j@@20) e@@20)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175115 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_175154) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_175154 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_158046 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@54) i@@86) e@@21))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_158046 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_175154| v@@54) j@@21) e@@21)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175154 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_175296) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_175296 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_158649 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@55) i@@88) e@@22))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_158649 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_175296| v@@55) j@@22) e@@22)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_175296 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_176524) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_176524 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_157242 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@56) i@@90) e@@23))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_157242 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_176524| v@@56) j@@23) e@@23)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_176524 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_200740) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_200740 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_159051 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@57) i@@92) e@@24))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_159051 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_200740| v@@57) j@@24) e@@24)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_200740 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_203420) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_203420 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_159252 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@58) i@@94) e@@25))
 :qid |Rolesbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_159252 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_203420| v@@58) j@@25) e@@25)))
 :qid |Rolesbpl.117:17|
 :skolemid |1|
)))))
 :qid |Rolesbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203420 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |Rolesbpl.275:54|
 :skolemid |1980|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_174514|) (|l#1| |T@[$1_Event_EventHandle]Multiset_174514|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#1| handle@@0))))
(Multiset_174514 (|lambda#42| (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#0@@0| handle@@0)) (|v#Multiset_174514| (|Select__T@[$1_Event_EventHandle]Multiset_174514_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Rolesbpl.3321:13|
 :skolemid |1981|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_174514_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |Rolesbpl.73:19|
 :skolemid |1982|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |Rolesbpl.82:30|
 :skolemid |1983|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |Rolesbpl.63:20|
 :skolemid |1984|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |Rolesbpl.73:19|
 :skolemid |1985|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |Rolesbpl.82:30|
 :skolemid |1986|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |Rolesbpl.63:20|
 :skolemid |1987|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |Rolesbpl.73:19|
 :skolemid |1988|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |Rolesbpl.82:30|
 :skolemid |1989|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |Rolesbpl.63:20|
 :skolemid |1990|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |Rolesbpl.73:19|
 :skolemid |1991|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |Rolesbpl.82:30|
 :skolemid |1992|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |Rolesbpl.63:20|
 :skolemid |1993|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |Rolesbpl.73:19|
 :skolemid |1994|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |Rolesbpl.82:30|
 :skolemid |1995|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |Rolesbpl.63:20|
 :skolemid |1996|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |Rolesbpl.73:19|
 :skolemid |1997|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |Rolesbpl.82:30|
 :skolemid |1998|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |Rolesbpl.63:20|
 :skolemid |1999|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |Rolesbpl.73:19|
 :skolemid |2000|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |Rolesbpl.82:30|
 :skolemid |2001|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |Rolesbpl.63:20|
 :skolemid |2002|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |Rolesbpl.73:19|
 :skolemid |2003|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |Rolesbpl.82:30|
 :skolemid |2004|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |Rolesbpl.63:20|
 :skolemid |2005|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |Rolesbpl.73:19|
 :skolemid |2006|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |Rolesbpl.82:30|
 :skolemid |2007|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |Rolesbpl.63:20|
 :skolemid |2008|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |Rolesbpl.73:19|
 :skolemid |2009|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |Rolesbpl.82:30|
 :skolemid |2010|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |Rolesbpl.63:20|
 :skolemid |2011|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |Rolesbpl.73:19|
 :skolemid |2012|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |Rolesbpl.82:30|
 :skolemid |2013|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |Rolesbpl.63:20|
 :skolemid |2014|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_57736|) (|l#4@@32| |T@[Int]Vec_57736|) (|l#5@@32| Int) (|l#6@@21| T@Vec_57736) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_57736_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_57736_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_57736_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |Rolesbpl.73:19|
 :skolemid |2015|
 :pattern ( (|Select__T@[Int]Vec_57736_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_57736|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_57736) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_57736_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_57736_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |Rolesbpl.82:30|
 :skolemid |2016|
 :pattern ( (|Select__T@[Int]Vec_57736_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_57736|) (|l#4@@34| |T@[Int]Vec_57736|) (|l#5@@34| Int) (|l#6@@22| T@Vec_57736) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_57736_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_57736_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_57736_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |Rolesbpl.63:20|
 :skolemid |2017|
 :pattern ( (|Select__T@[Int]Vec_57736_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |Rolesbpl.73:19|
 :skolemid |2018|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |Rolesbpl.82:30|
 :skolemid |2019|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |Rolesbpl.63:20|
 :skolemid |2020|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |Rolesbpl.154:29|
 :skolemid |2021|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid

