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
(declare-datatypes ((T@$Memory_463944 0)) ((($Memory_463944 (|domain#$Memory_463944| |T@[Int]Bool|) (|contents#$Memory_463944| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_423840 0)) (((Vec_423840 (|v#Vec_423840| |T@[Int]#0|) (|l#Vec_423840| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_473722 0)) ((($Memory_473722 (|domain#$Memory_473722| |T@[Int]Bool|) (|contents#$Memory_473722| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_473651 0)) ((($Memory_473651 (|domain#$Memory_473651| |T@[Int]Bool|) (|contents#$Memory_473651| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_473408 0)) ((($Memory_473408 (|domain#$Memory_473408| |T@[Int]Bool|) (|contents#$Memory_473408| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_473337 0)) ((($Memory_473337 (|domain#$Memory_473337| |T@[Int]Bool|) (|contents#$Memory_473337| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@Vec_92615 0)) (((Vec_92615 (|v#Vec_92615| |T@[Int]Bool|) (|l#Vec_92615| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_92615) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_576150 0)) ((($Memory_576150 (|domain#$Memory_576150| |T@[Int]Bool|) (|contents#$Memory_576150| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_473266 0)) ((($Memory_473266 (|domain#$Memory_473266| |T@[Int]Bool|) (|contents#$Memory_473266| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_487544 0)) ((($Memory_487544 (|domain#$Memory_487544| |T@[Int]Bool|) (|contents#$Memory_487544| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_557350 0)) ((($Memory_557350 (|domain#$Memory_557350| |T@[Int]Bool|) (|contents#$Memory_557350| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_473098 0)) ((($Memory_473098 (|domain#$Memory_473098| |T@[Int]Bool|) (|contents#$Memory_473098| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_487799 0)) ((($Memory_487799 (|domain#$Memory_487799| |T@[Int]Bool|) (|contents#$Memory_487799| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_487899 0)) ((($Memory_487899 (|domain#$Memory_487899| |T@[Int]Bool|) (|contents#$Memory_487899| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_487325 0)) ((($Memory_487325 (|domain#$Memory_487325| |T@[Int]Bool|) (|contents#$Memory_487325| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_448056 0)) (((Vec_448056 (|v#Vec_448056| |T@[Int]$1_XDX_XDX|) (|l#Vec_448056| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_450736 0)) (((Vec_450736 (|v#Vec_450736| |T@[Int]$1_XUS_XUS|) (|l#Vec_450736| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_525479 0)) ((($Memory_525479 (|domain#$Memory_525479| |T@[Int]Bool|) (|contents#$Memory_525479| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_525415 0)) ((($Memory_525415 (|domain#$Memory_525415| |T@[Int]Bool|) (|contents#$Memory_525415| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_525351 0)) ((($Memory_525351 (|domain#$Memory_525351| |T@[Int]Bool|) (|contents#$Memory_525351| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_526401 0)) ((($Memory_526401 (|domain#$Memory_526401| |T@[Int]Bool|) (|contents#$Memory_526401| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_472930 0)) ((($Memory_472930 (|domain#$Memory_472930| |T@[Int]Bool|) (|contents#$Memory_472930| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_472691 0)) ((($Memory_472691 (|domain#$Memory_472691| |T@[Int]Bool|) (|contents#$Memory_472691| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_473580 0)) ((($Memory_473580 (|domain#$Memory_473580| |T@[Int]Bool|) (|contents#$Memory_473580| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_502287 0)) ((($Memory_502287 (|domain#$Memory_502287| |T@[Int]Bool|) (|contents#$Memory_502287| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_502223 0)) ((($Memory_502223 (|domain#$Memory_502223| |T@[Int]Bool|) (|contents#$Memory_502223| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_502159 0)) ((($Memory_502159 (|domain#$Memory_502159| |T@[Int]Bool|) (|contents#$Memory_502159| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_502780 0)) ((($Memory_502780 (|domain#$Memory_502780| |T@[Int]Bool|) (|contents#$Memory_502780| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_502693 0)) ((($Memory_502693 (|domain#$Memory_502693| |T@[Int]Bool|) (|contents#$Memory_502693| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_502606 0)) ((($Memory_502606 (|domain#$Memory_502606| |T@[Int]Bool|) (|contents#$Memory_502606| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_588258 0)) ((($Memory_588258 (|domain#$Memory_588258| |T@[Int]Bool|) (|contents#$Memory_588258| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_508607 0)) ((($Memory_508607 (|domain#$Memory_508607| |T@[Int]Bool|) (|contents#$Memory_508607| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_545418 0)) ((($Memory_545418 (|domain#$Memory_545418| |T@[Int]Bool|) (|contents#$Memory_545418| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_478064 0)) ((($Memory_478064 (|domain#$Memory_478064| |T@[Int]Bool|) (|contents#$Memory_478064| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508526 0)) ((($Memory_508526 (|domain#$Memory_508526| |T@[Int]Bool|) (|contents#$Memory_508526| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_545354 0)) ((($Memory_545354 (|domain#$Memory_545354| |T@[Int]Bool|) (|contents#$Memory_545354| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_472762 0)) ((($Memory_472762 (|domain#$Memory_472762| |T@[Int]Bool|) (|contents#$Memory_472762| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_478004 0)) ((($Memory_478004 (|domain#$Memory_478004| |T@[Int]Bool|) (|contents#$Memory_478004| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508445 0)) ((($Memory_508445 (|domain#$Memory_508445| |T@[Int]Bool|) (|contents#$Memory_508445| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_473001 0)) ((($Memory_473001 (|domain#$Memory_473001| |T@[Int]Bool|) (|contents#$Memory_473001| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_497451 0)) ((($Memory_497451 (|domain#$Memory_497451| |T@[Int]Bool|) (|contents#$Memory_497451| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_497364 0)) ((($Memory_497364 (|domain#$Memory_497364| |T@[Int]Bool|) (|contents#$Memory_497364| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_497277 0)) ((($Memory_497277 (|domain#$Memory_497277| |T@[Int]Bool|) (|contents#$Memory_497277| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_497190 0)) ((($Memory_497190 (|domain#$Memory_497190| |T@[Int]Bool|) (|contents#$Memory_497190| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_497103 0)) ((($Memory_497103 (|domain#$Memory_497103| |T@[Int]Bool|) (|contents#$Memory_497103| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_497016 0)) ((($Memory_497016 (|domain#$Memory_497016| |T@[Int]Bool|) (|contents#$Memory_497016| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_472452 0)) ((($Memory_472452 (|domain#$Memory_472452| |T@[Int]Bool|) (|contents#$Memory_472452| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_495874 0)) ((($Memory_495874 (|domain#$Memory_495874| |T@[Int]Bool|) (|contents#$Memory_495874| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_472293 0)) ((($Memory_472293 (|domain#$Memory_472293| |T@[Int]Bool|) (|contents#$Memory_472293| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_471884 0)) ((($Memory_471884 (|domain#$Memory_471884| |T@[Int]Bool|) (|contents#$Memory_471884| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_472200 0)) ((($Memory_472200 (|domain#$Memory_472200| |T@[Int]Bool|) (|contents#$Memory_472200| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_421889 0)) (((Vec_421889 (|v#Vec_421889| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_421889| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_421889) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_421850 0)) (((Vec_421850 (|v#Vec_421850| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_421850| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_421850) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_600227 0)) ((($Memory_600227 (|domain#$Memory_600227| |T@[Int]Bool|) (|contents#$Memory_600227| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_421850) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_33444 0)) (((Vec_33444 (|v#Vec_33444| |T@[Int]Int|) (|l#Vec_33444| Int) ) ) ))
(declare-sort |T@[Int]Vec_33444| 0)
(declare-datatypes ((T@Vec_422080 0)) (((Vec_422080 (|v#Vec_422080| |T@[Int]Vec_33444|) (|l#Vec_422080| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_422080) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_473182 0)) ((($Memory_473182 (|domain#$Memory_473182| |T@[Int]Bool|) (|contents#$Memory_473182| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_422080) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_472523 0)) ((($Memory_472523 (|domain#$Memory_472523| |T@[Int]Bool|) (|contents#$Memory_472523| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_33444) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_33444) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_473806 0)) ((($Memory_473806 (|domain#$Memory_473806| |T@[Int]Bool|) (|contents#$Memory_473806| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_33444) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_495741 0)) ((($Memory_495741 (|domain#$Memory_495741| |T@[Int]Bool|) (|contents#$Memory_495741| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_33444) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_487225 0)) ((($Memory_487225 (|domain#$Memory_487225| |T@[Int]Bool|) (|contents#$Memory_487225| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_560400 0)) ((($Memory_560400 (|domain#$Memory_560400| |T@[Int]Bool|) (|contents#$Memory_560400| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_560177 0)) ((($Memory_560177 (|domain#$Memory_560177| |T@[Int]Bool|) (|contents#$Memory_560177| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_559954 0)) ((($Memory_559954 (|domain#$Memory_559954| |T@[Int]Bool|) (|contents#$Memory_559954| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_33444) (|$base_url#$1_DualAttestation_Credential| T@Vec_33444) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_33444) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_477889 0)) ((($Memory_477889 (|domain#$Memory_477889| |T@[Int]Bool|) (|contents#$Memory_477889| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_422523 0)) (((Vec_422523 (|v#Vec_422523| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_422523| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_422523) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_487410 0)) ((($Memory_487410 (|domain#$Memory_487410| |T@[Int]Bool|) (|contents#$Memory_487410| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_422368 0)) (((Vec_422368 (|v#Vec_422368| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_422368| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_422368) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_509091 0)) ((($Memory_509091 (|domain#$Memory_509091| |T@[Int]Bool|) (|contents#$Memory_509091| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_422329 0)) (((Vec_422329 (|v#Vec_422329| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_422329| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_422329) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508974 0)) ((($Memory_508974 (|domain#$Memory_508974| |T@[Int]Bool|) (|contents#$Memory_508974| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_422290 0)) (((Vec_422290 (|v#Vec_422290| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_422290| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_422290) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508857 0)) ((($Memory_508857 (|domain#$Memory_508857| |T@[Int]Bool|) (|contents#$Memory_508857| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_33444) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_501585 0)) ((($Memory_501585 (|domain#$Memory_501585| |T@[Int]Bool|) (|contents#$Memory_501585| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_33444) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_472846 0)) ((($Memory_472846 (|domain#$Memory_472846| |T@[Int]Bool|) (|contents#$Memory_472846| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_33444) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_472607 0)) ((($Memory_472607 (|domain#$Memory_472607| |T@[Int]Bool|) (|contents#$Memory_472607| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_33444) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_33444) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_421811 0)) (((Vec_421811 (|v#Vec_421811| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_421811| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_421811) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_422023 0)) (((Vec_422023 (|v#Vec_422023| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_422023| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_422023) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_472379 0)) ((($Memory_472379 (|domain#$Memory_472379| |T@[Int]Bool|) (|contents#$Memory_472379| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_477156 0)) ((($Memory_477156 (|domain#$Memory_477156| |T@[Int]Bool|) (|contents#$Memory_477156| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_477551 0)) ((($Memory_477551 (|domain#$Memory_477551| |T@[Int]Bool|) (|contents#$Memory_477551| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_472013 0)) ((($Memory_472013 (|domain#$Memory_472013| |T@[Int]Bool|) (|contents#$Memory_472013| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_471307 0)) ((($Memory_471307 (|domain#$Memory_471307| |T@[Int]Bool|) (|contents#$Memory_471307| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_33444) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_33444) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_33444) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_33444) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_33444) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_33444) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_33444) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_33444) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_33444) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_33444) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_421725 0)) (((Multiset_421725 (|v#Multiset_421725| |T@[$EventRep]Int|) (|l#Multiset_421725| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_421725| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_421725|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_1070810 0)) ((($Mutation_1070810 (|l#$Mutation_1070810| T@$Location) (|p#$Mutation_1070810| T@Vec_33444) (|v#$Mutation_1070810| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_878532 0)) ((($Mutation_878532 (|l#$Mutation_878532| T@$Location) (|p#$Mutation_878532| T@Vec_33444) (|v#$Mutation_878532| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_875081 0)) ((($Mutation_875081 (|l#$Mutation_875081| T@$Location) (|p#$Mutation_875081| T@Vec_33444) (|v#$Mutation_875081| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_872151 0)) ((($Mutation_872151 (|l#$Mutation_872151| T@$Location) (|p#$Mutation_872151| T@Vec_33444) (|v#$Mutation_872151| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_679430 0)) ((($Mutation_679430 (|l#$Mutation_679430| T@$Location) (|p#$Mutation_679430| T@Vec_33444) (|v#$Mutation_679430| |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_668571 0)) ((($Mutation_668571 (|l#$Mutation_668571| T@$Location) (|p#$Mutation_668571| T@Vec_33444) (|v#$Mutation_668571| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_657796 0)) ((($Mutation_657796 (|l#$Mutation_657796| T@$Location) (|p#$Mutation_657796| T@Vec_33444) (|v#$Mutation_657796| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_657750 0)) ((($Mutation_657750 (|l#$Mutation_657750| T@$Location) (|p#$Mutation_657750| T@Vec_33444) (|v#$Mutation_657750| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_580635 0)) ((($Mutation_580635 (|l#$Mutation_580635| T@$Location) (|p#$Mutation_580635| T@Vec_33444) (|v#$Mutation_580635| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_580592 0)) ((($Mutation_580592 (|l#$Mutation_580592| T@$Location) (|p#$Mutation_580592| T@Vec_33444) (|v#$Mutation_580592| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_577037 0)) ((($Mutation_577037 (|l#$Mutation_577037| T@$Location) (|p#$Mutation_577037| T@Vec_33444) (|v#$Mutation_577037| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_572160 0)) ((($Mutation_572160 (|l#$Mutation_572160| T@$Location) (|p#$Mutation_572160| T@Vec_33444) (|v#$Mutation_572160| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_560444 0)) ((($Mutation_560444 (|l#$Mutation_560444| T@$Location) (|p#$Mutation_560444| T@Vec_33444) (|v#$Mutation_560444| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_552651 0)) ((($Mutation_552651 (|l#$Mutation_552651| T@$Location) (|p#$Mutation_552651| T@Vec_33444) (|v#$Mutation_552651| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_548876 0)) ((($Mutation_548876 (|l#$Mutation_548876| T@$Location) (|p#$Mutation_548876| T@Vec_33444) (|v#$Mutation_548876| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_548830 0)) ((($Mutation_548830 (|l#$Mutation_548830| T@$Location) (|p#$Mutation_548830| T@Vec_33444) (|v#$Mutation_548830| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_547892 0)) ((($Mutation_547892 (|l#$Mutation_547892| T@$Location) (|p#$Mutation_547892| T@Vec_33444) (|v#$Mutation_547892| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_547846 0)) ((($Mutation_547846 (|l#$Mutation_547846| T@$Location) (|p#$Mutation_547846| T@Vec_33444) (|v#$Mutation_547846| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_546962 0)) ((($Mutation_546962 (|l#$Mutation_546962| T@$Location) (|p#$Mutation_546962| T@Vec_33444) (|v#$Mutation_546962| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_546916 0)) ((($Mutation_546916 (|l#$Mutation_546916| T@$Location) (|p#$Mutation_546916| T@Vec_33444) (|v#$Mutation_546916| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_543304 0)) ((($Mutation_543304 (|l#$Mutation_543304| T@$Location) (|p#$Mutation_543304| T@Vec_33444) (|v#$Mutation_543304| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_532783 0)) ((($Mutation_532783 (|l#$Mutation_532783| T@$Location) (|p#$Mutation_532783| T@Vec_33444) (|v#$Mutation_532783| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_532718 0)) ((($Mutation_532718 (|l#$Mutation_532718| T@$Location) (|p#$Mutation_532718| T@Vec_33444) (|v#$Mutation_532718| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_515509 0)) ((($Mutation_515509 (|l#$Mutation_515509| T@$Location) (|p#$Mutation_515509| T@Vec_33444) (|v#$Mutation_515509| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_513746 0)) ((($Mutation_513746 (|l#$Mutation_513746| T@$Location) (|p#$Mutation_513746| T@Vec_33444) (|v#$Mutation_513746| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_511983 0)) ((($Mutation_511983 (|l#$Mutation_511983| T@$Location) (|p#$Mutation_511983| T@Vec_33444) (|v#$Mutation_511983| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_500157 0)) ((($Mutation_500157 (|l#$Mutation_500157| T@$Location) (|p#$Mutation_500157| T@Vec_33444) (|v#$Mutation_500157| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_489851 0)) ((($Mutation_489851 (|l#$Mutation_489851| T@$Location) (|p#$Mutation_489851| T@Vec_33444) (|v#$Mutation_489851| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_486387 0)) ((($Mutation_486387 (|l#$Mutation_486387| T@$Location) (|p#$Mutation_486387| T@Vec_33444) (|v#$Mutation_486387| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_486346 0)) ((($Mutation_486346 (|l#$Mutation_486346| T@$Location) (|p#$Mutation_486346| T@Vec_33444) (|v#$Mutation_486346| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_471826 0)) ((($Mutation_471826 (|l#$Mutation_471826| T@$Location) (|p#$Mutation_471826| T@Vec_33444) (|v#$Mutation_471826| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_464575 0)) ((($Mutation_464575 (|l#$Mutation_464575| T@$Location) (|p#$Mutation_464575| T@Vec_33444) (|v#$Mutation_464575| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_18461 0)) ((($Mutation_18461 (|l#$Mutation_18461| T@$Location) (|p#$Mutation_18461| T@Vec_33444) (|v#$Mutation_18461| Int) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_33444) (|v#$Mutation_17352| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_456873 0)) ((($Mutation_456873 (|l#$Mutation_456873| T@$Location) (|p#$Mutation_456873| T@Vec_33444) (|v#$Mutation_456873| T@Vec_92615) ) ) ))
(declare-datatypes ((T@$Mutation_455163 0)) ((($Mutation_455163 (|l#$Mutation_455163| T@$Location) (|p#$Mutation_455163| T@Vec_33444) (|v#$Mutation_455163| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$Mutation_454075 0)) ((($Mutation_454075 (|l#$Mutation_454075| T@$Location) (|p#$Mutation_454075| T@Vec_33444) (|v#$Mutation_454075| T@Vec_422080) ) ) ))
(declare-datatypes ((T@$Mutation_452366 0)) ((($Mutation_452366 (|l#$Mutation_452366| T@$Location) (|p#$Mutation_452366| T@Vec_33444) (|v#$Mutation_452366| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_451379 0)) ((($Mutation_451379 (|l#$Mutation_451379| T@$Location) (|p#$Mutation_451379| T@Vec_33444) (|v#$Mutation_451379| T@Vec_450736) ) ) ))
(declare-datatypes ((T@$Mutation_449686 0)) ((($Mutation_449686 (|l#$Mutation_449686| T@$Location) (|p#$Mutation_449686| T@Vec_33444) (|v#$Mutation_449686| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_448699 0)) ((($Mutation_448699 (|l#$Mutation_448699| T@$Location) (|p#$Mutation_448699| T@Vec_33444) (|v#$Mutation_448699| T@Vec_448056) ) ) ))
(declare-datatypes ((T@$Mutation_447006 0)) ((($Mutation_447006 (|l#$Mutation_447006| T@$Location) (|p#$Mutation_447006| T@Vec_33444) (|v#$Mutation_447006| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_446019 0)) ((($Mutation_446019 (|l#$Mutation_446019| T@$Location) (|p#$Mutation_446019| T@Vec_33444) (|v#$Mutation_446019| T@Vec_421811) ) ) ))
(declare-datatypes ((T@$Mutation_444364 0)) ((($Mutation_444364 (|l#$Mutation_444364| T@$Location) (|p#$Mutation_444364| T@Vec_33444) (|v#$Mutation_444364| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_443377 0)) ((($Mutation_443377 (|l#$Mutation_443377| T@$Location) (|p#$Mutation_443377| T@Vec_33444) (|v#$Mutation_443377| T@Vec_422523) ) ) ))
(declare-datatypes ((T@$Mutation_441699 0)) ((($Mutation_441699 (|l#$Mutation_441699| T@$Location) (|p#$Mutation_441699| T@Vec_33444) (|v#$Mutation_441699| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_440712 0)) ((($Mutation_440712 (|l#$Mutation_440712| T@$Location) (|p#$Mutation_440712| T@Vec_33444) (|v#$Mutation_440712| T@Vec_422290) ) ) ))
(declare-datatypes ((T@$Mutation_439003 0)) ((($Mutation_439003 (|l#$Mutation_439003| T@$Location) (|p#$Mutation_439003| T@Vec_33444) (|v#$Mutation_439003| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_438016 0)) ((($Mutation_438016 (|l#$Mutation_438016| T@$Location) (|p#$Mutation_438016| T@Vec_33444) (|v#$Mutation_438016| T@Vec_422329) ) ) ))
(declare-datatypes ((T@$Mutation_436307 0)) ((($Mutation_436307 (|l#$Mutation_436307| T@$Location) (|p#$Mutation_436307| T@Vec_33444) (|v#$Mutation_436307| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_435320 0)) ((($Mutation_435320 (|l#$Mutation_435320| T@$Location) (|p#$Mutation_435320| T@Vec_33444) (|v#$Mutation_435320| T@Vec_422368) ) ) ))
(declare-datatypes ((T@$Mutation_433611 0)) ((($Mutation_433611 (|l#$Mutation_433611| T@$Location) (|p#$Mutation_433611| T@Vec_33444) (|v#$Mutation_433611| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_432624 0)) ((($Mutation_432624 (|l#$Mutation_432624| T@$Location) (|p#$Mutation_432624| T@Vec_33444) (|v#$Mutation_432624| T@Vec_422023) ) ) ))
(declare-datatypes ((T@$Mutation_430824 0)) ((($Mutation_430824 (|l#$Mutation_430824| T@$Location) (|p#$Mutation_430824| T@Vec_33444) (|v#$Mutation_430824| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_429837 0)) ((($Mutation_429837 (|l#$Mutation_429837| T@$Location) (|p#$Mutation_429837| T@Vec_33444) (|v#$Mutation_429837| T@Vec_421889) ) ) ))
(declare-datatypes ((T@$Mutation_428172 0)) ((($Mutation_428172 (|l#$Mutation_428172| T@$Location) (|p#$Mutation_428172| T@Vec_33444) (|v#$Mutation_428172| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_427185 0)) ((($Mutation_427185 (|l#$Mutation_427185| T@$Location) (|p#$Mutation_427185| T@Vec_33444) (|v#$Mutation_427185| T@Vec_421850) ) ) ))
(declare-datatypes ((T@$Mutation_425472 0)) ((($Mutation_425472 (|l#$Mutation_425472| T@$Location) (|p#$Mutation_425472| T@Vec_33444) (|v#$Mutation_425472| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_424485 0)) ((($Mutation_424485 (|l#$Mutation_424485| T@$Location) (|p#$Mutation_424485| T@Vec_33444) (|v#$Mutation_424485| T@Vec_423840) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_423840 T@Vec_423840) Bool)
(declare-fun InRangeVec_383763 (T@Vec_423840 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_423840) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_423840 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_421850 T@Vec_421850) Bool)
(declare-fun InRangeVec_383964 (T@Vec_421850 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_421850) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_421850 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_421889 T@Vec_421889) Bool)
(declare-fun InRangeVec_384165 (T@Vec_421889 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_421889) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_421889 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_422023 T@Vec_422023) Bool)
(declare-fun InRangeVec_384366 (T@Vec_422023 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_33444 T@Vec_33444) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_422023) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_422023 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_422368 T@Vec_422368) Bool)
(declare-fun InRangeVec_384567 (T@Vec_422368 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_422368) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_422368 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_422329 T@Vec_422329) Bool)
(declare-fun InRangeVec_384768 (T@Vec_422329 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_422329) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_422329 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_422290 T@Vec_422290) Bool)
(declare-fun InRangeVec_384969 (T@Vec_422290 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_422290) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_422290 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_422523 T@Vec_422523) Bool)
(declare-fun InRangeVec_385170 (T@Vec_422523 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_422523) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_422523 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_421811 T@Vec_421811) Bool)
(declare-fun InRangeVec_385371 (T@Vec_421811 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_421811) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_421811 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_448056 T@Vec_448056) Bool)
(declare-fun InRangeVec_385572 (T@Vec_448056 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_448056) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_448056 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_450736 T@Vec_450736) Bool)
(declare-fun InRangeVec_385773 (T@Vec_450736 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_450736) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_450736 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_422080 T@Vec_422080) Bool)
(declare-fun InRangeVec_453498 (T@Vec_422080 Int) Bool)
(declare-fun |Select__T@[Int]Vec_33444_| (|T@[Int]Vec_33444| Int) T@Vec_33444)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_422080) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_33444) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_422080 T@Vec_33444) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_92615 T@Vec_92615) Bool)
(declare-fun InRangeVec_16728 (T@Vec_92615 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_92615) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_92615 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_33444 T@Vec_33444) Bool)
(declare-fun InRangeVec_17837 (T@Vec_33444 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_33444) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_33444 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_33444 T@Vec_33444) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_33444) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_33444 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_33444 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_33444) T@Vec_33444)
(declare-fun $1_Hash_sha3 (T@Vec_33444) T@Vec_33444)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_33444) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_33444 T@Vec_33444 T@Vec_33444) Bool)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_33444)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_421725_| (|T@[$1_Event_EventHandle]Multiset_421725| T@$1_Event_EventHandle) T@Multiset_421725)
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
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_33444 Int) T@Vec_33444)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| (|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| (|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun $1_DiemAccount_spec_abstract_create_authentication_key (T@Vec_33444) T@Vec_33444)
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
(declare-fun IndexOfVec_33444 (T@Vec_33444 Int) Int)
(declare-fun IndexOfVec_421811 (T@Vec_421811 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_421850 (T@Vec_421850 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_421889 (T@Vec_421889 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_422023 (T@Vec_422023 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_422080 (T@Vec_422080 T@Vec_33444) Int)
(declare-fun IndexOfVec_422290 (T@Vec_422290 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_422329 (T@Vec_422329 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_422368 (T@Vec_422368 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_422523 (T@Vec_422523 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_92615 (T@Vec_92615 Bool) Int)
(declare-fun IndexOfVec_423840 (T@Vec_423840 |T@#0|) Int)
(declare-fun IndexOfVec_448056 (T@Vec_448056 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_450736 (T@Vec_450736 T@$1_XUS_XUS) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_421725| |T@[$1_Event_EventHandle]Multiset_421725|) |T@[$1_Event_EventHandle]Multiset_421725|)
(declare-fun |lambda#45| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_33444| |T@[Int]Vec_33444| Int T@Vec_33444) |T@[Int]Vec_33444|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_33444| Int Int T@Vec_33444) |T@[Int]Vec_33444|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_33444| |T@[Int]Vec_33444| Int T@Vec_33444) |T@[Int]Vec_33444|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#40| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#42| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#43| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#44| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemAccountbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemAccountbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemAccountbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemAccountbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemAccountbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemAccountbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_423840) (v2 T@Vec_423840) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_423840| v1) (|l#Vec_423840| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_383763 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_423840| v2) i@@0)))
 :qid |DiemAccountbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemAccountbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_423840) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_423840| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_383763 v@@4 i@@1) true)
 :qid |DiemAccountbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemAccountbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_423840) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_383763 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@5) i@@3) e))
 :qid |DiemAccountbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_383763 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@5) j) e)))
 :qid |DiemAccountbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemAccountbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_421850) (v2@@0 T@Vec_421850) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_421850| v1@@0) (|l#Vec_421850| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_383964 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v2@@0) i@@4)))
 :qid |DiemAccountbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemAccountbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_421850) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_421850| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_383964 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@6) i@@5)))
 :qid |DiemAccountbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemAccountbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_421850) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_383964 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@7) i@@7) e@@0))
 :qid |DiemAccountbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_383964 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@7) j@@0) e@@0)))
 :qid |DiemAccountbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemAccountbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_421889) (v2@@1 T@Vec_421889) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_421889| v1@@1) (|l#Vec_421889| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_384165 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v2@@1) i@@8)))
 :qid |DiemAccountbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemAccountbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_421889) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_421889| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_384165 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@8) i@@9)))
 :qid |DiemAccountbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemAccountbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_421889) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_384165 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@9) i@@11) e@@1))
 :qid |DiemAccountbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_384165 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@9) j@@1) e@@1)))
 :qid |DiemAccountbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemAccountbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_422023) (v2@@2 T@Vec_422023) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_422023| v1@@2) (|l#Vec_422023| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_384366 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))))
 :qid |DiemAccountbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemAccountbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_422023) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_422023| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_384366 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@10) i@@13)))
 :qid |DiemAccountbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemAccountbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_422023) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_384366 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemAccountbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_384366 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemAccountbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemAccountbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_422368) (v2@@3 T@Vec_422368) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_422368| v1@@3) (|l#Vec_422368| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_384567 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v2@@3) i@@16)))))
 :qid |DiemAccountbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemAccountbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_422368) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_422368| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_384567 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@12) i@@17)))
 :qid |DiemAccountbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemAccountbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_422368) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_384567 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemAccountbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_384567 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemAccountbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemAccountbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_422329) (v2@@4 T@Vec_422329) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_422329| v1@@4) (|l#Vec_422329| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_384768 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v2@@4) i@@20)))))
 :qid |DiemAccountbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemAccountbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_422329) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_422329| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_384768 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@14) i@@21)))
 :qid |DiemAccountbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemAccountbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_422329) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_384768 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemAccountbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_384768 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemAccountbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemAccountbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_422290) (v2@@5 T@Vec_422290) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_422290| v1@@5) (|l#Vec_422290| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_384969 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v2@@5) i@@24)))))
 :qid |DiemAccountbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemAccountbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_422290) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_422290| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_384969 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@16) i@@25)))
 :qid |DiemAccountbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemAccountbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_422290) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_384969 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemAccountbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_384969 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemAccountbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemAccountbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_422523) (v2@@6 T@Vec_422523) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_422523| v1@@6) (|l#Vec_422523| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_385170 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v2@@6) i@@28))))
 :qid |DiemAccountbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemAccountbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_422523) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_422523| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_385170 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@18) i@@29)))
 :qid |DiemAccountbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemAccountbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_422523) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_385170 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemAccountbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_385170 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemAccountbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemAccountbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_421811) (v2@@7 T@Vec_421811) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_421811| v1@@7) (|l#Vec_421811| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_385371 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v2@@7) i@@32)))))
 :qid |DiemAccountbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemAccountbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_421811) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_421811| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_385371 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@20) i@@33)))
 :qid |DiemAccountbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemAccountbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_421811) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_385371 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemAccountbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_385371 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemAccountbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemAccountbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_448056) (v2@@8 T@Vec_448056) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_448056| v1@@8) (|l#Vec_448056| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_385572 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v2@@8) i@@36)))
 :qid |DiemAccountbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemAccountbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_448056) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_448056| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_385572 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@22) i@@37)))
 :qid |DiemAccountbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemAccountbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_448056) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_385572 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@23) i@@39) e@@8))
 :qid |DiemAccountbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_385572 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@23) j@@8) e@@8)))
 :qid |DiemAccountbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemAccountbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_450736) (v2@@9 T@Vec_450736) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_450736| v1@@9) (|l#Vec_450736| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_385773 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v2@@9) i@@40)))
 :qid |DiemAccountbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemAccountbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_450736) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_450736| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_385773 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@24) i@@41)))
 :qid |DiemAccountbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemAccountbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_450736) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_385773 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@25) i@@43) e@@9))
 :qid |DiemAccountbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_385773 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@25) j@@9) e@@9)))
 :qid |DiemAccountbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemAccountbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_422080) (v2@@10 T@Vec_422080) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_422080| v1@@10) (|l#Vec_422080| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_453498 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v1@@10) i@@44) (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v2@@10) i@@44)))
 :qid |DiemAccountbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemAccountbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_422080) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_422080| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_453498 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@26) i@@45)))
 :qid |DiemAccountbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemAccountbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_422080) (e@@10 T@Vec_33444) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_453498 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@27) i@@47) e@@10))
 :qid |DiemAccountbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_453498 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@27) j@@10) e@@10)))
 :qid |DiemAccountbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemAccountbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_92615) (v2@@11 T@Vec_92615) ) (! (= (|$IsEqual'vec'bool''| v1@@11 v2@@11)  (and (= (|l#Vec_92615| v1@@11) (|l#Vec_92615| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v1@@11) i@@48) (|Select__T@[Int]Bool_| (|v#Vec_92615| v2@@11) i@@48)))
 :qid |DiemAccountbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemAccountbpl.2785:30|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'bool''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_92615) ) (! (= (|$IsValid'vec'bool''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_92615| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) true)
 :qid |DiemAccountbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemAccountbpl.2791:30|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'bool''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_92615) (e@@11 Bool) ) (! (let ((i@@50 (|$IndexOfVec'bool'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@29) i@@51) e@@11))
 :qid |DiemAccountbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@29) j@@11) e@@11)))
 :qid |DiemAccountbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemAccountbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'bool'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_33444) (v2@@12 T@Vec_33444) ) (! (= (|$IsEqual'vec'address''| v1@@12 v2@@12)  (and (= (|l#Vec_33444| v1@@12) (|l#Vec_33444| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_17837 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_33444| v2@@12) i@@52)))
 :qid |DiemAccountbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemAccountbpl.2966:33|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'address''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_33444) ) (! (= (|$IsValid'vec'address''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_33444| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_17837 v@@30 i@@53) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_33444| v@@30) i@@53)))
 :qid |DiemAccountbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemAccountbpl.2972:33|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'address''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_33444) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'address'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_17837 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@31) i@@55) e@@12))
 :qid |DiemAccountbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_17837 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@31) j@@12) e@@12)))
 :qid |DiemAccountbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemAccountbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'address'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_33444) (v2@@13 T@Vec_33444) ) (! (= (|$IsEqual'vec'u64''| v1@@13 v2@@13)  (and (= (|l#Vec_33444| v1@@13) (|l#Vec_33444| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_17837 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_33444| v2@@13) i@@56)))
 :qid |DiemAccountbpl.3149:13|
 :skolemid |115|
))))
 :qid |DiemAccountbpl.3147:29|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u64''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_33444) ) (! (= (|$IsValid'vec'u64''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_33444| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_17837 v@@32 i@@57) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_33444| v@@32) i@@57)))
 :qid |DiemAccountbpl.3155:13|
 :skolemid |117|
))))
 :qid |DiemAccountbpl.3153:29|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u64''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_33444) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u64'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_17837 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@33) i@@59) e@@13))
 :qid |DiemAccountbpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_17837 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@33) j@@13) e@@13)))
 :qid |DiemAccountbpl.3168:17|
 :skolemid |120|
)))))
 :qid |DiemAccountbpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u64'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_33444) (v2@@14 T@Vec_33444) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14)  (and (= (|l#Vec_33444| v1@@14) (|l#Vec_33444| v2@@14)) (forall ((i@@60 Int) ) (!  (=> (InRangeVec_17837 v1@@14 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v1@@14) i@@60) (|Select__T@[Int]Int_| (|v#Vec_33444| v2@@14) i@@60)))
 :qid |DiemAccountbpl.3330:13|
 :skolemid |122|
))))
 :qid |DiemAccountbpl.3328:28|
 :skolemid |123|
 :pattern ( (|$IsEqual'vec'u8''| v1@@14 v2@@14))
)))
(assert (forall ((v@@34 T@Vec_33444) ) (! (= (|$IsValid'vec'u8''| v@@34)  (and (|$IsValid'u64'| (|l#Vec_33444| v@@34)) (forall ((i@@61 Int) ) (!  (=> (InRangeVec_17837 v@@34 i@@61) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_33444| v@@34) i@@61)))
 :qid |DiemAccountbpl.3336:13|
 :skolemid |124|
))))
 :qid |DiemAccountbpl.3334:28|
 :skolemid |125|
 :pattern ( (|$IsValid'vec'u8''| v@@34))
)))
(assert (forall ((v@@35 T@Vec_33444) (e@@14 Int) ) (! (let ((i@@62 (|$IndexOfVec'u8'| v@@35 e@@14)))
(ite  (not (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (InRangeVec_17837 v@@35 i@@63)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@35) i@@63) e@@14))
 :qid |DiemAccountbpl.3341:13|
 :skolemid |126|
))) (= i@@62 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@62) (InRangeVec_17837 v@@35 i@@62)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@35) i@@62) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@14) (>= j@@14 0)) (< j@@14 i@@62)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@35) j@@14) e@@14)))
 :qid |DiemAccountbpl.3349:17|
 :skolemid |127|
)))))
 :qid |DiemAccountbpl.3345:15|
 :skolemid |128|
 :pattern ( (|$IndexOfVec'u8'| v@@35 e@@14))
)))
(assert (forall ((v1@@15 T@Vec_33444) (v2@@15 T@Vec_33444) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@15) ($1_Hash_sha2 v2@@15)))
 :qid |DiemAccountbpl.3522:15|
 :skolemid |129|
 :pattern ( ($1_Hash_sha2 v1@@15) ($1_Hash_sha2 v2@@15))
)))
(assert (forall ((v1@@16 T@Vec_33444) (v2@@16 T@Vec_33444) ) (! (= (|$IsEqual'vec'u8''| v1@@16 v2@@16) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@16) ($1_Hash_sha3 v2@@16)))
 :qid |DiemAccountbpl.3538:15|
 :skolemid |130|
 :pattern ( ($1_Hash_sha3 v1@@16) ($1_Hash_sha3 v2@@16))
)))
(assert (forall ((k1 T@Vec_33444) (k2 T@Vec_33444) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemAccountbpl.3609:15|
 :skolemid |131|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_33444) (s2 T@Vec_33444) (k1@@0 T@Vec_33444) (k2@@0 T@Vec_33444) (m1 T@Vec_33444) (m2 T@Vec_33444) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemAccountbpl.3612:15|
 :skolemid |132|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@17 Int) (v2@@17 Int) ) (! (= (= v1@@17 v2@@17) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@17) (|$1_BCS_serialize'address'| v2@@17)))
 :qid |DiemAccountbpl.3639:15|
 :skolemid |133|
 :pattern ( (|$1_BCS_serialize'address'| v1@@17) (|$1_BCS_serialize'address'| v2@@17))
)))
(assert (forall ((v@@36 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@36)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_33444| r@@0) 0)))
 :qid |DiemAccountbpl.3644:15|
 :skolemid |134|
 :pattern ( (|$1_BCS_serialize'address'| v@@36))
)))
(assert (forall ((v@@37 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@37)))
(= (|l#Vec_33444| r@@1) $serialized_address_len))
 :qid |DiemAccountbpl.3658:15|
 :skolemid |135|
 :pattern ( (|$1_BCS_serialize'address'| v@@37))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_421725| stream) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream) v@@38) 0)
 :qid |DiemAccountbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemAccountbpl.3705:13|
 :skolemid |136|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemAccountbpl.3746:80|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@18 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@18 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@18)))
 :qid |DiemAccountbpl.3752:15|
 :skolemid |139|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@18))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemAccountbpl.3802:82|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@19 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@19 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@19) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@19)))
 :qid |DiemAccountbpl.3808:15|
 :skolemid |141|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@19) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@19))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemAccountbpl.3858:80|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@20 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@20 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@20) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@20)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@20) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@20))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@20) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@20))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@20) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@20)))
 :qid |DiemAccountbpl.3864:15|
 :skolemid |143|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@20) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@20))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemAccountbpl.3914:79|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_AdminTransactionEvent) (v2@@21 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@21)))
 :qid |DiemAccountbpl.3920:15|
 :skolemid |145|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@21))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemAccountbpl.3970:76|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_CreateAccountEvent) (v2@@22 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@22 v2@@22) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@22)))
 :qid |DiemAccountbpl.3976:15|
 :skolemid |147|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@22))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemAccountbpl.4026:78|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@23 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@23 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@23))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@23))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@23))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@23)))
 :qid |DiemAccountbpl.4032:15|
 :skolemid |149|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@23))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemAccountbpl.4082:74|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@24 T@$1_DiemAccount_SentPaymentEvent) (v2@@24 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@24))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@24))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@24) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@24)))
 :qid |DiemAccountbpl.4088:15|
 :skolemid |151|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@24) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@24))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemAccountbpl.4138:69|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@25 T@$1_DiemBlock_NewBlockEvent) (v2@@25 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@25) (|$round#$1_DiemBlock_NewBlockEvent| v2@@25)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@25) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@25))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@25) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@25))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@25) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@25))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@25) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@25)))
 :qid |DiemAccountbpl.4144:15|
 :skolemid |153|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@25) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@25))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemAccountbpl.4194:70|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@26 T@$1_DiemConfig_NewEpochEvent) (v2@@26 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@26 v2@@26) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@26)))
 :qid |DiemAccountbpl.4200:15|
 :skolemid |155|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@26))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemAccountbpl.4250:60|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@27 T@$1_Diem_BurnEvent) (v2@@27 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@27) (|$amount#$1_Diem_BurnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@27) (|$currency_code#$1_Diem_BurnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@27) (|$preburn_address#$1_Diem_BurnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@27)))
 :qid |DiemAccountbpl.4256:15|
 :skolemid |157|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@27))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemAccountbpl.4306:66|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@28 T@$1_Diem_CancelBurnEvent) (v2@@28 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@28) (|$amount#$1_Diem_CancelBurnEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@28) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@28))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@28) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@28) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@28)))
 :qid |DiemAccountbpl.4312:15|
 :skolemid |159|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@28) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@28))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemAccountbpl.4362:60|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@29 T@$1_Diem_MintEvent) (v2@@29 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@29) (|$amount#$1_Diem_MintEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@29) (|$currency_code#$1_Diem_MintEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@29) (|$ToEventRep'$1_Diem_MintEvent'| v2@@29)))
 :qid |DiemAccountbpl.4368:15|
 :skolemid |161|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@29) (|$ToEventRep'$1_Diem_MintEvent'| v2@@29))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemAccountbpl.4418:63|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@30 T@$1_Diem_PreburnEvent) (v2@@30 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@30) (|$amount#$1_Diem_PreburnEvent| v2@@30)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@30) (|$currency_code#$1_Diem_PreburnEvent| v2@@30))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@30) (|$preburn_address#$1_Diem_PreburnEvent| v2@@30))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@30) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@30)))
 :qid |DiemAccountbpl.4424:15|
 :skolemid |163|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@30) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@30))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemAccountbpl.4474:79|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@31 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@31 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@31) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@31)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@31) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@31))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@31) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@31)))
 :qid |DiemAccountbpl.4480:15|
 :skolemid |165|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@31) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@31))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemAccountbpl.4530:82|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@32 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@32 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@32) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@32)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@32) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@32))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@32)))
 :qid |DiemAccountbpl.4536:15|
 :skolemid |167|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@32))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemAccountbpl.4586:88|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@33 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@33 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@33) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@33)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@33) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@33))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@33)))
 :qid |DiemAccountbpl.4592:15|
 :skolemid |169|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@33))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemAccountbpl.4642:72|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@34 T@$1_VASPDomain_VASPDomainEvent) (v2@@34 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@34) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@34)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@34)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@34)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@34) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@34))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@34) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@34)))
 :qid |DiemAccountbpl.4648:15|
 :skolemid |171|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@34) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@34))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemAccountbpl.4732:61|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemAccountbpl.5582:36|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemAccountbpl.7618:71|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemAccountbpl.8032:46|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemAccountbpl.8044:64|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemAccountbpl.8056:75|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemAccountbpl.8068:72|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemAccountbpl.8106:55|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemAccountbpl.8129:46|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemAccountbpl.9873:49|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemAccountbpl.9978:71|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemAccountbpl.9991:91|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemAccountbpl.10004:113|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemAccountbpl.10017:89|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemAccountbpl.10030:75|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemAccountbpl.10043:73|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemAccountbpl.10063:48|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemAccountbpl.10080:57|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemAccountbpl.10094:83|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemAccountbpl.10108:103|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemAccountbpl.10122:125|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |DiemAccountbpl.10136:101|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemAccountbpl.10150:87|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemAccountbpl.10164:85|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemAccountbpl.10178:48|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemAccountbpl.10199:45|
 :skolemid |326|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemAccountbpl.10213:51|
 :skolemid |327|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemAccountbpl.10236:48|
 :skolemid |328|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemAccountbpl.10535:49|
 :skolemid |329|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemAccountbpl.10548:65|
 :skolemid |330|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemAccountbpl.11179:45|
 :skolemid |331|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemAccountbpl.11192:45|
 :skolemid |332|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |DiemAccountbpl.11205:37|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |DiemAccountbpl.11218:55|
 :skolemid |334|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |DiemAccountbpl.11232:55|
 :skolemid |335|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |DiemAccountbpl.11246:47|
 :skolemid |336|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |DiemAccountbpl.11266:38|
 :skolemid |337|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |DiemAccountbpl.11288:44|
 :skolemid |338|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |DiemAccountbpl.11340:53|
 :skolemid |339|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |DiemAccountbpl.11413:53|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |DiemAccountbpl.11486:45|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |DiemAccountbpl.11523:55|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |DiemAccountbpl.11537:55|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |DiemAccountbpl.11551:47|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |DiemAccountbpl.11568:38|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |DiemAccountbpl.11582:48|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |DiemAccountbpl.11596:48|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |DiemAccountbpl.11610:40|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |DiemAccountbpl.11630:41|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |DiemAccountbpl.11646:53|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |DiemAccountbpl.11659:53|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |DiemAccountbpl.11672:45|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |DiemAccountbpl.11688:60|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |DiemAccountbpl.11705:60|
 :skolemid |354|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |DiemAccountbpl.11722:52|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |DiemAccountbpl.11739:57|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |DiemAccountbpl.16711:68|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |DiemAccountbpl.16733:66|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |DiemAccountbpl.16759:66|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |DiemAccountbpl.16785:58|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |DiemAccountbpl.16814:56|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |DiemAccountbpl.16844:56|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |DiemAccountbpl.16874:48|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |DiemAccountbpl.17340:31|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |DiemAccountbpl.17670:31|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |DiemAccountbpl.17689:35|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |DiemAccountbpl.18103:45|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |DiemAccountbpl.18121:50|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |DiemAccountbpl.18137:52|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |DiemAccountbpl.18150:46|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |DiemAccountbpl.19982:38|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |DiemAccountbpl.19996:39|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |DiemAccountbpl.20789:65|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@72)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@72)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@72))))
 :qid |DiemAccountbpl.20807:65|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@72))
)))
(assert (forall ((s@@73 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@73)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@73)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@73))))
 :qid |DiemAccountbpl.20825:57|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@73))
)))
(assert (forall ((payer Int) (metadata T@Vec_33444) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DiemAccountbpl.21912:15|
 :skolemid |466|
)))
(assert (forall ((s@@74 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@74)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@74)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@74))))
 :qid |DiemAccountbpl.21940:60|
 :skolemid |467|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@75)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@75)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@75))))
 :qid |DiemAccountbpl.21957:66|
 :skolemid |468|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@76)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@76)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@76))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@76))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@76))))
 :qid |DiemAccountbpl.21986:50|
 :skolemid |469|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@77) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@77)))
 :qid |DiemAccountbpl.22009:45|
 :skolemid |470|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@78)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@78)) true))
 :qid |DiemAccountbpl.23542:87|
 :skolemid |489|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@79) true)
 :qid |DiemAccountbpl.23556:75|
 :skolemid |490|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@80)))
 :qid |DiemAccountbpl.24203:47|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@81)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@81))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@81))))
 :qid |DiemAccountbpl.24222:58|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@82)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82))))
 :qid |DiemAccountbpl.24244:61|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@83)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83))))
 :qid |DiemAccountbpl.24267:61|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@84)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@84)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@84))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@84))))
 :qid |DiemAccountbpl.24290:53|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@84))
)))
(assert (forall ((s@@85 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@85) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@85)))
 :qid |DiemAccountbpl.26391:39|
 :skolemid |601|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@85))
)))
(assert (forall ((s@@86 T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s@@86)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s@@86)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s@@86))))
 :qid |DiemAccountbpl.26499:43|
 :skolemid |602|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s@@86))
)))
(assert (forall ((s@@87 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@87)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@87)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@87))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@87))))
 :qid |DiemAccountbpl.28132:33|
 :skolemid |603|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@87))
)))
(assert (forall ((s@@88 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@88)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@88))))
 :qid |DiemAccountbpl.29201:58|
 :skolemid |604|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@89)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@89))))
 :qid |DiemAccountbpl.29218:58|
 :skolemid |605|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@89))
)))
(assert (forall ((s@@90 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@90) true)
 :qid |DiemAccountbpl.29233:51|
 :skolemid |606|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@90))
)))
(assert (forall ((s@@91 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@91)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@91)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@91))))
 :qid |DiemAccountbpl.29250:60|
 :skolemid |607|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@91))
)))
(assert (forall ((auth_key_prefix T@Vec_33444) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |DiemAccountbpl.31002:15|
 :skolemid |680|
)))
(assert (forall ((s@@92 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@92)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@92)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@92))))
 :qid |DiemAccountbpl.31082:47|
 :skolemid |681|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@93)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@93)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@93))))
 :qid |DiemAccountbpl.31108:63|
 :skolemid |682|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@94) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@94)))
 :qid |DiemAccountbpl.31123:57|
 :skolemid |683|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@94))
)))
(assert (forall ((s@@95 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@95) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@95)))
 :qid |DiemAccountbpl.31136:55|
 :skolemid |684|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@95))
)))
(assert (forall ((s@@96 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@96) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@96)))
 :qid |DiemAccountbpl.31150:55|
 :skolemid |685|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@96))
)))
(assert (forall ((s@@97 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@97) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@97)))
 :qid |DiemAccountbpl.31164:47|
 :skolemid |686|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@98)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@98)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@98))))
 :qid |DiemAccountbpl.31181:54|
 :skolemid |687|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@99) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@99)))
 :qid |DiemAccountbpl.31195:55|
 :skolemid |688|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@100) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@100)))
 :qid |DiemAccountbpl.31208:57|
 :skolemid |689|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@101)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@101)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@101))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@101))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@101))))
 :qid |DiemAccountbpl.31230:56|
 :skolemid |690|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@102)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@102)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@102))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@102))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@102))))
 :qid |DiemAccountbpl.31257:52|
 :skolemid |691|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@103) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@103)))
 :qid |DiemAccountbpl.31275:54|
 :skolemid |692|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@103))
)))
(assert (forall ((s@@104 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@104) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@104)))
 :qid |DiemAccountbpl.104361:55|
 :skolemid |3691|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@104))
)))
(assert (forall ((s@@105 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@105)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@105)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@105))))
 :qid |DiemAccountbpl.105492:47|
 :skolemid |3848|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@105))
)))
(assert (forall ((s@@106 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@106)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@106)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@106))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@106))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@106))))
 :qid |DiemAccountbpl.105516:47|
 :skolemid |3849|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@106))
)))
(assert (forall ((s@@107 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@107) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@107)))
 :qid |DiemAccountbpl.105750:63|
 :skolemid |3850|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@107))
)))
(assert (forall ((s@@108 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@108) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@108)))
 :qid |DiemAccountbpl.106085:49|
 :skolemid |3851|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@108))
)))
(assert (forall ((s@@109 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@109)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@109)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@109))))
 :qid |DiemAccountbpl.106127:49|
 :skolemid |3852|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@109))
)))
(assert (forall ((s@@110 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@110)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@110)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@110))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@110))))
 :qid |DiemAccountbpl.106156:48|
 :skolemid |3853|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@110))
)))
(assert (forall ((s@@111 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@111) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@111)))
 :qid |DiemAccountbpl.106441:47|
 :skolemid |3854|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@111))
)))
(assert (forall ((v@@39 T@Vec_423840) (i@@64 Int) ) (! (= (InRangeVec_383763 v@@39 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_423840| v@@39))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_383763 v@@39 i@@64))
)))
(assert (forall ((v@@40 T@Vec_421850) (i@@65 Int) ) (! (= (InRangeVec_383964 v@@40 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_421850| v@@40))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_383964 v@@40 i@@65))
)))
(assert (forall ((v@@41 T@Vec_421889) (i@@66 Int) ) (! (= (InRangeVec_384165 v@@41 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_421889| v@@41))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384165 v@@41 i@@66))
)))
(assert (forall ((v@@42 T@Vec_422023) (i@@67 Int) ) (! (= (InRangeVec_384366 v@@42 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_422023| v@@42))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384366 v@@42 i@@67))
)))
(assert (forall ((v@@43 T@Vec_422368) (i@@68 Int) ) (! (= (InRangeVec_384567 v@@43 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_422368| v@@43))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384567 v@@43 i@@68))
)))
(assert (forall ((v@@44 T@Vec_422329) (i@@69 Int) ) (! (= (InRangeVec_384768 v@@44 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_422329| v@@44))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384768 v@@44 i@@69))
)))
(assert (forall ((v@@45 T@Vec_422290) (i@@70 Int) ) (! (= (InRangeVec_384969 v@@45 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_422290| v@@45))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384969 v@@45 i@@70))
)))
(assert (forall ((v@@46 T@Vec_422523) (i@@71 Int) ) (! (= (InRangeVec_385170 v@@46 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_422523| v@@46))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385170 v@@46 i@@71))
)))
(assert (forall ((v@@47 T@Vec_421811) (i@@72 Int) ) (! (= (InRangeVec_385371 v@@47 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_421811| v@@47))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385371 v@@47 i@@72))
)))
(assert (forall ((v@@48 T@Vec_448056) (i@@73 Int) ) (! (= (InRangeVec_385572 v@@48 i@@73)  (and (>= i@@73 0) (< i@@73 (|l#Vec_448056| v@@48))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385572 v@@48 i@@73))
)))
(assert (forall ((v@@49 T@Vec_450736) (i@@74 Int) ) (! (= (InRangeVec_385773 v@@49 i@@74)  (and (>= i@@74 0) (< i@@74 (|l#Vec_450736| v@@49))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385773 v@@49 i@@74))
)))
(assert (forall ((v@@50 T@Vec_422080) (i@@75 Int) ) (! (= (InRangeVec_453498 v@@50 i@@75)  (and (>= i@@75 0) (< i@@75 (|l#Vec_422080| v@@50))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_453498 v@@50 i@@75))
)))
(assert (forall ((v@@51 T@Vec_92615) (i@@76 Int) ) (! (= (InRangeVec_16728 v@@51 i@@76)  (and (>= i@@76 0) (< i@@76 (|l#Vec_92615| v@@51))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@51 i@@76))
)))
(assert (forall ((v@@52 T@Vec_33444) (i@@77 Int) ) (! (= (InRangeVec_17837 v@@52 i@@77)  (and (>= i@@77 0) (< i@@77 (|l#Vec_33444| v@@52))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_17837 v@@52 i@@77))
)))
(assert (forall ((v@@53 T@Vec_33444) (e@@15 Int) ) (! (let ((i@@78 (IndexOfVec_33444 v@@53 e@@15)))
(ite  (not (exists ((i@@79 Int) ) (!  (and (InRangeVec_17837 v@@53 i@@79) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@53) i@@79) e@@15))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@78 (- 0 1))  (and (and (InRangeVec_17837 v@@53 i@@78) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@53) i@@78) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@78)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@53) j@@15) e@@15)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33444 v@@53 e@@15))
)))
(assert (forall ((v@@54 T@Vec_421811) (e@@16 T@$1_ValidatorConfig_Config) ) (! (let ((i@@80 (IndexOfVec_421811 v@@54 e@@16)))
(ite  (not (exists ((i@@81 Int) ) (!  (and (InRangeVec_385371 v@@54 i@@81) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@54) i@@81) e@@16))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@80 (- 0 1))  (and (and (InRangeVec_385371 v@@54 i@@80) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@54) i@@80) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@80)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@54) j@@16) e@@16)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_421811 v@@54 e@@16))
)))
(assert (forall ((v@@55 T@Vec_421850) (e@@17 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@82 (IndexOfVec_421850 v@@55 e@@17)))
(ite  (not (exists ((i@@83 Int) ) (!  (and (InRangeVec_383964 v@@55 i@@83) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@55) i@@83) e@@17))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@82 (- 0 1))  (and (and (InRangeVec_383964 v@@55 i@@82) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@55) i@@82) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@82)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@55) j@@17) e@@17)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_421850 v@@55 e@@17))
)))
(assert (forall ((v@@56 T@Vec_421889) (e@@18 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@84 (IndexOfVec_421889 v@@56 e@@18)))
(ite  (not (exists ((i@@85 Int) ) (!  (and (InRangeVec_384165 v@@56 i@@85) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@56) i@@85) e@@18))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@84 (- 0 1))  (and (and (InRangeVec_384165 v@@56 i@@84) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@56) i@@84) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@84)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@56) j@@18) e@@18)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_421889 v@@56 e@@18))
)))
(assert (forall ((v@@57 T@Vec_422023) (e@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@86 (IndexOfVec_422023 v@@57 e@@19)))
(ite  (not (exists ((i@@87 Int) ) (!  (and (InRangeVec_384366 v@@57 i@@87) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@57) i@@87) e@@19))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@86 (- 0 1))  (and (and (InRangeVec_384366 v@@57 i@@86) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@57) i@@86) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@86)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@57) j@@19) e@@19)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422023 v@@57 e@@19))
)))
(assert (forall ((v@@58 T@Vec_422080) (e@@20 T@Vec_33444) ) (! (let ((i@@88 (IndexOfVec_422080 v@@58 e@@20)))
(ite  (not (exists ((i@@89 Int) ) (!  (and (InRangeVec_453498 v@@58 i@@89) (= (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@58) i@@89) e@@20))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@88 (- 0 1))  (and (and (InRangeVec_453498 v@@58 i@@88) (= (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@58) i@@88) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@88)) (not (= (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@58) j@@20) e@@20)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422080 v@@58 e@@20))
)))
(assert (forall ((v@@59 T@Vec_422290) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@90 (IndexOfVec_422290 v@@59 e@@21)))
(ite  (not (exists ((i@@91 Int) ) (!  (and (InRangeVec_384969 v@@59 i@@91) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@59) i@@91) e@@21))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@90 (- 0 1))  (and (and (InRangeVec_384969 v@@59 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@59) i@@90) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@90)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@59) j@@21) e@@21)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422290 v@@59 e@@21))
)))
(assert (forall ((v@@60 T@Vec_422329) (e@@22 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@92 (IndexOfVec_422329 v@@60 e@@22)))
(ite  (not (exists ((i@@93 Int) ) (!  (and (InRangeVec_384768 v@@60 i@@93) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@60) i@@93) e@@22))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@92 (- 0 1))  (and (and (InRangeVec_384768 v@@60 i@@92) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@60) i@@92) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@92)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@60) j@@22) e@@22)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422329 v@@60 e@@22))
)))
(assert (forall ((v@@61 T@Vec_422368) (e@@23 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@94 (IndexOfVec_422368 v@@61 e@@23)))
(ite  (not (exists ((i@@95 Int) ) (!  (and (InRangeVec_384567 v@@61 i@@95) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@61) i@@95) e@@23))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@94 (- 0 1))  (and (and (InRangeVec_384567 v@@61 i@@94) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@61) i@@94) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@94)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@61) j@@23) e@@23)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422368 v@@61 e@@23))
)))
(assert (forall ((v@@62 T@Vec_422523) (e@@24 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@96 (IndexOfVec_422523 v@@62 e@@24)))
(ite  (not (exists ((i@@97 Int) ) (!  (and (InRangeVec_385170 v@@62 i@@97) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@62) i@@97) e@@24))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@96 (- 0 1))  (and (and (InRangeVec_385170 v@@62 i@@96) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@62) i@@96) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@96)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@62) j@@24) e@@24)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422523 v@@62 e@@24))
)))
(assert (forall ((v@@63 T@Vec_92615) (e@@25 Bool) ) (! (let ((i@@98 (IndexOfVec_92615 v@@63 e@@25)))
(ite  (not (exists ((i@@99 Int) ) (!  (and (InRangeVec_16728 v@@63 i@@99) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@63) i@@99) e@@25))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@98 (- 0 1))  (and (and (InRangeVec_16728 v@@63 i@@98) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@63) i@@98) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@98)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@63) j@@25) e@@25)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_92615 v@@63 e@@25))
)))
(assert (forall ((v@@64 T@Vec_423840) (e@@26 |T@#0|) ) (! (let ((i@@100 (IndexOfVec_423840 v@@64 e@@26)))
(ite  (not (exists ((i@@101 Int) ) (!  (and (InRangeVec_383763 v@@64 i@@101) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@64) i@@101) e@@26))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@100 (- 0 1))  (and (and (InRangeVec_383763 v@@64 i@@100) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@64) i@@100) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@100)) (not (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@64) j@@26) e@@26)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_423840 v@@64 e@@26))
)))
(assert (forall ((v@@65 T@Vec_448056) (e@@27 T@$1_XDX_XDX) ) (! (let ((i@@102 (IndexOfVec_448056 v@@65 e@@27)))
(ite  (not (exists ((i@@103 Int) ) (!  (and (InRangeVec_385572 v@@65 i@@103) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@65) i@@103) e@@27))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@102 (- 0 1))  (and (and (InRangeVec_385572 v@@65 i@@102) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@65) i@@102) e@@27)) (forall ((j@@27 Int) ) (!  (=> (and (>= j@@27 0) (< j@@27 i@@102)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@65) j@@27) e@@27)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_448056 v@@65 e@@27))
)))
(assert (forall ((v@@66 T@Vec_450736) (e@@28 T@$1_XUS_XUS) ) (! (let ((i@@104 (IndexOfVec_450736 v@@66 e@@28)))
(ite  (not (exists ((i@@105 Int) ) (!  (and (InRangeVec_385773 v@@66 i@@105) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@66) i@@105) e@@28))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@104 (- 0 1))  (and (and (InRangeVec_385773 v@@66 i@@104) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@66) i@@104) e@@28)) (forall ((j@@28 Int) ) (!  (=> (and (>= j@@28 0) (< j@@28 i@@104)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@66) j@@28) e@@28)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_450736 v@@66 e@@28))
)))
(assert (forall ((|l#0| Bool) (i@@106 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@106) |l#0|)
 :qid |DiemAccountbpl.275:54|
 :skolemid |3945|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@106))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_421725|) (|l#1| |T@[$1_Event_EventHandle]Multiset_421725|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#1| handle@@0))))
(Multiset_421725 (|lambda#45| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#0@@0| handle@@0)) (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemAccountbpl.3715:13|
 :skolemid |3946|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@107 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@107) (ite  (and (>= i@@107 |l#0@@1|) (< i@@107 |l#1@@0|)) (ite (< i@@107 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@107) (|Select__T@[Int]#0_| |l#4| (- i@@107 |l#5|))) |l#6|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3947|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@107))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@108 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@108) (ite  (and (<= |l#0@@2| i@@108) (< i@@108 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@108) |l#4@@0|)) |l#5@@0|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3948|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@108))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@29 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@29) (ite  (and (>= j@@29 |l#0@@3|) (< j@@29 |l#1@@2|)) (ite (< j@@29 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@29) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@29 |l#5@@1|))) |l#6@@0|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3949|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@29))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@109) (ite  (and (>= i@@109 |l#0@@4|) (< i@@109 |l#1@@3|)) (ite (< i@@109 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@109) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@109 |l#5@@2|))) |l#6@@1|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3950|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@109))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@110) (ite  (and (<= |l#0@@5| i@@110) (< i@@110 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@110) |l#4@@3|)) |l#5@@3|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3951|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@110))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@30) (ite  (and (>= j@@30 |l#0@@6|) (< j@@30 |l#1@@5|)) (ite (< j@@30 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@30) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@30 |l#5@@4|))) |l#6@@2|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3952|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@30))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@111) (ite  (and (>= i@@111 |l#0@@7|) (< i@@111 |l#1@@6|)) (ite (< i@@111 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@111) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@111 |l#5@@5|))) |l#6@@3|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3953|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@111))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@112) (ite  (and (<= |l#0@@8| i@@112) (< i@@112 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@112) |l#4@@6|)) |l#5@@6|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3954|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@112))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@31) (ite  (and (>= j@@31 |l#0@@9|) (< j@@31 |l#1@@8|)) (ite (< j@@31 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@31) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@31 |l#5@@7|))) |l#6@@4|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3955|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@31))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@113) (ite  (and (>= i@@113 |l#0@@10|) (< i@@113 |l#1@@9|)) (ite (< i@@113 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@113) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@113 |l#5@@8|))) |l#6@@5|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3956|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@113))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@114) (ite  (and (<= |l#0@@11| i@@114) (< i@@114 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@114) |l#4@@9|)) |l#5@@9|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3957|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@114))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@32) (ite  (and (>= j@@32 |l#0@@12|) (< j@@32 |l#1@@11|)) (ite (< j@@32 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@32) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@32 |l#5@@10|))) |l#6@@6|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3958|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@32))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@115) (ite  (and (>= i@@115 |l#0@@13|) (< i@@115 |l#1@@12|)) (ite (< i@@115 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@115) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@115 |l#5@@11|))) |l#6@@7|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3959|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@115))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@116) (ite  (and (<= |l#0@@14| i@@116) (< i@@116 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@116) |l#4@@12|)) |l#5@@12|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3960|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@116))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@33) (ite  (and (>= j@@33 |l#0@@15|) (< j@@33 |l#1@@14|)) (ite (< j@@33 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@33 |l#5@@13|))) |l#6@@8|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3961|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@33))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@117) (ite  (and (>= i@@117 |l#0@@16|) (< i@@117 |l#1@@15|)) (ite (< i@@117 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@117) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@117 |l#5@@14|))) |l#6@@9|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3962|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@117))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@118) (ite  (and (<= |l#0@@17| i@@118) (< i@@118 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@118) |l#4@@15|)) |l#5@@15|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3963|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@118))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@34) (ite  (and (>= j@@34 |l#0@@18|) (< j@@34 |l#1@@17|)) (ite (< j@@34 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@34) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@34 |l#5@@16|))) |l#6@@10|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3964|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@34))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@119) (ite  (and (>= i@@119 |l#0@@19|) (< i@@119 |l#1@@18|)) (ite (< i@@119 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@119) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@119 |l#5@@17|))) |l#6@@11|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3965|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@119))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@120) (ite  (and (<= |l#0@@20| i@@120) (< i@@120 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@120) |l#4@@18|)) |l#5@@18|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3966|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@120))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@35) (ite  (and (>= j@@35 |l#0@@21|) (< j@@35 |l#1@@20|)) (ite (< j@@35 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@35) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@35 |l#5@@19|))) |l#6@@12|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3967|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@35))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@121) (ite  (and (>= i@@121 |l#0@@22|) (< i@@121 |l#1@@21|)) (ite (< i@@121 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@121) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@121 |l#5@@20|))) |l#6@@13|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3968|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@121))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@122 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@122) (ite  (and (<= |l#0@@23| i@@122) (< i@@122 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@122) |l#4@@21|)) |l#5@@21|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3969|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@122))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@36) (ite  (and (>= j@@36 |l#0@@24|) (< j@@36 |l#1@@23|)) (ite (< j@@36 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@36) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@36 |l#5@@22|))) |l#6@@14|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3970|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@36))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@123 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@123) (ite  (and (>= i@@123 |l#0@@25|) (< i@@123 |l#1@@24|)) (ite (< i@@123 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@123) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@123 |l#5@@23|))) |l#6@@15|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3971|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@123))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@124 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@124) (ite  (and (<= |l#0@@26| i@@124) (< i@@124 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@124) |l#4@@24|)) |l#5@@24|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3972|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@124))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@37) (ite  (and (>= j@@37 |l#0@@27|) (< j@@37 |l#1@@26|)) (ite (< j@@37 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@37) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@37 |l#5@@25|))) |l#6@@16|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3973|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@37))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@125 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@125) (ite  (and (>= i@@125 |l#0@@28|) (< i@@125 |l#1@@27|)) (ite (< i@@125 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@125) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@125 |l#5@@26|))) |l#6@@17|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3974|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@125))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@126 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@126) (ite  (and (<= |l#0@@29| i@@126) (< i@@126 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@126) |l#4@@27|)) |l#5@@27|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3975|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@126))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@38 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@38) (ite  (and (>= j@@38 |l#0@@30|) (< j@@38 |l#1@@29|)) (ite (< j@@38 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@38) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@38 |l#5@@28|))) |l#6@@18|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3976|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@38))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@127 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@127) (ite  (and (>= i@@127 |l#0@@31|) (< i@@127 |l#1@@30|)) (ite (< i@@127 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@127) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@127 |l#5@@29|))) |l#6@@19|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3977|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@127))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@128 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@128) (ite  (and (<= |l#0@@32| i@@128) (< i@@128 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@128) |l#4@@30|)) |l#5@@30|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3978|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@128))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@39 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@39) (ite  (and (>= j@@39 |l#0@@33|) (< j@@39 |l#1@@32|)) (ite (< j@@39 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@39) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@39 |l#5@@31|))) |l#6@@20|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3979|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@39))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_33444|) (|l#4@@32| |T@[Int]Vec_33444|) (|l#5@@32| Int) (|l#6@@21| T@Vec_33444) (i@@129 Int) ) (! (= (|Select__T@[Int]Vec_33444_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@129) (ite  (and (>= i@@129 |l#0@@34|) (< i@@129 |l#1@@33|)) (ite (< i@@129 |l#2@@32|) (|Select__T@[Int]Vec_33444_| |l#3@@32| i@@129) (|Select__T@[Int]Vec_33444_| |l#4@@32| (- i@@129 |l#5@@32|))) |l#6@@21|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3980|
 :pattern ( (|Select__T@[Int]Vec_33444_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@129))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_33444|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_33444) (i@@130 Int) ) (! (= (|Select__T@[Int]Vec_33444_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@130) (ite  (and (<= |l#0@@35| i@@130) (< i@@130 |l#1@@34|)) (|Select__T@[Int]Vec_33444_| |l#2@@33| (- (- |l#3@@33| i@@130) |l#4@@33|)) |l#5@@33|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3981|
 :pattern ( (|Select__T@[Int]Vec_33444_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@130))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_33444|) (|l#4@@34| |T@[Int]Vec_33444|) (|l#5@@34| Int) (|l#6@@22| T@Vec_33444) (j@@40 Int) ) (! (= (|Select__T@[Int]Vec_33444_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@40) (ite  (and (>= j@@40 |l#0@@36|) (< j@@40 |l#1@@35|)) (ite (< j@@40 |l#2@@34|) (|Select__T@[Int]Vec_33444_| |l#3@@34| j@@40) (|Select__T@[Int]Vec_33444_| |l#4@@34| (+ j@@40 |l#5@@34|))) |l#6@@22|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3982|
 :pattern ( (|Select__T@[Int]Vec_33444_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@40))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Bool|) (|l#4@@35| |T@[Int]Bool|) (|l#5@@35| Int) (|l#6@@23| Bool) (i@@131 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@131) (ite  (and (>= i@@131 |l#0@@37|) (< i@@131 |l#1@@36|)) (ite (< i@@131 |l#2@@35|) (|Select__T@[Int]Bool_| |l#3@@35| i@@131) (|Select__T@[Int]Bool_| |l#4@@35| (- i@@131 |l#5@@35|))) |l#6@@23|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3983|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@131))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Bool|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Bool) (i@@132 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@132) (ite  (and (<= |l#0@@38| i@@132) (< i@@132 |l#1@@37|)) (|Select__T@[Int]Bool_| |l#2@@36| (- (- |l#3@@36| i@@132) |l#4@@36|)) |l#5@@36|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3984|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@132))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Bool|) (|l#4@@37| |T@[Int]Bool|) (|l#5@@37| Int) (|l#6@@24| Bool) (j@@41 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@41) (ite  (and (>= j@@41 |l#0@@39|) (< j@@41 |l#1@@38|)) (ite (< j@@41 |l#2@@37|) (|Select__T@[Int]Bool_| |l#3@@37| j@@41) (|Select__T@[Int]Bool_| |l#4@@37| (+ j@@41 |l#5@@37|))) |l#6@@24|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3985|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@41))
)))
(assert (forall ((|l#0@@40| Int) (|l#1@@39| Int) (|l#2@@38| Int) (|l#3@@38| |T@[Int]Int|) (|l#4@@38| |T@[Int]Int|) (|l#5@@38| Int) (|l#6@@25| Int) (i@@133 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#42| |l#0@@40| |l#1@@39| |l#2@@38| |l#3@@38| |l#4@@38| |l#5@@38| |l#6@@25|) i@@133) (ite  (and (>= i@@133 |l#0@@40|) (< i@@133 |l#1@@39|)) (ite (< i@@133 |l#2@@38|) (|Select__T@[Int]Int_| |l#3@@38| i@@133) (|Select__T@[Int]Int_| |l#4@@38| (- i@@133 |l#5@@38|))) |l#6@@25|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3986|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#42| |l#0@@40| |l#1@@39| |l#2@@38| |l#3@@38| |l#4@@38| |l#5@@38| |l#6@@25|) i@@133))
)))
(assert (forall ((|l#0@@41| Int) (|l#1@@40| Int) (|l#2@@39| |T@[Int]Int|) (|l#3@@39| Int) (|l#4@@39| Int) (|l#5@@39| Int) (i@@134 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@39| |l#3@@39| |l#4@@39| |l#5@@39|) i@@134) (ite  (and (<= |l#0@@41| i@@134) (< i@@134 |l#1@@40|)) (|Select__T@[Int]Int_| |l#2@@39| (- (- |l#3@@39| i@@134) |l#4@@39|)) |l#5@@39|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3987|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@39| |l#3@@39| |l#4@@39| |l#5@@39|) i@@134))
)))
(assert (forall ((|l#0@@42| Int) (|l#1@@41| Int) (|l#2@@40| Int) (|l#3@@40| |T@[Int]Int|) (|l#4@@40| |T@[Int]Int|) (|l#5@@40| Int) (|l#6@@26| Int) (j@@42 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#44| |l#0@@42| |l#1@@41| |l#2@@40| |l#3@@40| |l#4@@40| |l#5@@40| |l#6@@26|) j@@42) (ite  (and (>= j@@42 |l#0@@42|) (< j@@42 |l#1@@41|)) (ite (< j@@42 |l#2@@40|) (|Select__T@[Int]Int_| |l#3@@40| j@@42) (|Select__T@[Int]Int_| |l#4@@40| (+ j@@42 |l#5@@40|))) |l#6@@26|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3988|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#44| |l#0@@42| |l#1@@41| |l#2@@40| |l#3@@40| |l#4@@40| |l#5@@40| |l#6@@26|) j@@42))
)))
(assert (forall ((|l#0@@43| |T@[$EventRep]Int|) (|l#1@@42| |T@[$EventRep]Int|) (v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#45| |l#0@@43| |l#1@@42|) v@@67) (- (|Select__T@[$EventRep]Int_| |l#0@@43| v@@67) (|Select__T@[$EventRep]Int_| |l#1@@42| v@@67)))
 :qid |DiemAccountbpl.154:29|
 :skolemid |3989|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#45| |l#0@@43| |l#1@@42|) v@@67))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$1_CRSN_record$0$$ret0@1 () Bool)
(declare-fun $t42@1 () T@$Mutation_657796)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_487225)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_487225)
(declare-fun $abort_flag@58 () Bool)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0| () Bool)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2| () T@$Mutation_546962)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1| () T@$Mutation_546962)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t13@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t70 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3| () T@$Mutation_546916)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2| () T@$Mutation_546916)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@0| () T@$Memory_473001)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_473001)
(declare-fun |Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| Int |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| Int) |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@58 () Int)
(declare-fun $abort_code@57 () Int)
(declare-fun $abort_flag@57 () Bool)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| () Int)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0| () Int)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_TransactionFee_TransactionFee'$1_XUS_XUS''@1| () |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@0| () T@$Mutation_546916)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@1| () T@$Mutation_546916)
(declare-fun MapConstVec_18066 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_18066 () Int)
(declare-fun $abort_flag@56 () Bool)
(declare-fun $abort_code@56 () Int)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| () Bool)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0| () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_471307)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t3@0| () T@$Mutation_546916)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@0| () T@$Mutation_546962)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t4@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t72 () Bool)
(declare-fun $t64@1 () T@$Mutation_546962)
(declare-fun $t64@0 () T@$Mutation_546962)
(declare-fun |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t71@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun $t63@2 () T@$Mutation_668571)
(declare-fun $t63@1 () T@$Mutation_668571)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_478004)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_478004)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_478064)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_472013)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $t73 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t69 () Int)
(declare-fun |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| () Int)
(declare-fun $t65@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@0| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t63 () T@$Mutation_668571)
(declare-fun $t25 () Int)
(declare-fun $t63@0 () T@$Mutation_668571)
(declare-fun $abort_flag@55 () Bool)
(declare-fun $abort_code@55 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t60@0 () T@$Mutation_18461)
(declare-fun $t60@1 () T@$Mutation_18461)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t42@2 () T@$Mutation_657796)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_473580)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_473651)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_473408)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t57@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@54 () Int)
(declare-fun $abort_flag@54 () Bool)
(declare-fun $abort_flag@53 () Bool)
(declare-fun $abort_code@53 () Int)
(declare-fun $t52 () Int)
(declare-fun inline$$1_CRSN_record$0$$t10@1 () Int)
(declare-fun inline$$1_CRSN_record$0$$ret0@0 () Bool)
(declare-fun $abort_flag@51 () Bool)
(declare-fun $abort_code@51 () Int)
(declare-fun $abort_flag@24 () Bool)
(declare-fun $abort_code@24 () Int)
(declare-fun $abort_flag@22 () Bool)
(declare-fun $abort_code@22 () Int)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun $abort_flag@19 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun $abort_flag@18 () Bool)
(declare-fun $abort_code@18 () Int)
(declare-fun $abort_flag@52 () Bool)
(declare-fun $abort_code@52 () Int)
(declare-fun inline$$1_CRSN_record$0$$t16@1 () Bool)
(declare-fun $1_CRSN_CRSN_$memory@0 () T@$Memory_576150)
(declare-fun $1_CRSN_CRSN_$memory () T@$Memory_576150)
(declare-fun inline$$1_CRSN_shift_window_right$0$$ret0 () T@$Mutation_577037)
(declare-fun |Store__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int T@$1_CRSN_CRSN) |T@[Int]$1_CRSN_CRSN|)
(declare-fun |Select__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int) T@$1_CRSN_CRSN)
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_CRSN_CRSN_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_CRSN_shift_window_right$0$$t5@1 () Int)
(declare-fun $abort_flag@49 () Bool)
(declare-fun $abort_code@49 () Int)
(declare-fun $abort_flag@48 () Bool)
(declare-fun $abort_code@48 () Int)
(declare-fun $abort_flag@30 () Bool)
(declare-fun $abort_code@30 () Int)
(declare-fun $abort_flag@50 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t11@1 () T@$Mutation_18461)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t0@1 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t11@2 () T@$Mutation_18461)
(declare-fun inline$$AddU64$5$dst@2 () Int)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t0@2 () T@$Mutation_577037)
(declare-fun |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@3| () T@$1_CRSN_CRSN)
(declare-fun inline$$AddU64$5$dst@0 () Int)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t9@1 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 () Int)
(declare-fun inline$$AddU64$5$dst@1 () Int)
(declare-fun inline$$1_CRSN_record$0$$t11@3 () T@$Mutation_577037)
(declare-fun inline$$1_BitVector_shift_left$0$$ret0@1 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_shift_left$0$$t12@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$ret0@0 () T@$Mutation_572160)
(declare-fun $abort_flag@47 () Bool)
(declare-fun $abort_code@47 () Int)
(declare-fun inline$$AddU64$4$dst@2 () Int)
(declare-fun inline$$AddU64$4$dst@0 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t13@1 () Int)
(declare-fun inline$$AddU64$4$dst@1 () Int)
(declare-fun $abort_code@46 () Int)
(declare-fun $abort_flag@46 () Bool)
(declare-fun |inline$$1_BitVector_shift_left$0$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$4$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_shift_left$0$$t19@2 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_shift_left$0$$t18@3 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$4$m'| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_shift_left$0$$t0@5 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_shift_left$0$$t0@3 () T@$Mutation_572160)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$4$dst@0| () T@$Mutation_17352)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$4$v@1| () T@Vec_92615)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$4$dst@1| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_shift_left$0$$t18@2 () T@$Mutation_456873)
(declare-fun inline$$Lt$13$dst@1 () Bool)
(declare-fun $abort_flag@42 () Bool)
(declare-fun $abort_code@42 () Int)
(declare-fun $abort_flag@40 () Bool)
(declare-fun $abort_code@40 () Int)
(declare-fun $abort_flag@44 () Bool)
(declare-fun $abort_code@44 () Int)
(declare-fun inline$$AddU64$3$dst@2 () Int)
(declare-fun inline$$AddU64$3$dst@0 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t1@1 () Int)
(declare-fun inline$$AddU64$3$dst@1 () Int)
(declare-fun $abort_code@43 () Int)
(declare-fun $abort_flag@43 () Bool)
(declare-fun $abort_flag@41 () Bool)
(declare-fun |inline$$1_BitVector_set$1$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$1$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$1$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_set$1$$t0@1 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_shift_left$0$$t0@1 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@41 () Int)
(declare-fun inline$$1_BitVector_set$1$$t7@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$dst@0| () T@$Mutation_17352)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$m'@0| () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$v@1| () T@Vec_92615)
(declare-fun inline$$Sub$6$dst@2 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$dst@1| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$1$$t11@1 () T@$Mutation_456873)
(declare-fun inline$$Lt$12$dst@1 () Bool)
(declare-fun inline$$1_BitVector_set$1$$t10@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$7$l@1| () Int)
(declare-fun inline$$1_BitVector_set$1$$t5@1 () T@Vec_92615)
(declare-fun inline$$1_BitVector_set$1$$t4@0 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$1$$t11@0 () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_set$1$$t12@0 () T@$Mutation_17352)
(declare-fun |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@1| () T@$1_BitVector_BitVector)
(declare-fun inline$$Sub$6$dst@0 () Int)
(declare-fun inline$$Sub$6$dst@1 () Int)
(declare-fun $abort_flag@36 () Bool)
(declare-fun $abort_code@36 () Int)
(declare-fun inline$$1_BitVector_is_index_set$2$$ret0@1 () Bool)
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@39 () Int)
(declare-fun $abort_flag@38 () Bool)
(declare-fun |inline$$1_BitVector_unset$1$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$1$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$1$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_unset$1$$t0@1 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@38 () Int)
(declare-fun inline$$1_BitVector_unset$1$$t7@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$dst@0| () T@$Mutation_17352)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$m'@0| () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$v@1| () T@Vec_92615)
(declare-fun inline$$Sub$5$dst@2 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$dst@1| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$1$$t11@1 () T@$Mutation_456873)
(declare-fun $abort_code@37 () Int)
(declare-fun $abort_flag@37 () Bool)
(declare-fun inline$$Lt$11$dst@1 () Bool)
(declare-fun inline$$1_BitVector_unset$1$$t10@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$6$l@1| () Int)
(declare-fun inline$$1_BitVector_unset$1$$t5@1 () T@Vec_92615)
(declare-fun inline$$1_BitVector_unset$1$$t4@0 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$1$$t11@0 () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_unset$1$$t12@0 () T@$Mutation_17352)
(declare-fun |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@1| () T@$1_BitVector_BitVector)
(declare-fun inline$$Sub$5$dst@0 () Int)
(declare-fun inline$$Sub$5$dst@1 () Int)
(declare-fun $abort_flag@35 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$2$dst@2| () Bool)
(declare-fun $abort_code@35 () Int)
(declare-fun inline$$1_BitVector_is_index_set$2$$t6@1 () Int)
(declare-fun inline$$1_BitVector_is_index_set$2$$ret0@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$2$dst@0| () Bool)
(declare-fun inline$$1_BitVector_is_index_set$2$$t10@1 () T@Vec_92615)
(declare-fun |inline$$1_Vector_borrow'bool'$2$dst@1| () Bool)
(declare-fun inline$$Lt$10$dst@1 () Bool)
(declare-fun inline$$1_BitVector_shift_left$0$$t22@2 () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_is_index_set$2$$t9@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$5$l@1| () Int)
(declare-fun inline$$1_BitVector_is_index_set$2$$t4@1 () T@Vec_92615)
(declare-fun inline$$Lt$7$dst@1 () Bool)
(declare-fun |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@3| () T@$1_BitVector_BitVector)
(declare-fun $abort_flag@34 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t29@1 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@33 () Bool)
(declare-fun $abort_code@33 () Int)
(declare-fun $abort_flag@32 () Bool)
(declare-fun |inline$$1_BitVector_unset$0$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$0$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$0$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_unset$0$$t0@1 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_shift_left$0$$t0@2 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@32 () Int)
(declare-fun inline$$1_BitVector_unset$0$$t7@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$dst@0| () T@$Mutation_17352)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$m'@0| () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$v@1| () T@Vec_92615)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$dst@1| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$0$$t11@1 () T@$Mutation_456873)
(declare-fun $abort_code@31 () Int)
(declare-fun $abort_flag@31 () Bool)
(declare-fun inline$$Lt$9$dst@1 () Bool)
(declare-fun inline$$1_BitVector_unset$0$$t10@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$4$l@1| () Int)
(declare-fun inline$$1_BitVector_unset$0$$t5@1 () T@Vec_92615)
(declare-fun inline$$1_BitVector_unset$0$$t4@0 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$0$$t11@0 () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_unset$0$$t12@0 () T@$Mutation_17352)
(declare-fun |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@1| () T@$1_BitVector_BitVector)
(declare-fun inline$$Lt$8$dst@1 () Bool)
(declare-fun |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@6| () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_shift_left$0$$t0@4 () T@$Mutation_572160)
(declare-fun $abort_flag@45 () Bool)
(declare-fun $abort_code@45 () Int)
(declare-fun |inline$$1_Vector_length'bool'$8$l@1| () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t16@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t17@1 () Int)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t8@1 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@5| () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_shift_left$0$$t18@1 () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_shift_left$0$$t10@1 () T@Vec_92615)
(declare-fun inline$$Ge$2$dst@1 () Bool)
(declare-fun inline$$1_BitVector_shift_left$0$$t30@2 () Int)
(declare-fun inline$$Sub$4$dst@2 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t30@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t32@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t33@1 () Int)
(declare-fun |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@4| () T@$1_BitVector_BitVector)
(declare-fun inline$$Sub$4$dst@0 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t28@1 () Int)
(declare-fun inline$$Sub$4$dst@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t20@2 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t20@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t22@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_shift_left$0$$t24@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t25@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t26@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t27@1 () Int)
(declare-fun |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_shift_left$0$$t8@1 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t2@0 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_shift_left$0$$t4@0 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_shift_left$0$$t18@0 () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_shift_left$0$$t19@0 () T@$Mutation_17352)
(declare-fun |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@1| () T@$1_BitVector_BitVector)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t7@1 () Bool)
(declare-fun |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@2| () T@$1_CRSN_CRSN)
(declare-fun $abort_flag@28 () Bool)
(declare-fun inline$$Sub$3$dst@2 () Int)
(declare-fun $abort_code@28 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@0 () Int)
(declare-fun $abort_flag@29 () Bool)
(declare-fun $abort_code@29 () Int)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_flag@26 () Bool)
(declare-fun $abort_code@26 () Int)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$Sub$3$dst@0 () Int)
(declare-fun inline$$Sub$3$dst@1 () Int)
(declare-fun $abort_flag@27 () Bool)
(declare-fun $abort_code@27 () Int)
(declare-fun inline$$1_BitVector_is_index_set$1$$ret0@1 () Bool)
(declare-fun $abort_flag@25 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$1$dst@2| () Bool)
(declare-fun $abort_code@25 () Int)
(declare-fun inline$$1_BitVector_is_index_set$1$$ret0@0 () Bool)
(declare-fun inline$$1_BitVector_is_index_set$1$$t6@1 () Int)
(declare-fun |inline$$1_Vector_borrow'bool'$1$dst@0| () Bool)
(declare-fun inline$$1_BitVector_is_index_set$1$$t10@1 () T@Vec_92615)
(declare-fun |inline$$1_Vector_borrow'bool'$1$dst@1| () Bool)
(declare-fun inline$$Lt$6$dst@1 () Bool)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t2@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_is_index_set$1$$t9@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$3$l@1| () Int)
(declare-fun inline$$1_BitVector_is_index_set$1$$t4@1 () T@Vec_92615)
(declare-fun inline$$Lt$5$dst@1 () Bool)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@2 () Int)
(declare-fun inline$$Lt$4$dst@1 () Bool)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@1 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t14@1 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t15@1 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t5@1 () Int)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t8@0 () T@$Mutation_572160)
(declare-fun inline$$1_CRSN_shift_window_right$0$$t11@0 () T@$Mutation_18461)
(declare-fun |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@1| () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t11@2 () T@$Mutation_577037)
(declare-fun inline$$1_BitVector_set$0$$ret0@1 () T@$Mutation_572160)
(declare-fun $abort_flag@23 () Bool)
(declare-fun |inline$$1_BitVector_set$0$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$0$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$0$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_set$0$$t0@1 () T@$Mutation_572160)
(declare-fun inline$$1_CRSN_record$0$$t14@1 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@23 () Int)
(declare-fun inline$$1_BitVector_set$0$$ret0@0 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_set$0$$t7@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$dst@0| () T@$Mutation_17352)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$m'@0| () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$v@1| () T@Vec_92615)
(declare-fun inline$$Sub$2$dst@2 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$dst@1| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$0$$t11@1 () T@$Mutation_456873)
(declare-fun inline$$Lt$3$dst@1 () Bool)
(declare-fun inline$$1_BitVector_set$0$$t10@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$2$l@1| () Int)
(declare-fun inline$$1_BitVector_set$0$$t5@1 () T@Vec_92615)
(declare-fun inline$$1_BitVector_set$0$$t4@0 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$0$$t11@0 () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_set$0$$t12@0 () T@$Mutation_17352)
(declare-fun |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@1| () T@$1_BitVector_BitVector)
(declare-fun inline$$Sub$2$dst@0 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$1_CRSN_record$0$$t12@1 () Int)
(declare-fun inline$$Sub$2$dst@1 () Int)
(declare-fun |inline$$1_CRSN_record$0$$temp_0'$1_CRSN_CRSN'@1| () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t11@0 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_record$0$$t6@0 () Int)
(declare-fun inline$$1_CRSN_record$0$$t11@1 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_check$0$$ret0@1 () Bool)
(declare-fun inline$$Gt$1$dst@1 () Bool)
(declare-fun $abort_code@20 () Int)
(declare-fun $abort_flag@20 () Bool)
(declare-fun inline$$1_CRSN_record$0$$t19@1 () Int)
(declare-fun inline$$1_CRSN_record$0$$t18@2 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t18@0 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t18@1 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t17@1 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t5@1 () Bool)
(declare-fun $abort_code@17 () Int)
(declare-fun $abort_flag@17 () Bool)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@1 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t4@1 () Bool)
(declare-fun $abort_flag@13 () Bool)
(declare-fun $abort_code@13 () Int)
(declare-fun inline$$1_CRSN_check$0$$t13@1 () Int)
(declare-fun inline$$1_CRSN_check$0$$ret0@0 () Bool)
(declare-fun $abort_flag@15 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@2| () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@0 () Bool)
(declare-fun inline$$1_BitVector_is_index_set$0$$t6@1 () Int)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@0| () Bool)
(declare-fun inline$$1_BitVector_is_index_set$0$$t10@1 () T@Vec_92615)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@1| () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun $abort_flag@14 () Bool)
(declare-fun inline$$Lt$2$dst@1 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t31@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_is_index_set$0$$t9@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$1$l@1| () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$t4@1 () T@Vec_92615)
(declare-fun inline$$1_CRSN_check$0$$t16@2 () T@$Mutation_577037)
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t29@1 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun inline$$Ge$1$dst@1 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun inline$$CastU128$2$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@2 () Int)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun inline$$AddU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$3$dst@1 () Int)
(declare-fun inline$$CastU128$4$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@1 () Int)
(declare-fun $abort_flag@11 () Bool)
(declare-fun $abort_code@11 () Int)
(declare-fun inline$$CastU128$4$dst@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@1 () Int)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun |inline$$1_Vector_length'bool'$0$l@1| () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$t1@1 () T@Vec_92615)
(declare-fun inline$$1_CRSN_check$0$$t23@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$CastU128$3$dst@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t21@1 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun inline$$CastU128$2$dst@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t17@1 () Int)
(declare-fun |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1| () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_check$0$$t16@0 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_check$0$$t11@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t16@1 () T@$Mutation_577037)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$1_CRSN_has_crsn$1$$t1@1 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t15@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t7@0 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_check$0$$t9@0 () T@$1_CRSN_CRSN)
(declare-fun _$t0 () T@$signer)
(declare-fun inline$$1_CRSN_check$0$$t10@0 () Int)
(declare-fun inline$$1_CRSN_record$0$$t3@0 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_record$0$$t14@0 () T@$Mutation_572160)
(declare-fun inline$$1_CRSN_record$0$$t7@0 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t8@0 () Int)
(declare-fun inline$$1_CRSN_has_crsn$0$$t1@1 () Bool)
(declare-fun $t54@0 () Bool)
(declare-fun $t53@0 () Int)
(declare-fun $t56 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t48 () Int)
(declare-fun $t43@0 () Int)
(declare-fun inline$$CastU64$0$dst@1 () Int)
(declare-fun inline$$CastU64$0$dst@0 () Int)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t42 () T@$Mutation_657796)
(declare-fun $t42@0 () T@$Mutation_657796)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun $t41 () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun _$t2 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t37 () Int)
(declare-fun inline$$MulU128$0$dst@2 () Int)
(declare-fun inline$$MulU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$MulU128$0$dst@1 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun _$t3 () Int)
(declare-fun _$t4 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $t28 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_472200)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_472293)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_472379)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_472452)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_472523)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_472607)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_472691)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_472762)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_472846)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_472930)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_473098)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_473182)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_473266)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_473337)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_473722)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_473806)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_471884)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $es () T@$EventStore)
(declare-fun $t19 () T@$Mutation_546962)
(declare-fun $t22 () T@$Mutation_657796)
(declare-fun $t23 () T@$Mutation_668571)
(declare-fun $t60 () T@$Mutation_18461)
(declare-fun $t64 () T@$Mutation_546962)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_epilogue_common$verify_instantiated_0)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2412533) (let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Else_correct true))
(let ((inline$$1_BitVector_shift_left$0$anon50_Else_correct true))
(let ((inline$$1_BitVector_shift_left$0$anon58_Else_correct true))
(let ((inline$$1_BitVector_shift_left$0$anon62_Else_correct true))
(let ((anon83_Else_correct  (=> (not inline$$1_CRSN_record$0$$ret0@1) (and (=> (= (ControlFlow 0 1642723) (- 0 2425073)) (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1)) (=> (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1) (=> (= (ControlFlow 0 1642723) (- 0 2425086)) (<= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1)))))))
(let ((anon82_Then_correct true))
(let ((anon92_Then_correct true))
(let ((anon91_Then_correct true))
(let ((anon90_Else_correct true))
(let ((anon89_Then_correct true))
(let ((anon88_Then_correct true))
(let ((L17_correct  (=> (= (ControlFlow 0 1626438) (- 0 2425035)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr)))))
 :qid |DiemAccountbpl.71343:15|
 :skolemid |2630|
)))))
(let ((anon92_Else_correct  (=> (and (not $abort_flag@58) (= (ControlFlow 0 1627975) 1626438)) L17_correct)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Else_correct|  (=> (not |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0|) (=> (and (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2| ($Mutation_546962 (|l#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|) (|p#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1|)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|))) (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|)) (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t13@1|) (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t70))))) (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3| ($Mutation_546916 (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|) (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|) (|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))))) (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@0| ($Memory_473001 (|Store__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3|)) true) (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3|)) (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3|))))) (and (= $abort_code@58 $abort_code@57) (= $abort_flag@58 $abort_flag@57)))) (and (=> (= (ControlFlow 0 1627819) 1627989) anon92_Then_correct) (=> (= (ControlFlow 0 1627819) 1627975) anon92_Else_correct))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|  (=> (and (= $abort_code@58 |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1|) (= $abort_flag@58 true)) (and (=> (= (ControlFlow 0 1627661) 1627989) anon92_Then_correct) (=> (= (ControlFlow 0 1627661) 1627975) anon92_Else_correct)))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Then_correct|  (=> |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0| (=> (and (and (and (> (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t70)) 18446744073709551615) (= 8 |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|) (= (ControlFlow 0 1627855) 1627661))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Else_correct|  (=> (and (not $abort_flag@57) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_TransactionFee_TransactionFee'$1_XUS_XUS''@1| (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))) (=> (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_TransactionFee_TransactionFee'$1_XUS_XUS''@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_TransactionFee_TransactionFee'$1_XUS_XUS''@1|) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1| ($Mutation_546962 (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|) (let ((l (|l#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|)) l 0) (+ l 1))) (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))))) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t13@1| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|)) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0| (> (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t70)) 18446744073709551615)))) (and (=> (= (ControlFlow 0 1627749) 1627855) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 1627749) 1627819) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Then_correct|  (=> (and (and $abort_flag@57 (= $abort_code@57 $abort_code@57)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| $abort_code@57) (= (ControlFlow 0 1627869) 1627661))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then$1_correct|  (=> (= $abort_flag@57 true) (=> (and (= $abort_code@57 $EXEC_FAILURE_CODE) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@0|)) (and (=> (= (ControlFlow 0 1627921) 1627869) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 1627921) 1627749) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (= (ControlFlow 0 1627919) 1627921)) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then$1_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453) (=> (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@1| ($Mutation_546916 ($Global 186537453) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (= $abort_flag@57 $abort_flag@56)) (and (= $abort_code@57 $abort_code@56) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@1|))) (and (=> (= (ControlFlow 0 1627693) 1627869) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 1627693) 1627749) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 1627671) 1627919) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 1627671) 1627693) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Else_correct|)))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1|) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 1627655) 1627661))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (and (not $abort_flag@56) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| 5)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1|))) (and (=> (= (ControlFlow 0 1627639) 1627671) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 1627639) 1627655) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Then_correct|  (=> (and (and $abort_flag@56 (= $abort_code@56 $abort_code@56)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| $abort_code@56) (= (ControlFlow 0 1627935) 1627661))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon0_correct|  (=> (|$IsValid'address'| 186537453) (=> (and (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1|)) (and (=> (= (ControlFlow 0 1627597) 1627935) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 1627597) 1627639) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Else_correct|  (=> (and (not |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0|) (= (ControlFlow 0 1627603) 1627597)) |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Then_correct|  (=> |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|) (= (ControlFlow 0 1627961) 1627661))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon0_correct|  (=> (and (= (|l#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t3@0|)) 0) (= (|l#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@0|)) 0)) (=> (and (and (= (|l#Vec_33444| (|p#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@0|)) 0) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t4@0| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))) (and (= $t70 $t70) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 1627510) 1627961) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 1627510) 1627603) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Else_correct|))))))
(let ((anon91_Else_correct  (=> (not $t72) (=> (and (and (and (= $t64@1 ($Mutation_546962 (|l#$Mutation_546962| $t64@0) (|p#$Mutation_546962| $t64@0) |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1|)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| $t64@1))) (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| $t64@1)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| $t70))) (and (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| $t64@1)) (- (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t71@0) inline$$MulU64$0$dst@2)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t70) inline$$MulU64$0$dst@2)) (and (= $t63@2 ($Mutation_668571 (|l#$Mutation_668571| $t63@1) (|p#$Mutation_668571| $t63@1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|v#$Mutation_546962| $t64@1)))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_478004 (|Store__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_668571| $t63@2)) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_668571| $t63@2)) (|v#$Mutation_668571| $t63@2))))))) (and (=> (= (ControlFlow 0 1627965) (- 0 2424399)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|) addr@@0)))
 :qid |DiemAccountbpl.71304:15|
 :skolemid |2627|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|) addr@@1)))
 :qid |DiemAccountbpl.71304:15|
 :skolemid |2627|
)) (and (=> (= (ControlFlow 0 1627965) (- 0 2424423)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_478064| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@2)) 2)))))
 :qid |DiemAccountbpl.71310:15|
 :skolemid |2628|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|) addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_478064| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@3)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@3)) 2)))))
 :qid |DiemAccountbpl.71310:15|
 :skolemid |2628|
)) (and (=> (= (ControlFlow 0 1627965) (- 0 2424456)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@4)))
 :qid |DiemAccountbpl.71316:15|
 :skolemid |2629|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@5)))
 :qid |DiemAccountbpl.71316:15|
 :skolemid |2629|
)) (=> (and (= $t73 (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (= (ControlFlow 0 1627965) 1627510)) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon0_correct|)))))))))))
(let ((anon90_Then_correct  (=> inline$$Le$1$dst@1 (=> (and (= $t71@0 (|v#$Mutation_546962| $t64@0)) (= $t72 (< (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| $t64@0)) inline$$MulU64$0$dst@2))) (and (=> (= (ControlFlow 0 1626737) 1628019) anon91_Then_correct) (=> (= (ControlFlow 0 1626737) 1627965) anon91_Else_correct))))))
(let ((anon89_Else$1_correct  (=> (|$IsValid'u64'| 1005) (=> (and (and (|$IsValid'u64'| $t69) (= $t69 8)) (and (= $t69 $t69) (= inline$$Le$1$dst@1 inline$$Le$1$dst@1))) (and (=> (= (ControlFlow 0 1626699) 1626737) anon90_Then_correct) (=> (= (ControlFlow 0 1626699) 1626715) anon90_Else_correct))))))
(let ((inline$$Le$1$anon0_correct  (=> (and (= inline$$Le$1$dst@1 (<= inline$$MulU64$0$dst@2 |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (= (ControlFlow 0 1626659) 1626699)) anon89_Else$1_correct)))
(let ((anon89_Else_correct  (=> (and (not $abort_flag@56) (= (ControlFlow 0 1626665) 1626659)) inline$$Le$1$anon0_correct)))
(let ((|inline$$1_Diem_value'$1_XUS_XUS'$0$anon0_correct|  (=> (= $t65@0 $t65@0) (=> (and (= |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t65@0)) (= |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (and (=> (= (ControlFlow 0 1626605) 1628033) anon89_Then_correct) (=> (= (ControlFlow 0 1626605) 1626665) anon89_Else_correct))))))
(let ((anon88_Else_correct  (=> (and (and (and (not $abort_flag@56) (= |$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@0| (|v#$Mutation_668571| $t63@1))) (and (= |$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@0| |$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@0|) (= $t64@0 ($Mutation_546962 (|l#$Mutation_668571| $t63@1) (let ((l@@0 (|l#Vec_33444| (|p#$Mutation_668571| $t63@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_668571| $t63@1)) l@@0 0) (+ l@@0 1))) (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| (|v#$Mutation_668571| $t63@1)))))) (and (and (= |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0| (|v#$Mutation_546962| $t64@0)) (= |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0| |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0|)) (and (= $t65@0 (|v#$Mutation_546962| $t64@0)) (= (ControlFlow 0 1626611) 1626605)))) |inline$$1_Diem_value'$1_XUS_XUS'$0$anon0_correct|)))
(let ((anon87_Then$1_correct  (=> (= $t63@1 $t63) (=> (and (= $abort_flag@56 true) (= $abort_code@56 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1628099) 1628047) anon88_Then_correct) (=> (= (ControlFlow 0 1628099) 1626611) anon88_Else_correct))))))
(let ((anon87_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $t25)) (= (ControlFlow 0 1628097) 1628099)) anon87_Then$1_correct)))
(let ((anon87_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $t25) (=> (and (and (= $t63@0 ($Mutation_668571 ($Global $t25) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $t25))) (= $t63@1 $t63@0)) (and (= $abort_flag@56 $abort_flag@55) (= $abort_code@56 $abort_code@55))) (and (=> (= (ControlFlow 0 1626464) 1628047) anon88_Then_correct) (=> (= (ControlFlow 0 1626464) 1626611) anon88_Else_correct))))))
(let ((anon86_Then_correct  (=> inline$$Gt$0$dst@1 (and (=> (= (ControlFlow 0 1626442) 1628097) anon87_Then_correct) (=> (= (ControlFlow 0 1626442) 1626464) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (and (not inline$$Gt$0$dst@1) (= (ControlFlow 0 1626397) 1626438)) L17_correct)))
(let ((inline$$Gt$0$anon0_correct  (=> (= inline$$Gt$0$dst@1 (> inline$$MulU64$0$dst@2 0)) (and (=> (= (ControlFlow 0 1626383) 1626442) anon86_Then_correct) (=> (= (ControlFlow 0 1626383) 1626397) anon86_Else_correct)))))
(let ((anon85_Else_correct  (=> (and (and (not $abort_flag@55) (= $t60@0 ($Mutation_18461 (|l#$Mutation_657796| $t42@1) (let ((l@@1 (|l#Vec_33444| (|p#$Mutation_657796| $t42@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_657796| $t42@1)) l@@1 5) (+ l@@1 1))) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1))))) (and (= $t60@1 ($Mutation_18461 (|l#$Mutation_18461| $t60@0) (|p#$Mutation_18461| $t60@0) inline$$AddU64$0$dst@2)) (= $t42@2 ($Mutation_657796 (|l#$Mutation_657796| $t42@1) (|p#$Mutation_657796| $t42@1) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)) (|v#$Mutation_18461| $t60@1)))))) (and (=> (= (ControlFlow 0 1626389) (- 0 2423670)) (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@2)))) 1)) (=> (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@2)))) 1) (and (=> (= (ControlFlow 0 1626389) (- 0 2423683)) (<= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@2)))) 1)) (=> (<= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@2)))) 1) (=> (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_487225 (|Store__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_657796| $t42@2)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_657796| $t42@2)) (|v#$Mutation_657796| $t42@2)))) (and (=> (= (ControlFlow 0 1626389) (- 0 2423724)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@6) (or (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@6)))) 0) (and (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@6)))) 0)) (= addr@@6 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@6)))) 0)))))))
 :qid |DiemAccountbpl.71091:15|
 :skolemid |2619|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@7) (or (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@7)))) 0) (and (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@7)))) 0)) (= addr@@7 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@7)))) 0)))))))
 :qid |DiemAccountbpl.71091:15|
 :skolemid |2619|
)) (and (=> (= (ControlFlow 0 1626389) (- 0 2423755)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@8) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@8) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@8)))) 0)) (and (not (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@8)))) 0)) (= addr@@8 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@8)))) 0)))))))
 :qid |DiemAccountbpl.71097:15|
 :skolemid |2620|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@9) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@9) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@9)))) 0)) (and (not (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@9)))) 0)) (= addr@@9 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@9)))) 0)))))))
 :qid |DiemAccountbpl.71097:15|
 :skolemid |2620|
)) (and (=> (= (ControlFlow 0 1626389) (- 0 2423786)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@10)))
 :qid |DiemAccountbpl.71103:15|
 :skolemid |2621|
))) (=> (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@11)))
 :qid |DiemAccountbpl.71103:15|
 :skolemid |2621|
)) (and (=> (= (ControlFlow 0 1626389) (- 0 2423810)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12)))
 :qid |DiemAccountbpl.71109:15|
 :skolemid |2622|
))) (=> (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13)))
 :qid |DiemAccountbpl.71109:15|
 :skolemid |2622|
)) (and (=> (= (ControlFlow 0 1626389) (- 0 2423835)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473580| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@14)  (and (= addr@@14 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@14))))
 :qid |DiemAccountbpl.71115:15|
 :skolemid |2623|
))) (=> (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473580| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@15)  (and (= addr@@15 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@15))))
 :qid |DiemAccountbpl.71115:15|
 :skolemid |2623|
)) (and (=> (= (ControlFlow 0 1626389) (- 0 2423868)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@16)  (and (= addr@@16 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@16))))
 :qid |DiemAccountbpl.71121:15|
 :skolemid |2624|
))) (=> (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@17)  (and (= addr@@17 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@17))))
 :qid |DiemAccountbpl.71121:15|
 :skolemid |2624|
)) (and (=> (= (ControlFlow 0 1626389) (- 0 2423901)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@18)))
 :qid |DiemAccountbpl.71127:15|
 :skolemid |2625|
))) (=> (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@19)))
 :qid |DiemAccountbpl.71127:15|
 :skolemid |2625|
)) (and (=> (= (ControlFlow 0 1626389) (- 0 2423926)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@20)))
 :qid |DiemAccountbpl.71133:15|
 :skolemid |2626|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@0) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@21)))
 :qid |DiemAccountbpl.71133:15|
 :skolemid |2626|
)) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 1626389) 1626383)) inline$$Gt$0$anon0_correct)))))))))))))))))))))))))
(let ((anon85_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@55 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@55 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 1626009) 1628113) anon85_Then_correct) (=> (= (ControlFlow 0 1626009) 1626389) anon85_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t57@0 1) $MAX_U64) (= (ControlFlow 0 1626007) 1626009)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t57@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t57@0 1)) (= $abort_code@55 $abort_code@54)) (and (= $abort_flag@55 $abort_flag@54) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 1625955) 1628113) anon85_Then_correct) (=> (= (ControlFlow 0 1625955) 1626389) anon85_Else_correct))))))
(let ((L13_correct  (=> (and (= $t57@0 (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1))) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 1626015) 1626007) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 1626015) 1625955) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon83_Then_correct  (=> (and (and inline$$1_CRSN_record$0$$ret0@1 (= $abort_flag@54 $abort_flag@53)) (and (= $abort_code@54 $abort_code@53) (= (ControlFlow 0 1642727) 1626015))) L13_correct)))
(let ((anon82_Else_correct  (=> (and (not $abort_flag@53) (|$IsValid'u64'| 1014)) (=> (and (and (|$IsValid'u64'| $t52) (= $t52 7)) (and (= $t52 $t52) (= inline$$1_CRSN_record$0$$ret0@1 inline$$1_CRSN_record$0$$ret0@1))) (and (=> (= (ControlFlow 0 1642675) 1642727) anon83_Then_correct) (=> (= (ControlFlow 0 1642675) 1642723) anon83_Else_correct))))))
(let ((inline$$1_CRSN_record$0$L9_correct  (=> (= $abort_flag@53 true) (=> (and (= $abort_code@53 inline$$1_CRSN_record$0$$t10@1) (= inline$$1_CRSN_record$0$$ret0@1 inline$$1_CRSN_record$0$$ret0@0)) (and (=> (= (ControlFlow 0 1632255) 1642741) anon82_Then_correct) (=> (= (ControlFlow 0 1632255) 1642675) anon82_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon35_Then_correct  (=> (and (and $abort_flag@51 (= $abort_code@51 $abort_code@51)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@51) (= (ControlFlow 0 1642521) 1632255))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon34_Then_correct  (=> (and (and $abort_flag@24 (= $abort_code@24 $abort_code@24)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@24) (= (ControlFlow 0 1642535) 1632255))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon33_Then_correct  (=> (and (and $abort_flag@22 (= $abort_code@22 $abort_code@22)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@22) (= (ControlFlow 0 1642549) 1632255))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon32_Then_correct  (=> (and (and $abort_flag@21 (= $abort_code@21 $abort_code@21)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@21) (= (ControlFlow 0 1642563) 1632255))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon38_Then_correct  (=> (and (and $abort_flag@19 (= $abort_code@19 $abort_code@19)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@19) (= (ControlFlow 0 1632249) 1632255))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon29_Then_correct  (=> (and (and $abort_flag@18 (= $abort_code@18 $abort_code@18)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@18) (= (ControlFlow 0 1642629) 1632255))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$L8_correct  (=> (= $abort_flag@53 $abort_flag@52) (=> (and (= $abort_code@53 $abort_code@52) (= inline$$1_CRSN_record$0$$ret0@1 inline$$1_CRSN_record$0$$t16@1)) (and (=> (= (ControlFlow 0 1632125) 1642741) anon82_Then_correct) (=> (= (ControlFlow 0 1632125) 1642675) anon82_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon35_Else_correct  (=> (not $abort_flag@51) (=> (and (= $1_CRSN_CRSN_$memory@0 ($Memory_576150 (|Store__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) (|a#$Global| (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$ret0)) true) (|Store__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) (|a#$Global| (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$ret0)) (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$ret0)))) (= true true)) (=> (and (and (= inline$$1_CRSN_record$0$$t16@1 true) (= $abort_code@52 $abort_code@51)) (and (= $abort_flag@52 $abort_flag@51) (= (ControlFlow 0 1642507) 1632125))) inline$$1_CRSN_record$0$L8_correct)))))
(let ((inline$$1_CRSN_shift_window_right$0$L4_correct  (=> (and (= $abort_flag@51 true) (= $abort_code@51 inline$$1_CRSN_shift_window_right$0$$t5@1)) (and (=> (= (ControlFlow 0 1642423) 1642521) inline$$1_CRSN_record$0$anon35_Then_correct) (=> (= (ControlFlow 0 1642423) 1642507) inline$$1_CRSN_record$0$anon35_Else_correct)))))
(let ((inline$$1_CRSN_shift_window_right$0$anon13_Then_correct  (=> (and (and $abort_flag@49 (= $abort_code@49 $abort_code@49)) (and (= inline$$1_CRSN_shift_window_right$0$$t5@1 $abort_code@49) (= (ControlFlow 0 1642417) 1642423))) inline$$1_CRSN_shift_window_right$0$L4_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$anon12_Then_correct  (=> (and (and $abort_flag@48 (= $abort_code@48 $abort_code@48)) (and (= inline$$1_CRSN_shift_window_right$0$$t5@1 $abort_code@48) (= (ControlFlow 0 1642437) 1642423))) inline$$1_CRSN_shift_window_right$0$L4_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$anon10_Then_correct  (=> (and (and $abort_flag@30 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_CRSN_shift_window_right$0$$t5@1 $abort_code@30) (= (ControlFlow 0 1642465) 1642423))) inline$$1_CRSN_shift_window_right$0$L4_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$L3_correct  (=> (and (= $abort_flag@51 $abort_flag@50) (= $abort_code@51 $abort_code@50)) (and (=> (= (ControlFlow 0 1642403) 1642521) inline$$1_CRSN_record$0$anon35_Then_correct) (=> (= (ControlFlow 0 1642403) 1642507) inline$$1_CRSN_record$0$anon35_Else_correct)))))
(let ((inline$$1_CRSN_shift_window_right$0$anon13_Else_correct  (=> (not $abort_flag@49) (=> (and (and (and (= inline$$1_CRSN_shift_window_right$0$$t11@1 ($Mutation_18461 (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1) (let ((l@@2 (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)) l@@2 0) (+ l@@2 1))) (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)))) (= inline$$1_CRSN_shift_window_right$0$$t11@2 ($Mutation_18461 (|l#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@1) (|p#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@1) inline$$AddU64$5$dst@2))) (and (= inline$$1_CRSN_shift_window_right$0$$t0@2 ($Mutation_577037 (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1) (|p#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1) ($1_CRSN_CRSN (|v#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@2) (|$size#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)) (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1))))) (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@3| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@2)))) (and (and (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@3| |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@3|) (= $abort_flag@50 $abort_flag@49)) (and (= $abort_code@50 $abort_code@49) (= (ControlFlow 0 1642399) 1642403)))) inline$$1_CRSN_shift_window_right$0$L3_correct))))
(let ((inline$$AddU64$5$anon3_Then$1_correct  (=> (= $abort_code@49 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@49 true) (= inline$$AddU64$5$dst@2 inline$$AddU64$5$dst@0)) (and (=> (= (ControlFlow 0 1642341) 1642417) inline$$1_CRSN_shift_window_right$0$anon13_Then_correct) (=> (= (ControlFlow 0 1642341) 1642399) inline$$1_CRSN_shift_window_right$0$anon13_Else_correct))))))
(let ((inline$$AddU64$5$anon3_Then_correct  (=> (and (> (+ inline$$1_CRSN_shift_window_right$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1) $MAX_U64) (= (ControlFlow 0 1642339) 1642341)) inline$$AddU64$5$anon3_Then$1_correct)))
(let ((inline$$AddU64$5$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_CRSN_shift_window_right$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (=> (and (and (= inline$$AddU64$5$dst@1 (+ inline$$1_CRSN_shift_window_right$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (= $abort_code@49 $abort_code@48)) (and (= $abort_flag@49 $abort_flag@48) (= inline$$AddU64$5$dst@2 inline$$AddU64$5$dst@1))) (and (=> (= (ControlFlow 0 1642287) 1642417) inline$$1_CRSN_shift_window_right$0$anon13_Then_correct) (=> (= (ControlFlow 0 1642287) 1642399) inline$$1_CRSN_shift_window_right$0$anon13_Else_correct))))))
(let ((inline$$1_CRSN_shift_window_right$0$anon12_Else_correct  (=> (not $abort_flag@48) (=> (and (= inline$$1_CRSN_shift_window_right$0$$t0@1 ($Mutation_577037 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3) (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3) ($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)) (|$size#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)) (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$ret0@1)))) (= inline$$1_CRSN_shift_window_right$0$$t9@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)))) (and (=> (= (ControlFlow 0 1642347) 1642339) inline$$AddU64$5$anon3_Then_correct) (=> (= (ControlFlow 0 1642347) 1642287) inline$$AddU64$5$anon3_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$L24_correct  (=> (= $abort_flag@48 true) (=> (and (= $abort_code@48 inline$$1_BitVector_shift_left$0$$t12@1) (= inline$$1_BitVector_shift_left$0$$ret0@1 inline$$1_BitVector_shift_left$0$$ret0@0)) (and (=> (= (ControlFlow 0 1638400) 1642437) inline$$1_CRSN_shift_window_right$0$anon12_Then_correct) (=> (= (ControlFlow 0 1638400) 1642347) inline$$1_CRSN_shift_window_right$0$anon12_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon50_Then_correct  (=> (and (and $abort_flag@47 (= $abort_code@47 $abort_code@47)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@47) (= (ControlFlow 0 1642130) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$AddU64$4$anon3_Then$1_correct  (=> (= $abort_code@47 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@47 true) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@0)) (and (=> (= (ControlFlow 0 1642094) 1642130) inline$$1_BitVector_shift_left$0$anon50_Then_correct) (=> (= (ControlFlow 0 1642094) 1642116) inline$$1_BitVector_shift_left$0$anon50_Else_correct))))))
(let ((inline$$AddU64$4$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_shift_left$0$$t13@1 1) $MAX_U64) (= (ControlFlow 0 1642092) 1642094)) inline$$AddU64$4$anon3_Then$1_correct)))
(let ((inline$$AddU64$4$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_shift_left$0$$t13@1 1)) (=> (and (and (= inline$$AddU64$4$dst@1 (+ inline$$1_BitVector_shift_left$0$$t13@1 1)) (= $abort_code@47 $abort_code@46)) (and (= $abort_flag@47 $abort_flag@46) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@1))) (and (=> (= (ControlFlow 0 1642040) 1642130) inline$$1_BitVector_shift_left$0$anon50_Then_correct) (=> (= (ControlFlow 0 1642040) 1642116) inline$$1_BitVector_shift_left$0$anon50_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon49_Else_correct  (=> (not $abort_flag@46) (=> (and (= |inline$$1_BitVector_shift_left$0$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$4$dst@2|)) (= |inline$$1_BitVector_shift_left$0$$temp_0'bool'@1| |inline$$1_BitVector_shift_left$0$$temp_0'bool'@1|)) (=> (and (and (= inline$$1_BitVector_shift_left$0$$t19@2 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$4$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$4$dst@2|) false)) (= inline$$1_BitVector_shift_left$0$$t18@3 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t19@2)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|))) (|v#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t19@2)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|)))))) (and (= inline$$1_BitVector_shift_left$0$$t0@5 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)) (|v#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@3)))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 1642100) 1642092) inline$$AddU64$4$anon3_Then_correct) (=> (= (ControlFlow 0 1642100) 1642040) inline$$AddU64$4$anon3_Else_correct)))))))
(let ((inline$$1_BitVector_shift_left$0$anon49_Then_correct  (=> (and (and $abort_flag@46 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@46) (= (ControlFlow 0 1642144) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon3_Then$1_correct|  (=> (= $abort_flag@46 true) (=> (and (= $abort_code@46 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'bool'$4$dst@2| |inline$$1_Vector_borrow_mut'bool'$4$dst@0|)) (and (=> (= (ControlFlow 0 1641859) 1642144) inline$$1_BitVector_shift_left$0$anon49_Then_correct) (=> (= (ControlFlow 0 1641859) 1642100) inline$$1_BitVector_shift_left$0$anon49_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$4$v@1| inline$$1_BitVector_shift_left$0$$t13@1)) (= (ControlFlow 0 1641857) 1641859)) |inline$$1_Vector_borrow_mut'bool'$4$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon3_Else_correct|  (=> (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$4$v@1| inline$$1_BitVector_shift_left$0$$t13@1) (=> (and (and (= |inline$$1_Vector_borrow_mut'bool'$4$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2) (let ((l@@3 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2)) l@@3 inline$$1_BitVector_shift_left$0$$t13@1) (+ l@@3 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$4$v@1|) inline$$1_BitVector_shift_left$0$$t13@1))) (= $abort_flag@46 $abort_flag@30)) (and (= $abort_code@46 $abort_code@30) (= |inline$$1_Vector_borrow_mut'bool'$4$dst@2| |inline$$1_Vector_borrow_mut'bool'$4$dst@1|))) (and (=> (= (ControlFlow 0 1641807) 1642144) inline$$1_BitVector_shift_left$0$anon49_Then_correct) (=> (= (ControlFlow 0 1641807) 1642100) inline$$1_BitVector_shift_left$0$anon49_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$4$v@1| (|v#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2)) (and (=> (= (ControlFlow 0 1641777) 1641857) |inline$$1_Vector_borrow_mut'bool'$4$anon3_Then_correct|) (=> (= (ControlFlow 0 1641777) 1641807) |inline$$1_Vector_borrow_mut'bool'$4$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_shift_left$0$anon48_Then_correct  (=> inline$$Lt$13$dst@1 (=> (and (= inline$$1_BitVector_shift_left$0$$t18@2 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3) (let ((l@@4 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)) l@@4 1) (+ l@@4 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)))) (= (ControlFlow 0 1641867) 1641777)) |inline$$1_Vector_borrow_mut'bool'$4$anon0_correct|))))
(let ((inline$$1_BitVector_shift_left$0$anon47_Then_correct  (=> (and (and $abort_flag@30 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@30) (= (ControlFlow 0 1642158) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon55_Then_correct  (=> (and (and $abort_flag@42 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@42) (= (ControlFlow 0 1641455) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon54_Then_correct  (=> (and (and $abort_flag@40 (= $abort_code@40 $abort_code@40)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@40) (= (ControlFlow 0 1641469) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon58_Then_correct  (=> (and (and $abort_flag@44 (= $abort_code@44 $abort_code@44)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@44) (= (ControlFlow 0 1640353) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$AddU64$3$anon3_Then$1_correct  (=> (= $abort_code@44 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@44 true) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@0)) (and (=> (= (ControlFlow 0 1640317) 1640353) inline$$1_BitVector_shift_left$0$anon58_Then_correct) (=> (= (ControlFlow 0 1640317) 1640339) inline$$1_BitVector_shift_left$0$anon58_Else_correct))))))
(let ((inline$$AddU64$3$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_shift_left$0$$t1@1 1) $MAX_U64) (= (ControlFlow 0 1640315) 1640317)) inline$$AddU64$3$anon3_Then$1_correct)))
(let ((inline$$AddU64$3$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_shift_left$0$$t1@1 1)) (=> (and (and (= inline$$AddU64$3$dst@1 (+ inline$$1_BitVector_shift_left$0$$t1@1 1)) (= $abort_code@44 $abort_code@43)) (and (= $abort_flag@44 $abort_flag@43) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@1))) (and (=> (= (ControlFlow 0 1640263) 1640353) inline$$1_BitVector_shift_left$0$anon58_Then_correct) (=> (= (ControlFlow 0 1640263) 1640339) inline$$1_BitVector_shift_left$0$anon58_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$L14_correct  (=> (|$IsValid'u64'| 1) (and (=> (= (ControlFlow 0 1640323) 1640315) inline$$AddU64$3$anon3_Then_correct) (=> (= (ControlFlow 0 1640323) 1640263) inline$$AddU64$3$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon55_Else_correct  (=> (and (and (not $abort_flag@42) (= $abort_flag@43 $abort_flag@42)) (and (= $abort_code@43 $abort_code@42) (= (ControlFlow 0 1641441) 1640323))) inline$$1_BitVector_shift_left$0$L14_correct)))
(let ((inline$$1_BitVector_set$1$anon10_Else_correct  (=> (and (not $abort_flag@41) (= |inline$$1_BitVector_set$1$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$3$dst@2|))) (=> (and (and (and (= |inline$$1_BitVector_set$1$$temp_0'bool'@1| |inline$$1_BitVector_set$1$$temp_0'bool'@1|) (= inline$$1_BitVector_set$1$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$3$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$3$dst@2|) true))) (and (= inline$$1_BitVector_set$1$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$1$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_set$1$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|))))) (= inline$$1_BitVector_set$1$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (|v#$Mutation_456873| inline$$1_BitVector_set$1$$t11@2)))))) (and (and (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_set$1$$t0@1)) (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2|)) (and (= $abort_flag@42 $abort_flag@41) (= $abort_code@42 $abort_code@41)))) (and (=> (= (ControlFlow 0 1641399) 1641455) inline$$1_BitVector_shift_left$0$anon55_Then_correct) (=> (= (ControlFlow 0 1641399) 1641441) inline$$1_BitVector_shift_left$0$anon55_Else_correct))))))
(let ((inline$$1_BitVector_set$1$L3_correct  (=> (and (= $abort_flag@42 true) (= $abort_code@42 inline$$1_BitVector_set$1$$t7@1)) (and (=> (= (ControlFlow 0 1641107) 1641455) inline$$1_BitVector_shift_left$0$anon55_Then_correct) (=> (= (ControlFlow 0 1641107) 1641441) inline$$1_BitVector_shift_left$0$anon55_Else_correct)))))
(let ((inline$$1_BitVector_set$1$anon10_Then_correct  (=> (and (and $abort_flag@41 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_BitVector_set$1$$t7@1 $abort_code@41) (= (ControlFlow 0 1641413) 1641107))) inline$$1_BitVector_set$1$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon3_Then$1_correct|  (=> (and (and (= $abort_code@41 $EXEC_FAILURE_CODE) (= $abort_flag@41 true)) (and (= |inline$$1_Vector_borrow_mut'bool'$3$dst@2| |inline$$1_Vector_borrow_mut'bool'$3$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$3$m'@1| |inline$$1_Vector_borrow_mut'bool'$3$m'@0|))) (and (=> (= (ControlFlow 0 1641305) 1641413) inline$$1_BitVector_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1641305) 1641399) inline$$1_BitVector_set$1$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$3$v@1| inline$$Sub$6$dst@2)) (= (ControlFlow 0 1641303) 1641305)) |inline$$1_Vector_borrow_mut'bool'$3$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$3$v@1| inline$$Sub$6$dst@2) (= |inline$$1_Vector_borrow_mut'bool'$3$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1) (let ((l@@5 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1)) l@@5 inline$$Sub$6$dst@2) (+ l@@5 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$3$v@1|) inline$$Sub$6$dst@2)))) (=> (and (and (= $abort_code@41 $abort_code@40) (= $abort_flag@41 $abort_flag@40)) (and (= |inline$$1_Vector_borrow_mut'bool'$3$dst@2| |inline$$1_Vector_borrow_mut'bool'$3$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$3$m'@1| inline$$1_BitVector_set$1$$t11@1))) (and (=> (= (ControlFlow 0 1641253) 1641413) inline$$1_BitVector_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1641253) 1641399) inline$$1_BitVector_set$1$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$3$v@1| (|v#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1)) (and (=> (= (ControlFlow 0 1641223) 1641303) |inline$$1_Vector_borrow_mut'bool'$3$anon3_Then_correct|) (=> (= (ControlFlow 0 1641223) 1641253) |inline$$1_Vector_borrow_mut'bool'$3$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_set$1$anon9_Then_correct  (=> inline$$Lt$12$dst@1 (=> (and (= inline$$1_BitVector_set$1$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (let ((l@@6 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) l@@6 1) (+ l@@6 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (= (ControlFlow 0 1641313) 1641223)) |inline$$1_Vector_borrow_mut'bool'$3$anon0_correct|))))
(let ((inline$$1_BitVector_set$1$anon9_Else_correct  (=> (and (and (not inline$$Lt$12$dst@1) (= inline$$1_BitVector_set$1$$t10@0 inline$$1_BitVector_set$1$$t10@0)) (and (= inline$$1_BitVector_set$1$$t7@1 inline$$1_BitVector_set$1$$t10@0) (= (ControlFlow 0 1641101) 1641107))) inline$$1_BitVector_set$1$L3_correct)))
(let ((inline$$1_BitVector_set$1$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_set$1$$t10@0) (= inline$$1_BitVector_set$1$$t10@0 7)) (and (= inline$$1_BitVector_set$1$$t10@0 inline$$1_BitVector_set$1$$t10@0) (= inline$$Lt$12$dst@1 inline$$Lt$12$dst@1))) (and (=> (= (ControlFlow 0 1641085) 1641313) inline$$1_BitVector_set$1$anon9_Then_correct) (=> (= (ControlFlow 0 1641085) 1641101) inline$$1_BitVector_set$1$anon9_Else_correct))))))
(let ((inline$$Lt$12$anon0_correct  (=> (and (= inline$$Lt$12$dst@1 (< inline$$Sub$6$dst@2 |inline$$1_Vector_length'bool'$7$l@1|)) (= (ControlFlow 0 1641049) 1641085)) inline$$1_BitVector_set$1$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_set$1$anon8_Else_correct  (=> (and (not $abort_flag@40) (= (ControlFlow 0 1641055) 1641049)) inline$$Lt$12$anon0_correct)))
(let ((inline$$1_BitVector_set$1$anon8_Then_correct  (=> (and (and $abort_flag@40 (= $abort_code@40 $abort_code@40)) (and (= inline$$1_BitVector_set$1$$t7@1 $abort_code@40) (= (ControlFlow 0 1641427) 1641107))) inline$$1_BitVector_set$1$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$7$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$7$l@1| (|l#Vec_92615| inline$$1_BitVector_set$1$$t5@1)) (and (=> (= (ControlFlow 0 1640995) 1641427) inline$$1_BitVector_set$1$anon8_Then_correct) (=> (= (ControlFlow 0 1640995) 1641055) inline$$1_BitVector_set$1$anon8_Else_correct)))))
(let ((inline$$1_BitVector_set$1$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$1$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$1$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$1$$t12@0)) 0) (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (and (and (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$Sub$6$dst@2 inline$$Sub$6$dst@2)) (and (= inline$$1_BitVector_set$1$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))) (= (ControlFlow 0 1641001) 1640995)))) |inline$$1_Vector_length'bool'$7$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon54_Else_correct  (=> (and (not $abort_flag@40) (= (ControlFlow 0 1641433) 1641001)) inline$$1_BitVector_set$1$anon0_correct)))
(let ((inline$$Sub$6$anon3_Then$1_correct  (=> (= $abort_flag@40 true) (=> (and (= $abort_code@40 $EXEC_FAILURE_CODE) (= inline$$Sub$6$dst@2 inline$$Sub$6$dst@0)) (and (=> (= (ControlFlow 0 1640516) 1641469) inline$$1_BitVector_shift_left$0$anon54_Then_correct) (=> (= (ControlFlow 0 1640516) 1641433) inline$$1_BitVector_shift_left$0$anon54_Else_correct))))))
(let ((inline$$Sub$6$anon3_Then_correct  (=> (and (< inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (= (ControlFlow 0 1640514) 1640516)) inline$$Sub$6$anon3_Then$1_correct)))
(let ((inline$$Sub$6$anon3_Else_correct  (=> (<= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (=> (and (and (= inline$$Sub$6$dst@1 (- inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@40 $abort_flag@36)) (and (= $abort_code@40 $abort_code@36) (= inline$$Sub$6$dst@2 inline$$Sub$6$dst@1))) (and (=> (= (ControlFlow 0 1640466) 1641469) inline$$1_BitVector_shift_left$0$anon54_Then_correct) (=> (= (ControlFlow 0 1640466) 1641433) inline$$1_BitVector_shift_left$0$anon54_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon53_Then_correct  (=> inline$$1_BitVector_is_index_set$2$$ret0@1 (and (=> (= (ControlFlow 0 1640522) 1640514) inline$$Sub$6$anon3_Then_correct) (=> (= (ControlFlow 0 1640522) 1640466) inline$$Sub$6$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon57_Else_correct  (=> (and (and (not $abort_flag@39) (= $abort_flag@43 $abort_flag@39)) (and (= $abort_code@43 $abort_code@39) (= (ControlFlow 0 1640162) 1640323))) inline$$1_BitVector_shift_left$0$L14_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon57_Then_correct  (=> (and (and $abort_flag@39 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@39) (= (ControlFlow 0 1640367) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_unset$1$anon10_Else_correct  (=> (and (not $abort_flag@38) (= |inline$$1_BitVector_unset$1$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$2$dst@2|))) (=> (and (and (and (= |inline$$1_BitVector_unset$1$$temp_0'bool'@1| |inline$$1_BitVector_unset$1$$temp_0'bool'@1|) (= inline$$1_BitVector_unset$1$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$2$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$2$dst@2|) false))) (and (= inline$$1_BitVector_unset$1$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$1$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_unset$1$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|))))) (= inline$$1_BitVector_unset$1$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (|v#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@2)))))) (and (and (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_unset$1$$t0@1)) (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2|)) (and (= $abort_flag@39 $abort_flag@38) (= $abort_code@39 $abort_code@38)))) (and (=> (= (ControlFlow 0 1640118) 1640367) inline$$1_BitVector_shift_left$0$anon57_Then_correct) (=> (= (ControlFlow 0 1640118) 1640162) inline$$1_BitVector_shift_left$0$anon57_Else_correct))))))
(let ((inline$$1_BitVector_unset$1$L3_correct  (=> (and (= $abort_flag@39 true) (= $abort_code@39 inline$$1_BitVector_unset$1$$t7@1)) (and (=> (= (ControlFlow 0 1639826) 1640367) inline$$1_BitVector_shift_left$0$anon57_Then_correct) (=> (= (ControlFlow 0 1639826) 1640162) inline$$1_BitVector_shift_left$0$anon57_Else_correct)))))
(let ((inline$$1_BitVector_unset$1$anon10_Then_correct  (=> (and (and $abort_flag@38 (= $abort_code@38 $abort_code@38)) (and (= inline$$1_BitVector_unset$1$$t7@1 $abort_code@38) (= (ControlFlow 0 1640132) 1639826))) inline$$1_BitVector_unset$1$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon3_Then$1_correct|  (=> (and (and (= $abort_code@38 $EXEC_FAILURE_CODE) (= $abort_flag@38 true)) (and (= |inline$$1_Vector_borrow_mut'bool'$2$dst@2| |inline$$1_Vector_borrow_mut'bool'$2$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$2$m'@1| |inline$$1_Vector_borrow_mut'bool'$2$m'@0|))) (and (=> (= (ControlFlow 0 1640024) 1640132) inline$$1_BitVector_unset$1$anon10_Then_correct) (=> (= (ControlFlow 0 1640024) 1640118) inline$$1_BitVector_unset$1$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$2$v@1| inline$$Sub$5$dst@2)) (= (ControlFlow 0 1640022) 1640024)) |inline$$1_Vector_borrow_mut'bool'$2$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$2$v@1| inline$$Sub$5$dst@2) (= |inline$$1_Vector_borrow_mut'bool'$2$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1) (let ((l@@7 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1)) l@@7 inline$$Sub$5$dst@2) (+ l@@7 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$2$v@1|) inline$$Sub$5$dst@2)))) (=> (and (and (= $abort_code@38 $abort_code@37) (= $abort_flag@38 $abort_flag@37)) (and (= |inline$$1_Vector_borrow_mut'bool'$2$dst@2| |inline$$1_Vector_borrow_mut'bool'$2$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$2$m'@1| inline$$1_BitVector_unset$1$$t11@1))) (and (=> (= (ControlFlow 0 1639972) 1640132) inline$$1_BitVector_unset$1$anon10_Then_correct) (=> (= (ControlFlow 0 1639972) 1640118) inline$$1_BitVector_unset$1$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$2$v@1| (|v#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1)) (and (=> (= (ControlFlow 0 1639942) 1640022) |inline$$1_Vector_borrow_mut'bool'$2$anon3_Then_correct|) (=> (= (ControlFlow 0 1639942) 1639972) |inline$$1_Vector_borrow_mut'bool'$2$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_unset$1$anon9_Then_correct  (=> inline$$Lt$11$dst@1 (=> (and (= inline$$1_BitVector_unset$1$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (let ((l@@8 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) l@@8 1) (+ l@@8 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (= (ControlFlow 0 1640032) 1639942)) |inline$$1_Vector_borrow_mut'bool'$2$anon0_correct|))))
(let ((inline$$1_BitVector_unset$1$anon9_Else_correct  (=> (and (and (not inline$$Lt$11$dst@1) (= inline$$1_BitVector_unset$1$$t10@0 inline$$1_BitVector_unset$1$$t10@0)) (and (= inline$$1_BitVector_unset$1$$t7@1 inline$$1_BitVector_unset$1$$t10@0) (= (ControlFlow 0 1639820) 1639826))) inline$$1_BitVector_unset$1$L3_correct)))
(let ((inline$$1_BitVector_unset$1$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_unset$1$$t10@0) (= inline$$1_BitVector_unset$1$$t10@0 7)) (and (= inline$$1_BitVector_unset$1$$t10@0 inline$$1_BitVector_unset$1$$t10@0) (= inline$$Lt$11$dst@1 inline$$Lt$11$dst@1))) (and (=> (= (ControlFlow 0 1639804) 1640032) inline$$1_BitVector_unset$1$anon9_Then_correct) (=> (= (ControlFlow 0 1639804) 1639820) inline$$1_BitVector_unset$1$anon9_Else_correct))))))
(let ((inline$$Lt$11$anon0_correct  (=> (and (= inline$$Lt$11$dst@1 (< inline$$Sub$5$dst@2 |inline$$1_Vector_length'bool'$6$l@1|)) (= (ControlFlow 0 1639768) 1639804)) inline$$1_BitVector_unset$1$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_unset$1$anon8_Else_correct  (=> (and (not $abort_flag@37) (= (ControlFlow 0 1639774) 1639768)) inline$$Lt$11$anon0_correct)))
(let ((inline$$1_BitVector_unset$1$anon8_Then_correct  (=> (and (and $abort_flag@37 (= $abort_code@37 $abort_code@37)) (and (= inline$$1_BitVector_unset$1$$t7@1 $abort_code@37) (= (ControlFlow 0 1640146) 1639826))) inline$$1_BitVector_unset$1$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$6$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$6$l@1| (|l#Vec_92615| inline$$1_BitVector_unset$1$$t5@1)) (and (=> (= (ControlFlow 0 1639714) 1640146) inline$$1_BitVector_unset$1$anon8_Then_correct) (=> (= (ControlFlow 0 1639714) 1639774) inline$$1_BitVector_unset$1$anon8_Else_correct)))))
(let ((inline$$1_BitVector_unset$1$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$1$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$1$$t12@0)) 0) (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (and (and (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$Sub$5$dst@2 inline$$Sub$5$dst@2)) (and (= inline$$1_BitVector_unset$1$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))) (= (ControlFlow 0 1639720) 1639714)))) |inline$$1_Vector_length'bool'$6$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon56_Else_correct  (=> (and (not $abort_flag@37) (= (ControlFlow 0 1640152) 1639720)) inline$$1_BitVector_unset$1$anon0_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon56_Then_correct  (=> (and (and $abort_flag@37 (= $abort_code@37 $abort_code@37)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@37) (= (ControlFlow 0 1640381) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$Sub$5$anon3_Then$1_correct  (=> (= $abort_flag@37 true) (=> (and (= $abort_code@37 $EXEC_FAILURE_CODE) (= inline$$Sub$5$dst@2 inline$$Sub$5$dst@0)) (and (=> (= (ControlFlow 0 1639235) 1640381) inline$$1_BitVector_shift_left$0$anon56_Then_correct) (=> (= (ControlFlow 0 1639235) 1640152) inline$$1_BitVector_shift_left$0$anon56_Else_correct))))))
(let ((inline$$Sub$5$anon3_Then_correct  (=> (and (< inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (= (ControlFlow 0 1639233) 1639235)) inline$$Sub$5$anon3_Then$1_correct)))
(let ((inline$$Sub$5$anon3_Else_correct  (=> (<= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (=> (and (and (= inline$$Sub$5$dst@1 (- inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@37 $abort_flag@36)) (and (= $abort_code@37 $abort_code@36) (= inline$$Sub$5$dst@2 inline$$Sub$5$dst@1))) (and (=> (= (ControlFlow 0 1639185) 1640381) inline$$1_BitVector_shift_left$0$anon56_Then_correct) (=> (= (ControlFlow 0 1639185) 1640152) inline$$1_BitVector_shift_left$0$anon56_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon53_Else_correct  (=> (not inline$$1_BitVector_is_index_set$2$$ret0@1) (and (=> (= (ControlFlow 0 1639241) 1639233) inline$$Sub$5$anon3_Then_correct) (=> (= (ControlFlow 0 1639241) 1639185) inline$$Sub$5$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon52_Else_correct  (=> (not $abort_flag@36) (and (=> (= (ControlFlow 0 1639098) 1640522) inline$$1_BitVector_shift_left$0$anon53_Then_correct) (=> (= (ControlFlow 0 1639098) 1639241) inline$$1_BitVector_shift_left$0$anon53_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon52_Then_correct  (=> (and (and $abort_flag@36 (= $abort_code@36 $abort_code@36)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@36) (= (ControlFlow 0 1641483) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon10_Else_correct  (=> (not $abort_flag@35) (=> (and (and (= |inline$$1_Vector_borrow'bool'$2$dst@2| |inline$$1_Vector_borrow'bool'$2$dst@2|) (= $abort_code@36 $abort_code@35)) (and (= inline$$1_BitVector_is_index_set$2$$ret0@1 |inline$$1_Vector_borrow'bool'$2$dst@2|) (= $abort_flag@36 $abort_flag@35))) (and (=> (= (ControlFlow 0 1639056) 1641483) inline$$1_BitVector_shift_left$0$anon52_Then_correct) (=> (= (ControlFlow 0 1639056) 1639098) inline$$1_BitVector_shift_left$0$anon52_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$2$L3_correct  (=> (= $abort_code@36 inline$$1_BitVector_is_index_set$2$$t6@1) (=> (and (= inline$$1_BitVector_is_index_set$2$$ret0@1 inline$$1_BitVector_is_index_set$2$$ret0@0) (= $abort_flag@36 true)) (and (=> (= (ControlFlow 0 1638889) 1641483) inline$$1_BitVector_shift_left$0$anon52_Then_correct) (=> (= (ControlFlow 0 1638889) 1639098) inline$$1_BitVector_shift_left$0$anon52_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$2$anon10_Then_correct  (=> (and (and $abort_flag@35 (= $abort_code@35 $abort_code@35)) (and (= inline$$1_BitVector_is_index_set$2$$t6@1 $abort_code@35) (= (ControlFlow 0 1639070) 1638889))) inline$$1_BitVector_is_index_set$2$L3_correct)))
(let ((|inline$$1_Vector_borrow'bool'$2$anon3_Then$1_correct|  (=> (= $abort_flag@35 true) (=> (and (= $abort_code@35 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'bool'$2$dst@2| |inline$$1_Vector_borrow'bool'$2$dst@0|)) (and (=> (= (ControlFlow 0 1639032) 1639070) inline$$1_BitVector_is_index_set$2$anon10_Then_correct) (=> (= (ControlFlow 0 1639032) 1639056) inline$$1_BitVector_is_index_set$2$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'bool'$2$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 inline$$1_BitVector_is_index_set$2$$t10@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= (ControlFlow 0 1639030) 1639032)) |inline$$1_Vector_borrow'bool'$2$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'bool'$2$anon3_Else_correct|  (=> (InRangeVec_16728 inline$$1_BitVector_is_index_set$2$$t10@1 inline$$1_BitVector_shift_left$0$$t1@1) (=> (and (and (= |inline$$1_Vector_borrow'bool'$2$dst@1| (|Select__T@[Int]Bool_| (|v#Vec_92615| inline$$1_BitVector_is_index_set$2$$t10@1) inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@35 $abort_flag@30)) (and (= $abort_code@35 $abort_code@30) (= |inline$$1_Vector_borrow'bool'$2$dst@2| |inline$$1_Vector_borrow'bool'$2$dst@1|))) (and (=> (= (ControlFlow 0 1638980) 1639070) inline$$1_BitVector_is_index_set$2$anon10_Then_correct) (=> (= (ControlFlow 0 1638980) 1639056) inline$$1_BitVector_is_index_set$2$anon10_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$2$anon9_Then_correct  (=> (and inline$$Lt$10$dst@1 (= inline$$1_BitVector_is_index_set$2$$t10@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_BitVector_shift_left$0$$t22@2))) (and (=> (= (ControlFlow 0 1639038) 1639030) |inline$$1_Vector_borrow'bool'$2$anon3_Then_correct|) (=> (= (ControlFlow 0 1639038) 1638980) |inline$$1_Vector_borrow'bool'$2$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_is_index_set$2$anon9_Else_correct  (=> (and (and (not inline$$Lt$10$dst@1) (= inline$$1_BitVector_is_index_set$2$$t9@0 inline$$1_BitVector_is_index_set$2$$t9@0)) (and (= inline$$1_BitVector_is_index_set$2$$t6@1 inline$$1_BitVector_is_index_set$2$$t9@0) (= (ControlFlow 0 1638883) 1638889))) inline$$1_BitVector_is_index_set$2$L3_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_is_index_set$2$$t9@0) (= inline$$1_BitVector_is_index_set$2$$t9@0 7)) (and (= inline$$1_BitVector_is_index_set$2$$t9@0 inline$$1_BitVector_is_index_set$2$$t9@0) (= inline$$Lt$10$dst@1 inline$$Lt$10$dst@1))) (and (=> (= (ControlFlow 0 1638867) 1639038) inline$$1_BitVector_is_index_set$2$anon9_Then_correct) (=> (= (ControlFlow 0 1638867) 1638883) inline$$1_BitVector_is_index_set$2$anon9_Else_correct))))))
(let ((inline$$Lt$10$anon0_correct  (=> (and (= inline$$Lt$10$dst@1 (< inline$$1_BitVector_shift_left$0$$t1@1 |inline$$1_Vector_length'bool'$5$l@1|)) (= (ControlFlow 0 1638831) 1638867)) inline$$1_BitVector_is_index_set$2$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon8_Else_correct  (=> (and (not $abort_flag@30) (= (ControlFlow 0 1638837) 1638831)) inline$$Lt$10$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon8_Then_correct  (=> (and (and $abort_flag@30 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_BitVector_is_index_set$2$$t6@1 $abort_code@30) (= (ControlFlow 0 1639084) 1638889))) inline$$1_BitVector_is_index_set$2$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$5$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$5$l@1| (|l#Vec_92615| inline$$1_BitVector_is_index_set$2$$t4@1)) (and (=> (= (ControlFlow 0 1638777) 1639084) inline$$1_BitVector_is_index_set$2$anon8_Then_correct) (=> (= (ControlFlow 0 1638777) 1638837) inline$$1_BitVector_is_index_set$2$anon8_Else_correct)))))
(let ((inline$$1_BitVector_is_index_set$2$anon0_correct  (=> (and (and (= inline$$1_BitVector_shift_left$0$$t22@2 inline$$1_BitVector_shift_left$0$$t22@2) (= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (and (= inline$$1_BitVector_is_index_set$2$$t4@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_BitVector_shift_left$0$$t22@2)) (= (ControlFlow 0 1638783) 1638777))) |inline$$1_Vector_length'bool'$5$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon51_Then_correct  (=> (and inline$$Lt$7$dst@1 (= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (=> (and (and (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@3| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@3| |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@3|)) (and (= inline$$1_BitVector_shift_left$0$$t22@2 (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (= (ControlFlow 0 1639090) 1638783))) inline$$1_BitVector_is_index_set$2$anon0_correct))))
(let ((inline$$1_BitVector_shift_left$0$anon62_Then_correct  (=> (and (and $abort_flag@34 (= $abort_code@34 $abort_code@34)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@34) (= (ControlFlow 0 1638394) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@34 true) (=> (and (= $abort_code@34 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 1638358) 1638394) inline$$1_BitVector_shift_left$0$anon62_Then_correct) (=> (= (ControlFlow 0 1638358) 1638380) inline$$1_BitVector_shift_left$0$anon62_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_shift_left$0$$t29@1 1) $MAX_U64) (= (ControlFlow 0 1638356) 1638358)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_shift_left$0$$t29@1 1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ inline$$1_BitVector_shift_left$0$$t29@1 1)) (= $abort_flag@34 $abort_flag@33)) (and (= $abort_code@34 $abort_code@33) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 1638304) 1638394) inline$$1_BitVector_shift_left$0$anon62_Then_correct) (=> (= (ControlFlow 0 1638304) 1638380) inline$$1_BitVector_shift_left$0$anon62_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon61_Else_correct  (=> (and (not $abort_flag@33) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 1638364) 1638356) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 1638364) 1638304) inline$$AddU64$2$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon61_Then_correct  (=> (and (and $abort_flag@33 (= $abort_code@33 $abort_code@33)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@33) (= (ControlFlow 0 1638414) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_unset$0$anon10_Else_correct  (=> (and (not $abort_flag@32) (= |inline$$1_BitVector_unset$0$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$1$dst@2|))) (=> (and (and (and (= |inline$$1_BitVector_unset$0$$temp_0'bool'@1| |inline$$1_BitVector_unset$0$$temp_0'bool'@1|) (= inline$$1_BitVector_unset$0$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$1$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$1$dst@2|) false))) (and (= inline$$1_BitVector_unset$0$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$0$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_unset$0$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|))))) (= inline$$1_BitVector_unset$0$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)) (|v#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@2)))))) (and (and (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_unset$0$$t0@1)) (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2|)) (and (= $abort_flag@33 $abort_flag@32) (= $abort_code@33 $abort_code@32)))) (and (=> (= (ControlFlow 0 1638161) 1638414) inline$$1_BitVector_shift_left$0$anon61_Then_correct) (=> (= (ControlFlow 0 1638161) 1638364) inline$$1_BitVector_shift_left$0$anon61_Else_correct))))))
(let ((inline$$1_BitVector_unset$0$L3_correct  (=> (and (= $abort_flag@33 true) (= $abort_code@33 inline$$1_BitVector_unset$0$$t7@1)) (and (=> (= (ControlFlow 0 1637869) 1638414) inline$$1_BitVector_shift_left$0$anon61_Then_correct) (=> (= (ControlFlow 0 1637869) 1638364) inline$$1_BitVector_shift_left$0$anon61_Else_correct)))))
(let ((inline$$1_BitVector_unset$0$anon10_Then_correct  (=> (and (and $abort_flag@32 (= $abort_code@32 $abort_code@32)) (and (= inline$$1_BitVector_unset$0$$t7@1 $abort_code@32) (= (ControlFlow 0 1638175) 1637869))) inline$$1_BitVector_unset$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon3_Then$1_correct|  (=> (and (and (= $abort_code@32 $EXEC_FAILURE_CODE) (= $abort_flag@32 true)) (and (= |inline$$1_Vector_borrow_mut'bool'$1$dst@2| |inline$$1_Vector_borrow_mut'bool'$1$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$1$m'@1| |inline$$1_Vector_borrow_mut'bool'$1$m'@0|))) (and (=> (= (ControlFlow 0 1638067) 1638175) inline$$1_BitVector_unset$0$anon10_Then_correct) (=> (= (ControlFlow 0 1638067) 1638161) inline$$1_BitVector_unset$0$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$1$v@1| inline$$1_BitVector_shift_left$0$$t29@1)) (= (ControlFlow 0 1638065) 1638067)) |inline$$1_Vector_borrow_mut'bool'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$1$v@1| inline$$1_BitVector_shift_left$0$$t29@1) (= |inline$$1_Vector_borrow_mut'bool'$1$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1) (let ((l@@9 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1)) l@@9 inline$$1_BitVector_shift_left$0$$t29@1) (+ l@@9 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$1$v@1|) inline$$1_BitVector_shift_left$0$$t29@1)))) (=> (and (and (= $abort_code@32 $abort_code@31) (= $abort_flag@32 $abort_flag@31)) (and (= |inline$$1_Vector_borrow_mut'bool'$1$dst@2| |inline$$1_Vector_borrow_mut'bool'$1$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$1$m'@1| inline$$1_BitVector_unset$0$$t11@1))) (and (=> (= (ControlFlow 0 1638015) 1638175) inline$$1_BitVector_unset$0$anon10_Then_correct) (=> (= (ControlFlow 0 1638015) 1638161) inline$$1_BitVector_unset$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$1$v@1| (|v#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1)) (and (=> (= (ControlFlow 0 1637985) 1638065) |inline$$1_Vector_borrow_mut'bool'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 1637985) 1638015) |inline$$1_Vector_borrow_mut'bool'$1$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_unset$0$anon9_Then_correct  (=> inline$$Lt$9$dst@1 (=> (and (= inline$$1_BitVector_unset$0$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2) (let ((l@@10 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)) l@@10 1) (+ l@@10 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)))) (= (ControlFlow 0 1638075) 1637985)) |inline$$1_Vector_borrow_mut'bool'$1$anon0_correct|))))
(let ((inline$$1_BitVector_unset$0$anon9_Else_correct  (=> (and (and (not inline$$Lt$9$dst@1) (= inline$$1_BitVector_unset$0$$t10@0 inline$$1_BitVector_unset$0$$t10@0)) (and (= inline$$1_BitVector_unset$0$$t7@1 inline$$1_BitVector_unset$0$$t10@0) (= (ControlFlow 0 1637863) 1637869))) inline$$1_BitVector_unset$0$L3_correct)))
(let ((inline$$1_BitVector_unset$0$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_unset$0$$t10@0) (= inline$$1_BitVector_unset$0$$t10@0 7)) (and (= inline$$1_BitVector_unset$0$$t10@0 inline$$1_BitVector_unset$0$$t10@0) (= inline$$Lt$9$dst@1 inline$$Lt$9$dst@1))) (and (=> (= (ControlFlow 0 1637847) 1638075) inline$$1_BitVector_unset$0$anon9_Then_correct) (=> (= (ControlFlow 0 1637847) 1637863) inline$$1_BitVector_unset$0$anon9_Else_correct))))))
(let ((inline$$Lt$9$anon0_correct  (=> (and (= inline$$Lt$9$dst@1 (< inline$$1_BitVector_shift_left$0$$t29@1 |inline$$1_Vector_length'bool'$4$l@1|)) (= (ControlFlow 0 1637811) 1637847)) inline$$1_BitVector_unset$0$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_unset$0$anon8_Else_correct  (=> (and (not $abort_flag@31) (= (ControlFlow 0 1637817) 1637811)) inline$$Lt$9$anon0_correct)))
(let ((inline$$1_BitVector_unset$0$anon8_Then_correct  (=> (and (and $abort_flag@31 (= $abort_code@31 $abort_code@31)) (and (= inline$$1_BitVector_unset$0$$t7@1 $abort_code@31) (= (ControlFlow 0 1638189) 1637869))) inline$$1_BitVector_unset$0$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$4$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$4$l@1| (|l#Vec_92615| inline$$1_BitVector_unset$0$$t5@1)) (and (=> (= (ControlFlow 0 1637757) 1638189) inline$$1_BitVector_unset$0$anon8_Then_correct) (=> (= (ControlFlow 0 1637757) 1637817) inline$$1_BitVector_unset$0$anon8_Else_correct)))))
(let ((inline$$1_BitVector_unset$0$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$0$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$0$$t12@0)) 0) (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)))) (and (and (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$1_BitVector_shift_left$0$$t29@1 inline$$1_BitVector_shift_left$0$$t29@1)) (and (= inline$$1_BitVector_unset$0$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2))) (= (ControlFlow 0 1637763) 1637757)))) |inline$$1_Vector_length'bool'$4$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon60_Then_correct  (=> (and inline$$Lt$8$dst@1 (= (ControlFlow 0 1638195) 1637763)) inline$$1_BitVector_unset$0$anon0_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon59_Then_correct  (=> (and (and $abort_flag@31 (= $abort_code@31 $abort_code@31)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@31) (= (ControlFlow 0 1638428) 1638400))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$L7_correct  (=> (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@6| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@4)) (=> (and (and (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@6| |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@6|) (= $abort_flag@48 $abort_flag@45)) (and (= $abort_code@48 $abort_code@45) (= inline$$1_BitVector_shift_left$0$$ret0@1 inline$$1_BitVector_shift_left$0$$t0@4))) (and (=> (= (ControlFlow 0 1637288) 1642437) inline$$1_CRSN_shift_window_right$0$anon12_Then_correct) (=> (= (ControlFlow 0 1637288) 1642347) inline$$1_CRSN_shift_window_right$0$anon12_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon48_Else_correct  (=> (not inline$$Lt$13$dst@1) (=> (and (and (= $abort_flag@45 $abort_flag@30) (= $abort_code@45 $abort_code@30)) (and (= inline$$1_BitVector_shift_left$0$$t0@4 inline$$1_BitVector_shift_left$0$$t0@3) (= (ControlFlow 0 1641661) 1637288))) inline$$1_BitVector_shift_left$0$L7_correct))))
(let ((inline$$Lt$13$anon0_correct  (=> (= inline$$Lt$13$dst@1 (< inline$$1_BitVector_shift_left$0$$t13@1 |inline$$1_Vector_length'bool'$8$l@1|)) (and (=> (= (ControlFlow 0 1641647) 1641867) inline$$1_BitVector_shift_left$0$anon48_Then_correct) (=> (= (ControlFlow 0 1641647) 1641661) inline$$1_BitVector_shift_left$0$anon48_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon47_Else_correct  (=> (and (and (not $abort_flag@30) (= |inline$$1_Vector_length'bool'$8$l@1| |inline$$1_Vector_length'bool'$8$l@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t13@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t16@1)) (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t17@1) (= inline$$1_BitVector_shift_left$0$$t0@3 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) (|p#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@5|)))) (and (and (|$IsValid'$1_BitVector_BitVector'| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)) (|$IsValid'vec'bool''| (|v#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@1))) (and (not $abort_flag@30) (= (ControlFlow 0 1641653) 1641647)))) inline$$Lt$13$anon0_correct))))
(let ((|inline$$1_Vector_length'bool'$8$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$8$l@1| (|l#Vec_92615| inline$$1_BitVector_shift_left$0$$t10@1)) (and (=> (= (ControlFlow 0 1641523) 1642158) inline$$1_BitVector_shift_left$0$anon47_Then_correct) (=> (= (ControlFlow 0 1641523) 1641653) inline$$1_BitVector_shift_left$0$anon47_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon46_Then_correct  (=> inline$$Ge$2$dst@1 (=> (and (= inline$$1_BitVector_shift_left$0$$t10@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1))) (= (ControlFlow 0 1641529) 1641523)) |inline$$1_Vector_length'bool'$8$anon0_correct|))))
(let ((inline$$1_BitVector_shift_left$0$anon60_Else_correct  (=> (not inline$$Lt$8$dst@1) (=> (and (and (= $abort_flag@45 $abort_flag@31) (= $abort_code@45 $abort_code@31)) (and (= inline$$1_BitVector_shift_left$0$$t0@4 inline$$1_BitVector_shift_left$0$$t0@2) (= (ControlFlow 0 1637274) 1637288))) inline$$1_BitVector_shift_left$0$L7_correct))))
(let ((inline$$Lt$8$anon0_correct  (=> (= inline$$Lt$8$dst@1 (< inline$$1_BitVector_shift_left$0$$t29@1 inline$$1_BitVector_shift_left$0$$t30@2)) (and (=> (= (ControlFlow 0 1637260) 1638195) inline$$1_BitVector_shift_left$0$anon60_Then_correct) (=> (= (ControlFlow 0 1637260) 1637274) inline$$1_BitVector_shift_left$0$anon60_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon59_Else_correct  (=> (not $abort_flag@31) (=> (and (= inline$$Sub$4$dst@2 inline$$Sub$4$dst@2) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t29@1)) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t30@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t32@1)) (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t33@1) (= inline$$1_BitVector_shift_left$0$$t0@2 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@4|)))) (and (and (|$IsValid'$1_BitVector_BitVector'| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)) (not $abort_flag@31)) (and (= inline$$1_BitVector_shift_left$0$$t30@2 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2))) (= (ControlFlow 0 1637266) 1637260)))) inline$$Lt$8$anon0_correct)))))
(let ((inline$$Sub$4$anon3_Then$1_correct  (=> (= $abort_flag@31 true) (=> (and (= $abort_code@31 $EXEC_FAILURE_CODE) (= inline$$Sub$4$dst@2 inline$$Sub$4$dst@0)) (and (=> (= (ControlFlow 0 1637156) 1638428) inline$$1_BitVector_shift_left$0$anon59_Then_correct) (=> (= (ControlFlow 0 1637156) 1637266) inline$$1_BitVector_shift_left$0$anon59_Else_correct))))))
(let ((inline$$Sub$4$anon3_Then_correct  (=> (and (< inline$$1_BitVector_shift_left$0$$t28@1 inline$$1_BitVector_shift_left$0$$t1@1) (= (ControlFlow 0 1637154) 1637156)) inline$$Sub$4$anon3_Then$1_correct)))
(let ((inline$$Sub$4$anon3_Else_correct  (=> (<= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t28@1) (=> (and (and (= inline$$Sub$4$dst@1 (- inline$$1_BitVector_shift_left$0$$t28@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@31 $abort_flag@30)) (and (= $abort_code@31 $abort_code@30) (= inline$$Sub$4$dst@2 inline$$Sub$4$dst@1))) (and (=> (= (ControlFlow 0 1637106) 1638428) inline$$1_BitVector_shift_left$0$anon59_Then_correct) (=> (= (ControlFlow 0 1637106) 1637266) inline$$1_BitVector_shift_left$0$anon59_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon51_Else_correct  (=> (and (not inline$$Lt$7$dst@1) (= inline$$1_BitVector_shift_left$0$$t28@1 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (and (=> (= (ControlFlow 0 1637162) 1637154) inline$$Sub$4$anon3_Then_correct) (=> (= (ControlFlow 0 1637162) 1637106) inline$$Sub$4$anon3_Else_correct)))))
(let ((inline$$Lt$7$anon0_correct  (=> (= inline$$Lt$7$dst@1 (< inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t20@2)) (and (=> (= (ControlFlow 0 1637005) 1639090) inline$$1_BitVector_shift_left$0$anon51_Then_correct) (=> (= (ControlFlow 0 1637005) 1637162) inline$$1_BitVector_shift_left$0$anon51_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon46_Else_correct  (=> (and (not inline$$Ge$2$dst@1) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t1@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t20@1)) (and (|$IsValid'$1_BitVector_BitVector'| inline$$1_BitVector_shift_left$0$$t22@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t24@1))) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t25@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t26@1)) (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t27@1) (= inline$$1_BitVector_shift_left$0$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) (|p#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@2|)))) (and (and (|$IsValid'$1_BitVector_BitVector'| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (not $abort_flag@30)) (and (= inline$$1_BitVector_shift_left$0$$t20@2 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))) (= (ControlFlow 0 1637011) 1637005)))) inline$$Lt$7$anon0_correct)))))
(let ((inline$$Ge$2$anon0_correct  (=> (= inline$$Ge$2$dst@1 (>= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_shift_left$0$$t8@1)) (and (=> (= (ControlFlow 0 1636885) 1641529) inline$$1_BitVector_shift_left$0$anon46_Then_correct) (=> (= (ControlFlow 0 1636885) 1637011) inline$$1_BitVector_shift_left$0$anon46_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon0_correct  (=> (= (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t2@0)) 0) (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t19@0)) 0) (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1)))) (and (and (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (and (= inline$$1_BitVector_shift_left$0$$t8@1 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1))) (= (ControlFlow 0 1636891) 1636885)))) inline$$Ge$2$anon0_correct))))
(let ((inline$$1_CRSN_shift_window_right$0$anon11_Else_correct  (=> (not inline$$1_CRSN_shift_window_right$0$$t7@1) (=> (and (= inline$$1_CRSN_shift_window_right$0$$t8@1 ($Mutation_572160 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3) (let ((l@@11 (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)) l@@11 2) (+ l@@11 1))) (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)))) (= (ControlFlow 0 1642164) 1636891)) inline$$1_BitVector_shift_left$0$anon0_correct))))
(let ((inline$$1_CRSN_shift_window_right$0$anon11_Then_correct  (=> (and inline$$1_CRSN_shift_window_right$0$$t7@1 (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@2| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3))) (=> (and (and (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@2| |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@2|) (= $abort_flag@50 $abort_flag@30)) (and (= $abort_code@50 $abort_code@30) (= (ControlFlow 0 1642451) 1642403))) inline$$1_CRSN_shift_window_right$0$L3_correct))))
(let ((inline$$1_CRSN_shift_window_right$0$anon10_Else_correct  (=> (and (and (not $abort_flag@30) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (and (|$IsValid'u64'| 0) (= inline$$1_CRSN_shift_window_right$0$$t7@1 (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 0)))) (and (=> (= (ControlFlow 0 1635619) 1642451) inline$$1_CRSN_shift_window_right$0$anon11_Then_correct) (=> (= (ControlFlow 0 1635619) 1642164) inline$$1_CRSN_shift_window_right$0$anon11_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Else_correct  (=> (not $abort_flag@28) (=> (and (and (= inline$$Sub$3$dst@2 inline$$Sub$3$dst@2) (= $abort_code@30 $abort_code@28)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$Sub$3$dst@2) (= $abort_flag@30 $abort_flag@28))) (and (=> (= (ControlFlow 0 1634670) 1642465) inline$$1_CRSN_shift_window_right$0$anon10_Then_correct) (=> (= (ControlFlow 0 1634670) 1635619) inline$$1_CRSN_shift_window_right$0$anon10_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct  (=> (= $abort_code@30 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1) (=> (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@0) (= $abort_flag@30 true)) (and (=> (= (ControlFlow 0 1634413) 1642465) inline$$1_CRSN_shift_window_right$0$anon10_Then_correct) (=> (= (ControlFlow 0 1634413) 1635619) inline$$1_CRSN_shift_window_right$0$anon10_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@29 $abort_code@29)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 $abort_code@29) (= (ControlFlow 0 1635567) 1634413))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_flag@29 true) (=> (and (= $abort_code@29 $EXEC_FAILURE_CODE) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 1635531) 1635567) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Then_correct) (=> (= (ControlFlow 0 1635531) 1635553) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 1) $MAX_U64) (= (ControlFlow 0 1635529) 1635531)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 1)) (= $abort_flag@29 $abort_flag@26)) (and (= $abort_code@29 $abort_code@26) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 1635477) 1635567) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Then_correct) (=> (= (ControlFlow 0 1635477) 1635553) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Else_correct  (=> (and (not inline$$Not$1$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 1635537) 1635529) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 1635537) 1635477) inline$$AddU64$1$anon3_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Then_correct  (=> (and (and $abort_flag@26 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 $abort_code@26) (= (ControlFlow 0 1635585) 1634413))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Then_correct  (=> (and (and $abort_flag@28 (= $abort_code@28 $abort_code@28)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 $abort_code@28) (= (ControlFlow 0 1634684) 1634413))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$Sub$3$anon3_Then$1_correct  (=> (= $abort_flag@28 true) (=> (and (= $abort_code@28 $EXEC_FAILURE_CODE) (= inline$$Sub$3$dst@2 inline$$Sub$3$dst@0)) (and (=> (= (ControlFlow 0 1634648) 1634684) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Then_correct) (=> (= (ControlFlow 0 1634648) 1634670) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Else_correct))))))
(let ((inline$$Sub$3$anon3_Then_correct  (=> (and (< inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1) (= (ControlFlow 0 1634646) 1634648)) inline$$Sub$3$anon3_Then$1_correct)))
(let ((inline$$Sub$3$anon3_Else_correct  (=> (<= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1) (=> (and (and (= inline$$Sub$3$dst@1 (- inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (= $abort_flag@28 $abort_flag@27)) (and (= $abort_code@28 $abort_code@27) (= inline$$Sub$3$dst@2 inline$$Sub$3$dst@1))) (and (=> (= (ControlFlow 0 1634598) 1634684) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Then_correct) (=> (= (ControlFlow 0 1634598) 1634670) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Then_correct  (=> inline$$Not$1$dst@1 (=> (and (= $abort_flag@27 $abort_flag@26) (= $abort_code@27 $abort_code@26)) (and (=> (= (ControlFlow 0 1635571) 1634646) inline$$Sub$3$anon3_Then_correct) (=> (= (ControlFlow 0 1635571) 1634598) inline$$Sub$3$anon3_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (= inline$$Not$1$dst@1  (not inline$$1_BitVector_is_index_set$1$$ret0@1)) (and (=> (= (ControlFlow 0 1635364) 1635571) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Then_correct) (=> (= (ControlFlow 0 1635364) 1635537) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Else_correct  (=> (and (not $abort_flag@26) (= (ControlFlow 0 1635370) 1635364)) inline$$Not$1$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon10_Else_correct  (=> (not $abort_flag@25) (=> (and (and (= |inline$$1_Vector_borrow'bool'$1$dst@2| |inline$$1_Vector_borrow'bool'$1$dst@2|) (= $abort_flag@26 $abort_flag@25)) (and (= inline$$1_BitVector_is_index_set$1$$ret0@1 |inline$$1_Vector_borrow'bool'$1$dst@2|) (= $abort_code@26 $abort_code@25))) (and (=> (= (ControlFlow 0 1635292) 1635585) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Then_correct) (=> (= (ControlFlow 0 1635292) 1635370) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$1$L3_correct  (=> (= $abort_flag@26 true) (=> (and (= inline$$1_BitVector_is_index_set$1$$ret0@1 inline$$1_BitVector_is_index_set$1$$ret0@0) (= $abort_code@26 inline$$1_BitVector_is_index_set$1$$t6@1)) (and (=> (= (ControlFlow 0 1635125) 1635585) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Then_correct) (=> (= (ControlFlow 0 1635125) 1635370) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$1$anon10_Then_correct  (=> (and (and $abort_flag@25 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_BitVector_is_index_set$1$$t6@1 $abort_code@25) (= (ControlFlow 0 1635306) 1635125))) inline$$1_BitVector_is_index_set$1$L3_correct)))
(let ((|inline$$1_Vector_borrow'bool'$1$anon3_Then$1_correct|  (=> (= $abort_code@25 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@25 true) (= |inline$$1_Vector_borrow'bool'$1$dst@2| |inline$$1_Vector_borrow'bool'$1$dst@0|)) (and (=> (= (ControlFlow 0 1635268) 1635306) inline$$1_BitVector_is_index_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1635268) 1635292) inline$$1_BitVector_is_index_set$1$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'bool'$1$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 inline$$1_BitVector_is_index_set$1$$t10@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (= (ControlFlow 0 1635266) 1635268)) |inline$$1_Vector_borrow'bool'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'bool'$1$anon3_Else_correct|  (=> (InRangeVec_16728 inline$$1_BitVector_is_index_set$1$$t10@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1) (=> (and (and (= |inline$$1_Vector_borrow'bool'$1$dst@1| (|Select__T@[Int]Bool_| (|v#Vec_92615| inline$$1_BitVector_is_index_set$1$$t10@1) inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (= $abort_code@25 $abort_code@24)) (and (= $abort_flag@25 $abort_flag@24) (= |inline$$1_Vector_borrow'bool'$1$dst@2| |inline$$1_Vector_borrow'bool'$1$dst@1|))) (and (=> (= (ControlFlow 0 1635216) 1635306) inline$$1_BitVector_is_index_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1635216) 1635292) inline$$1_BitVector_is_index_set$1$anon10_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$1$anon9_Then_correct  (=> (and inline$$Lt$6$dst@1 (= inline$$1_BitVector_is_index_set$1$$t10@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1))) (and (=> (= (ControlFlow 0 1635274) 1635266) |inline$$1_Vector_borrow'bool'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 1635274) 1635216) |inline$$1_Vector_borrow'bool'$1$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_is_index_set$1$anon9_Else_correct  (=> (and (and (not inline$$Lt$6$dst@1) (= inline$$1_BitVector_is_index_set$1$$t9@0 inline$$1_BitVector_is_index_set$1$$t9@0)) (and (= inline$$1_BitVector_is_index_set$1$$t6@1 inline$$1_BitVector_is_index_set$1$$t9@0) (= (ControlFlow 0 1635119) 1635125))) inline$$1_BitVector_is_index_set$1$L3_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_is_index_set$1$$t9@0) (= inline$$1_BitVector_is_index_set$1$$t9@0 7)) (and (= inline$$1_BitVector_is_index_set$1$$t9@0 inline$$1_BitVector_is_index_set$1$$t9@0) (= inline$$Lt$6$dst@1 inline$$Lt$6$dst@1))) (and (=> (= (ControlFlow 0 1635103) 1635274) inline$$1_BitVector_is_index_set$1$anon9_Then_correct) (=> (= (ControlFlow 0 1635103) 1635119) inline$$1_BitVector_is_index_set$1$anon9_Else_correct))))))
(let ((inline$$Lt$6$anon0_correct  (=> (and (= inline$$Lt$6$dst@1 (< inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 |inline$$1_Vector_length'bool'$3$l@1|)) (= (ControlFlow 0 1635067) 1635103)) inline$$1_BitVector_is_index_set$1$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon8_Else_correct  (=> (and (not $abort_flag@24) (= (ControlFlow 0 1635073) 1635067)) inline$$Lt$6$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon8_Then_correct  (=> (and (and $abort_flag@24 (= $abort_code@24 $abort_code@24)) (and (= inline$$1_BitVector_is_index_set$1$$t6@1 $abort_code@24) (= (ControlFlow 0 1635320) 1635125))) inline$$1_BitVector_is_index_set$1$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$3$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$3$l@1| (|l#Vec_92615| inline$$1_BitVector_is_index_set$1$$t4@1)) (and (=> (= (ControlFlow 0 1635013) 1635320) inline$$1_BitVector_is_index_set$1$anon8_Then_correct) (=> (= (ControlFlow 0 1635013) 1635073) inline$$1_BitVector_is_index_set$1$anon8_Else_correct)))))
(let ((inline$$1_BitVector_is_index_set$1$anon0_correct  (=> (and (and (= inline$$1_CRSN_shift_window_right$0$$t2@1 inline$$1_CRSN_shift_window_right$0$$t2@1) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (and (= inline$$1_BitVector_is_index_set$1$$t4@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1)) (= (ControlFlow 0 1635019) 1635013))) |inline$$1_Vector_length'bool'$3$anon0_correct|)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Then_correct  (=> (and inline$$Lt$5$dst@1 (= (ControlFlow 0 1635326) 1635019)) inline$$1_BitVector_is_index_set$1$anon0_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Else_correct  (=> (not inline$$Lt$5$dst@1) (=> (and (= $abort_flag@27 $abort_flag@24) (= $abort_code@27 $abort_code@24)) (and (=> (= (ControlFlow 0 1634515) 1634646) inline$$Sub$3$anon3_Then_correct) (=> (= (ControlFlow 0 1634515) 1634598) inline$$Sub$3$anon3_Else_correct))))))
(let ((inline$$Lt$5$anon0_correct  (=> (= inline$$Lt$5$dst@1 (< inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@2)) (and (=> (= (ControlFlow 0 1634501) 1635326) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Then_correct) (=> (= (ControlFlow 0 1634501) 1634515) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Then_correct  (=> inline$$Lt$4$dst@1 (=> (and (and (and (= 0 0) (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (and (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@1) (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t14@1))) (and (and (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t15@1) (not $abort_flag@24)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@2 (|$length#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1)) (= (ControlFlow 0 1634507) 1634501)))) inline$$Lt$5$anon0_correct))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Else_correct  (=> (and (and (not inline$$Lt$4$dst@1) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0) (= (ControlFlow 0 1634407) 1634413))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0 7)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0) (= inline$$Lt$4$dst@1 inline$$Lt$4$dst@1))) (and (=> (= (ControlFlow 0 1634391) 1634507) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Then_correct) (=> (= (ControlFlow 0 1634391) 1634407) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Else_correct))))))
(let ((inline$$Lt$4$anon0_correct  (=> (and (= inline$$Lt$4$dst@1 (< 0 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t5@1)) (= (ControlFlow 0 1634355) 1634391)) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0$1_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0_correct  (=> (and (and (= inline$$1_CRSN_shift_window_right$0$$t2@1 inline$$1_CRSN_shift_window_right$0$$t2@1) (= 0 0)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t5@1 (|$length#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1)) (= (ControlFlow 0 1634361) 1634355))) inline$$Lt$4$anon0_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$anon0_correct  (=> (= (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@0)) 0) (=> (and (= (|l#Vec_33444| (|p#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@0)) 0) (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@1| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3))) (=> (and (and (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@1| |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@1|) (= inline$$1_CRSN_shift_window_right$0$$t2@1 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 1635591) 1634361))) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0_correct)))))
(let ((inline$$1_CRSN_record$0$anon34_Else_correct  (=> (not $abort_flag@24) (=> (and (= inline$$1_CRSN_record$0$$t11@3 ($Mutation_577037 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2) (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2) ($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)) (|$size#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)) (|v#$Mutation_572160| inline$$1_BitVector_set$0$$ret0@1)))) (= (ControlFlow 0 1642471) 1635591)) inline$$1_CRSN_shift_window_right$0$anon0_correct))))
(let ((inline$$1_BitVector_set$0$anon10_Else_correct  (=> (not $abort_flag@23) (=> (and (= |inline$$1_BitVector_set$0$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$0$dst@2|)) (= |inline$$1_BitVector_set$0$$temp_0'bool'@1| |inline$$1_BitVector_set$0$$temp_0'bool'@1|)) (=> (and (and (and (= inline$$1_BitVector_set$0$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$0$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$0$dst@2|) true)) (= inline$$1_BitVector_set$0$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$0$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_set$0$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|)))))) (and (= inline$$1_BitVector_set$0$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1) (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)) (|v#$Mutation_456873| inline$$1_BitVector_set$0$$t11@2)))) (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_set$0$$t0@1)))) (and (and (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2|) (= inline$$1_BitVector_set$0$$ret0@1 inline$$1_BitVector_set$0$$t0@1)) (and (= $abort_code@24 $abort_code@23) (= $abort_flag@24 $abort_flag@23)))) (and (=> (= (ControlFlow 0 1633393) 1642535) inline$$1_CRSN_record$0$anon34_Then_correct) (=> (= (ControlFlow 0 1633393) 1642471) inline$$1_CRSN_record$0$anon34_Else_correct)))))))
(let ((inline$$1_BitVector_set$0$L3_correct  (=> (= inline$$1_BitVector_set$0$$ret0@1 inline$$1_BitVector_set$0$$ret0@0) (=> (and (= $abort_code@24 inline$$1_BitVector_set$0$$t7@1) (= $abort_flag@24 true)) (and (=> (= (ControlFlow 0 1633101) 1642535) inline$$1_CRSN_record$0$anon34_Then_correct) (=> (= (ControlFlow 0 1633101) 1642471) inline$$1_CRSN_record$0$anon34_Else_correct))))))
(let ((inline$$1_BitVector_set$0$anon10_Then_correct  (=> (and (and $abort_flag@23 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_BitVector_set$0$$t7@1 $abort_code@23) (= (ControlFlow 0 1633407) 1633101))) inline$$1_BitVector_set$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@23 true) (= $abort_code@23 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'bool'$0$dst@2| |inline$$1_Vector_borrow_mut'bool'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$0$m'@1| |inline$$1_Vector_borrow_mut'bool'$0$m'@0|))) (and (=> (= (ControlFlow 0 1633299) 1633407) inline$$1_BitVector_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1633299) 1633393) inline$$1_BitVector_set$0$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$0$v@1| inline$$Sub$2$dst@2)) (= (ControlFlow 0 1633297) 1633299)) |inline$$1_Vector_borrow_mut'bool'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$0$v@1| inline$$Sub$2$dst@2) (= |inline$$1_Vector_borrow_mut'bool'$0$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1) (let ((l@@12 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1)) l@@12 inline$$Sub$2$dst@2) (+ l@@12 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$0$v@1|) inline$$Sub$2$dst@2)))) (=> (and (and (= $abort_flag@23 $abort_flag@22) (= $abort_code@23 $abort_code@22)) (and (= |inline$$1_Vector_borrow_mut'bool'$0$dst@2| |inline$$1_Vector_borrow_mut'bool'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$0$m'@1| inline$$1_BitVector_set$0$$t11@1))) (and (=> (= (ControlFlow 0 1633247) 1633407) inline$$1_BitVector_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1633247) 1633393) inline$$1_BitVector_set$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$0$v@1| (|v#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1)) (and (=> (= (ControlFlow 0 1633217) 1633297) |inline$$1_Vector_borrow_mut'bool'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 1633217) 1633247) |inline$$1_Vector_borrow_mut'bool'$0$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_set$0$anon9_Then_correct  (=> inline$$Lt$3$dst@1 (=> (and (= inline$$1_BitVector_set$0$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1) (let ((l@@13 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)) l@@13 1) (+ l@@13 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)))) (= (ControlFlow 0 1633307) 1633217)) |inline$$1_Vector_borrow_mut'bool'$0$anon0_correct|))))
(let ((inline$$1_BitVector_set$0$anon9_Else_correct  (=> (and (and (not inline$$Lt$3$dst@1) (= inline$$1_BitVector_set$0$$t10@0 inline$$1_BitVector_set$0$$t10@0)) (and (= inline$$1_BitVector_set$0$$t7@1 inline$$1_BitVector_set$0$$t10@0) (= (ControlFlow 0 1633095) 1633101))) inline$$1_BitVector_set$0$L3_correct)))
(let ((inline$$1_BitVector_set$0$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_set$0$$t10@0) (= inline$$1_BitVector_set$0$$t10@0 7)) (and (= inline$$1_BitVector_set$0$$t10@0 inline$$1_BitVector_set$0$$t10@0) (= inline$$Lt$3$dst@1 inline$$Lt$3$dst@1))) (and (=> (= (ControlFlow 0 1633079) 1633307) inline$$1_BitVector_set$0$anon9_Then_correct) (=> (= (ControlFlow 0 1633079) 1633095) inline$$1_BitVector_set$0$anon9_Else_correct))))))
(let ((inline$$Lt$3$anon0_correct  (=> (and (= inline$$Lt$3$dst@1 (< inline$$Sub$2$dst@2 |inline$$1_Vector_length'bool'$2$l@1|)) (= (ControlFlow 0 1633043) 1633079)) inline$$1_BitVector_set$0$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_set$0$anon8_Else_correct  (=> (and (not $abort_flag@22) (= (ControlFlow 0 1633049) 1633043)) inline$$Lt$3$anon0_correct)))
(let ((inline$$1_BitVector_set$0$anon8_Then_correct  (=> (and (and $abort_flag@22 (= $abort_code@22 $abort_code@22)) (and (= inline$$1_BitVector_set$0$$t7@1 $abort_code@22) (= (ControlFlow 0 1633421) 1633101))) inline$$1_BitVector_set$0$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$2$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$2$l@1| (|l#Vec_92615| inline$$1_BitVector_set$0$$t5@1)) (and (=> (= (ControlFlow 0 1632989) 1633421) inline$$1_BitVector_set$0$anon8_Then_correct) (=> (= (ControlFlow 0 1632989) 1633049) inline$$1_BitVector_set$0$anon8_Else_correct)))))
(let ((inline$$1_BitVector_set$0$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$0$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$0$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$0$$t12@0)) 0) (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)))) (and (and (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@2)) (and (= inline$$1_BitVector_set$0$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1))) (= (ControlFlow 0 1632995) 1632989)))) |inline$$1_Vector_length'bool'$2$anon0_correct|)))
(let ((inline$$1_CRSN_record$0$anon33_Else_correct  (=> (and (and (not $abort_flag@22) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@2)) (and (= inline$$1_CRSN_record$0$$t14@1 ($Mutation_572160 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2) (let ((l@@14 (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)) l@@14 2) (+ l@@14 1))) (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)))) (= (ControlFlow 0 1633427) 1632995))) inline$$1_BitVector_set$0$anon0_correct)))
(let ((inline$$Sub$2$anon3_Then$1_correct  (=> (= $abort_code@22 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@22 true) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@0)) (and (=> (= (ControlFlow 0 1632490) 1642549) inline$$1_CRSN_record$0$anon33_Then_correct) (=> (= (ControlFlow 0 1632490) 1633427) inline$$1_CRSN_record$0$anon33_Else_correct))))))
(let ((inline$$Sub$2$anon3_Then_correct  (=> (and (< _$t1 inline$$1_CRSN_record$0$$t12@1) (= (ControlFlow 0 1632488) 1632490)) inline$$Sub$2$anon3_Then$1_correct)))
(let ((inline$$Sub$2$anon3_Else_correct  (=> (<= inline$$1_CRSN_record$0$$t12@1 _$t1) (=> (and (and (= inline$$Sub$2$dst@1 (- _$t1 inline$$1_CRSN_record$0$$t12@1)) (= $abort_code@22 $abort_code@21)) (and (= $abort_flag@22 $abort_flag@21) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@1))) (and (=> (= (ControlFlow 0 1632440) 1642549) inline$$1_CRSN_record$0$anon33_Then_correct) (=> (= (ControlFlow 0 1632440) 1633427) inline$$1_CRSN_record$0$anon33_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon32_Else_correct  (=> (and (and (not $abort_flag@21) (= |inline$$1_CRSN_record$0$$temp_0'$1_CRSN_CRSN'@1| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2))) (and (= |inline$$1_CRSN_record$0$$temp_0'$1_CRSN_CRSN'@1| |inline$$1_CRSN_record$0$$temp_0'$1_CRSN_CRSN'@1|) (= inline$$1_CRSN_record$0$$t12@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2))))) (and (=> (= (ControlFlow 0 1632496) 1632488) inline$$Sub$2$anon3_Then_correct) (=> (= (ControlFlow 0 1632496) 1632440) inline$$Sub$2$anon3_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon31_Then$1_correct  (=> (= inline$$1_CRSN_record$0$$t11@2 inline$$1_CRSN_record$0$$t11@0) (=> (and (= $abort_flag@21 true) (= $abort_code@21 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1642615) 1642563) inline$$1_CRSN_record$0$anon32_Then_correct) (=> (= (ControlFlow 0 1642615) 1632496) inline$$1_CRSN_record$0$anon32_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon31_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0)) (= (ControlFlow 0 1642613) 1642615)) inline$$1_CRSN_record$0$anon31_Then$1_correct)))
(let ((inline$$1_CRSN_record$0$anon31_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0) (=> (and (and (= inline$$1_CRSN_record$0$$t11@1 ($Mutation_577037 ($Global inline$$1_CRSN_record$0$$t6@0) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0))) (= inline$$1_CRSN_record$0$$t11@2 inline$$1_CRSN_record$0$$t11@1)) (and (= $abort_flag@21 $abort_flag@18) (= $abort_code@21 $abort_code@18))) (and (=> (= (ControlFlow 0 1632333) 1642563) inline$$1_CRSN_record$0$anon32_Then_correct) (=> (= (ControlFlow 0 1632333) 1632496) inline$$1_CRSN_record$0$anon32_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon30_Then_correct  (=> inline$$1_CRSN_check$0$$ret0@1 (and (=> (= (ControlFlow 0 1632311) 1642613) inline$$1_CRSN_record$0$anon31_Then_correct) (=> (= (ControlFlow 0 1632311) 1632333) inline$$1_CRSN_record$0$anon31_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon39_Then_correct  (=> (and inline$$Gt$1$dst@1 (= true true)) (=> (and (and (= inline$$1_CRSN_record$0$$t16@1 true) (= $abort_code@52 $abort_code@19)) (and (= $abort_flag@52 $abort_flag@19) (= (ControlFlow 0 1632235) 1632125))) inline$$1_CRSN_record$0$L8_correct))))
(let ((inline$$1_CRSN_record$0$L5_correct  (=> (= false false) (=> (and (and (= inline$$1_CRSN_record$0$$t16@1 false) (= $abort_code@52 $abort_code@20)) (and (= $abort_flag@52 $abort_flag@20) (= (ControlFlow 0 1632121) 1632125))) inline$$1_CRSN_record$0$L8_correct))))
(let ((inline$$1_CRSN_record$0$anon39_Else_correct  (=> (and (and (not inline$$Gt$1$dst@1) (= $abort_code@20 $abort_code@19)) (and (= $abort_flag@20 $abort_flag@19) (= (ControlFlow 0 1632217) 1632121))) inline$$1_CRSN_record$0$L5_correct)))
(let ((inline$$Gt$1$anon0_correct  (=> (= inline$$Gt$1$dst@1 (> inline$$1_CRSN_record$0$$t19@1 _$t1)) (and (=> (= (ControlFlow 0 1632203) 1632235) inline$$1_CRSN_record$0$anon39_Then_correct) (=> (= (ControlFlow 0 1632203) 1632217) inline$$1_CRSN_record$0$anon39_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon38_Else_correct  (=> (and (and (not $abort_flag@19) (= inline$$1_CRSN_record$0$$t18@2 inline$$1_CRSN_record$0$$t18@2)) (and (= inline$$1_CRSN_record$0$$t19@1 (|$min_nonce#$1_CRSN_CRSN| inline$$1_CRSN_record$0$$t18@2)) (= (ControlFlow 0 1632209) 1632203))) inline$$Gt$1$anon0_correct)))
(let ((inline$$1_CRSN_record$0$anon37_Then$1_correct  (=> (= inline$$1_CRSN_record$0$$t18@2 inline$$1_CRSN_record$0$$t18@0) (=> (and (= $abort_flag@19 true) (= $abort_code@19 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1632307) 1632249) inline$$1_CRSN_record$0$anon38_Then_correct) (=> (= (ControlFlow 0 1632307) 1632209) inline$$1_CRSN_record$0$anon38_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0)) (= (ControlFlow 0 1632305) 1632307)) inline$$1_CRSN_record$0$anon37_Then$1_correct)))
(let ((inline$$1_CRSN_record$0$anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0) (=> (and (and (= inline$$1_CRSN_record$0$$t18@1 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0)) (= inline$$1_CRSN_record$0$$t18@2 inline$$1_CRSN_record$0$$t18@1)) (and (= $abort_flag@19 $abort_flag@18) (= $abort_code@19 $abort_code@18))) (and (=> (= (ControlFlow 0 1632143) 1632249) inline$$1_CRSN_record$0$anon38_Then_correct) (=> (= (ControlFlow 0 1632143) 1632209) inline$$1_CRSN_record$0$anon38_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon36_Then_correct  (=> inline$$1_CRSN_record$0$$t17@1 (and (=> (= (ControlFlow 0 1632129) 1632305) inline$$1_CRSN_record$0$anon37_Then_correct) (=> (= (ControlFlow 0 1632129) 1632143) inline$$1_CRSN_record$0$anon37_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon36_Else_correct  (=> (and (and (not inline$$1_CRSN_record$0$$t17@1) (= $abort_code@20 $abort_code@18)) (and (= $abort_flag@20 $abort_flag@18) (= (ControlFlow 0 1632103) 1632121))) inline$$1_CRSN_record$0$L5_correct)))
(let ((inline$$1_CRSN_record$0$anon30_Else_correct  (=> (and (not inline$$1_CRSN_check$0$$ret0@1) (= inline$$1_CRSN_record$0$$t17@1 (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0))) (and (=> (= (ControlFlow 0 1632097) 1632129) inline$$1_CRSN_record$0$anon36_Then_correct) (=> (= (ControlFlow 0 1632097) 1632103) inline$$1_CRSN_record$0$anon36_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon29_Else_correct  (=> (not $abort_flag@18) (and (=> (= (ControlFlow 0 1632085) 1632311) inline$$1_CRSN_record$0$anon30_Then_correct) (=> (= (ControlFlow 0 1632085) 1632097) inline$$1_CRSN_record$0$anon30_Else_correct)))))
(let ((inline$$1_CRSN_check$0$L9_correct  (=> (and (and (= inline$$1_CRSN_check$0$$t5@1 inline$$1_CRSN_check$0$$t5@1) (= $abort_code@18 $abort_code@17)) (and (= $abort_flag@18 $abort_flag@17) (= inline$$1_CRSN_check$0$$ret0@1 inline$$1_CRSN_check$0$$t5@1))) (and (=> (= (ControlFlow 0 1631853) 1642629) inline$$1_CRSN_record$0$anon29_Then_correct) (=> (= (ControlFlow 0 1631853) 1632085) inline$$1_CRSN_record$0$anon29_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon43_Else$1_correct  (=> (= inline$$Not$0$dst@1 inline$$Not$0$dst@1) (=> (and (and (= inline$$1_CRSN_check$0$$t5@1 inline$$Not$0$dst@1) (= $abort_flag@17 $abort_flag@16)) (and (= $abort_code@17 $abort_code@16) (= (ControlFlow 0 1631841) 1631853))) inline$$1_CRSN_check$0$L9_correct))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_BitVector_is_index_set$0$$ret0@1)) (= (ControlFlow 0 1631823) 1631841)) inline$$1_CRSN_check$0$anon43_Else$1_correct)))
(let ((inline$$1_CRSN_check$0$anon43_Else_correct  (=> (and (not $abort_flag@16) (= (ControlFlow 0 1631829) 1631823)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_CRSN_check$0$anon41_Then_correct  (=> (and inline$$1_CRSN_check$0$$t4@1 (= false false)) (=> (and (and (= inline$$1_CRSN_check$0$$t5@1 false) (= $abort_flag@17 $abort_flag@13)) (and (= $abort_code@17 $abort_code@13) (= (ControlFlow 0 1631903) 1631853))) inline$$1_CRSN_check$0$L9_correct))))
(let ((inline$$1_CRSN_check$0$L11_correct  (=> (= $abort_code@18 inline$$1_CRSN_check$0$$t13@1) (=> (and (= $abort_flag@18 true) (= inline$$1_CRSN_check$0$$ret0@1 inline$$1_CRSN_check$0$$ret0@0)) (and (=> (= (ControlFlow 0 1630006) 1642629) inline$$1_CRSN_record$0$anon29_Then_correct) (=> (= (ControlFlow 0 1630006) 1632085) inline$$1_CRSN_record$0$anon29_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon43_Then_correct  (=> (and (and $abort_flag@16 (= $abort_code@16 $abort_code@16)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@16) (= (ControlFlow 0 1631867) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon10_Else_correct  (=> (not $abort_flag@15) (=> (and (and (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@2|) (= $abort_flag@16 $abort_flag@15)) (and (= inline$$1_BitVector_is_index_set$0$$ret0@1 |inline$$1_Vector_borrow'bool'$0$dst@2|) (= $abort_code@16 $abort_code@15))) (and (=> (= (ControlFlow 0 1631751) 1631867) inline$$1_CRSN_check$0$anon43_Then_correct) (=> (= (ControlFlow 0 1631751) 1631829) inline$$1_CRSN_check$0$anon43_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$L3_correct  (=> (= $abort_flag@16 true) (=> (and (= inline$$1_BitVector_is_index_set$0$$ret0@1 inline$$1_BitVector_is_index_set$0$$ret0@0) (= $abort_code@16 inline$$1_BitVector_is_index_set$0$$t6@1)) (and (=> (= (ControlFlow 0 1631584) 1631867) inline$$1_CRSN_check$0$anon43_Then_correct) (=> (= (ControlFlow 0 1631584) 1631829) inline$$1_CRSN_check$0$anon43_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$anon10_Then_correct  (=> (and (and $abort_flag@15 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 $abort_code@15) (= (ControlFlow 0 1631765) 1631584))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Then$1_correct|  (=> (= $abort_code@15 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@15 true) (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@0|)) (and (=> (= (ControlFlow 0 1631727) 1631765) inline$$1_BitVector_is_index_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1631727) 1631751) inline$$1_BitVector_is_index_set$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 inline$$1_BitVector_is_index_set$0$$t10@1 inline$$Sub$1$dst@2)) (= (ControlFlow 0 1631725) 1631727)) |inline$$1_Vector_borrow'bool'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Else_correct|  (=> (InRangeVec_16728 inline$$1_BitVector_is_index_set$0$$t10@1 inline$$Sub$1$dst@2) (=> (and (and (= |inline$$1_Vector_borrow'bool'$0$dst@1| (|Select__T@[Int]Bool_| (|v#Vec_92615| inline$$1_BitVector_is_index_set$0$$t10@1) inline$$Sub$1$dst@2)) (= $abort_code@15 $abort_code@14)) (and (= $abort_flag@15 $abort_flag@14) (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@1|))) (and (=> (= (ControlFlow 0 1631675) 1631765) inline$$1_BitVector_is_index_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1631675) 1631751) inline$$1_BitVector_is_index_set$0$anon10_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$anon9_Then_correct  (=> (and inline$$Lt$2$dst@1 (= inline$$1_BitVector_is_index_set$0$$t10@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_check$0$$t31@1))) (and (=> (= (ControlFlow 0 1631733) 1631725) |inline$$1_Vector_borrow'bool'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 1631733) 1631675) |inline$$1_Vector_borrow'bool'$0$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_is_index_set$0$anon9_Else_correct  (=> (and (and (not inline$$Lt$2$dst@1) (= inline$$1_BitVector_is_index_set$0$$t9@0 inline$$1_BitVector_is_index_set$0$$t9@0)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 inline$$1_BitVector_is_index_set$0$$t9@0) (= (ControlFlow 0 1631578) 1631584))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_is_index_set$0$$t9@0) (= inline$$1_BitVector_is_index_set$0$$t9@0 7)) (and (= inline$$1_BitVector_is_index_set$0$$t9@0 inline$$1_BitVector_is_index_set$0$$t9@0) (= inline$$Lt$2$dst@1 inline$$Lt$2$dst@1))) (and (=> (= (ControlFlow 0 1631562) 1631733) inline$$1_BitVector_is_index_set$0$anon9_Then_correct) (=> (= (ControlFlow 0 1631562) 1631578) inline$$1_BitVector_is_index_set$0$anon9_Else_correct))))))
(let ((inline$$Lt$2$anon0_correct  (=> (and (= inline$$Lt$2$dst@1 (< inline$$Sub$1$dst@2 |inline$$1_Vector_length'bool'$1$l@1|)) (= (ControlFlow 0 1631526) 1631562)) inline$$1_BitVector_is_index_set$0$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Else_correct  (=> (and (not $abort_flag@14) (= (ControlFlow 0 1631532) 1631526)) inline$$Lt$2$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Then_correct  (=> (and (and $abort_flag@14 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 $abort_code@14) (= (ControlFlow 0 1631779) 1631584))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$1$l@1| (|l#Vec_92615| inline$$1_BitVector_is_index_set$0$$t4@1)) (and (=> (= (ControlFlow 0 1631472) 1631779) inline$$1_BitVector_is_index_set$0$anon8_Then_correct) (=> (= (ControlFlow 0 1631472) 1631532) inline$$1_BitVector_is_index_set$0$anon8_Else_correct)))))
(let ((inline$$1_BitVector_is_index_set$0$anon0_correct  (=> (and (and (= inline$$1_CRSN_check$0$$t31@1 inline$$1_CRSN_check$0$$t31@1) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@2)) (and (= inline$$1_BitVector_is_index_set$0$$t4@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_check$0$$t31@1)) (= (ControlFlow 0 1631478) 1631472))) |inline$$1_Vector_length'bool'$1$anon0_correct|)))
(let ((inline$$1_CRSN_check$0$anon42_Else_correct  (=> (and (and (not $abort_flag@14) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@2)) (and (= inline$$1_CRSN_check$0$$t31@1 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2))) (= (ControlFlow 0 1631785) 1631478))) inline$$1_BitVector_is_index_set$0$anon0_correct)))
(let ((inline$$1_CRSN_check$0$anon42_Then_correct  (=> (and (and $abort_flag@14 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@14) (= (ControlFlow 0 1631881) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$Sub$1$anon3_Then$1_correct  (=> (= $abort_flag@14 true) (=> (and (= $abort_code@14 $EXEC_FAILURE_CODE) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@0)) (and (=> (= (ControlFlow 0 1631119) 1631881) inline$$1_CRSN_check$0$anon42_Then_correct) (=> (= (ControlFlow 0 1631119) 1631785) inline$$1_CRSN_check$0$anon42_Else_correct))))))
(let ((inline$$Sub$1$anon3_Then_correct  (=> (and (< _$t1 inline$$1_CRSN_check$0$$t29@1) (= (ControlFlow 0 1631117) 1631119)) inline$$Sub$1$anon3_Then$1_correct)))
(let ((inline$$Sub$1$anon3_Else_correct  (=> (<= inline$$1_CRSN_check$0$$t29@1 _$t1) (=> (and (and (= inline$$Sub$1$dst@1 (- _$t1 inline$$1_CRSN_check$0$$t29@1)) (= $abort_flag@14 $abort_flag@13)) (and (= $abort_code@14 $abort_code@13) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@1))) (and (=> (= (ControlFlow 0 1631069) 1631881) inline$$1_CRSN_check$0$anon42_Then_correct) (=> (= (ControlFlow 0 1631069) 1631785) inline$$1_CRSN_check$0$anon42_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon41_Else_correct  (=> (and (not inline$$1_CRSN_check$0$$t4@1) (= inline$$1_CRSN_check$0$$t29@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2)))) (and (=> (= (ControlFlow 0 1631125) 1631117) inline$$Sub$1$anon3_Then_correct) (=> (= (ControlFlow 0 1631125) 1631069) inline$$Sub$1$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon40_Else$1_correct  (=> (and (and (= inline$$Ge$1$dst@1 inline$$Ge$1$dst@1) (= $abort_code@13 $abort_code@12)) (and (= inline$$1_CRSN_check$0$$t4@1 inline$$Ge$1$dst@1) (= $abort_flag@13 $abort_flag@12))) (and (=> (= (ControlFlow 0 1630974) 1631903) inline$$1_CRSN_check$0$anon41_Then_correct) (=> (= (ControlFlow 0 1630974) 1631125) inline$$1_CRSN_check$0$anon41_Else_correct)))))
(let ((inline$$Ge$1$anon0_correct  (=> (and (= inline$$Ge$1$dst@1 (>= inline$$CastU128$2$dst@1 inline$$AddU128$0$dst@2)) (= (ControlFlow 0 1630956) 1630974)) inline$$1_CRSN_check$0$anon40_Else$1_correct)))
(let ((inline$$1_CRSN_check$0$anon40_Else_correct  (=> (and (not $abort_flag@12) (= (ControlFlow 0 1630962) 1630956)) inline$$Ge$1$anon0_correct)))
(let ((inline$$1_CRSN_check$0$anon35_Then_correct  (=> inline$$Lt$1$dst@1 (=> (and (and (= true true) (= $abort_code@13 $abort_code@8)) (and (= inline$$1_CRSN_check$0$$t4@1 true) (= $abort_flag@13 $abort_flag@7))) (and (=> (= (ControlFlow 0 1631991) 1631903) inline$$1_CRSN_check$0$anon41_Then_correct) (=> (= (ControlFlow 0 1631991) 1631125) inline$$1_CRSN_check$0$anon41_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon40_Then_correct  (=> (and (and $abort_flag@12 (= $abort_code@12 $abort_code@12)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@12) (= (ControlFlow 0 1631917) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$AddU128$0$anon3_Then$1_correct  (=> (= $abort_flag@12 true) (=> (and (= $abort_code@12 $EXEC_FAILURE_CODE) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@0)) (and (=> (= (ControlFlow 0 1630902) 1631917) inline$$1_CRSN_check$0$anon40_Then_correct) (=> (= (ControlFlow 0 1630902) 1630962) inline$$1_CRSN_check$0$anon40_Else_correct))))))
(let ((inline$$AddU128$0$anon3_Then_correct  (=> (and (> (+ inline$$CastU128$3$dst@1 inline$$CastU128$4$dst@1) $MAX_U128) (= (ControlFlow 0 1630900) 1630902)) inline$$AddU128$0$anon3_Then$1_correct)))
(let ((inline$$AddU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (+ inline$$CastU128$3$dst@1 inline$$CastU128$4$dst@1)) (=> (and (and (= inline$$AddU128$0$dst@1 (+ inline$$CastU128$3$dst@1 inline$$CastU128$4$dst@1)) (= $abort_flag@12 $abort_flag@11)) (and (= $abort_code@12 $abort_code@11) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@1))) (and (=> (= (ControlFlow 0 1630848) 1631917) inline$$1_CRSN_check$0$anon40_Then_correct) (=> (= (ControlFlow 0 1630848) 1630962) inline$$1_CRSN_check$0$anon40_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon39_Else_correct  (=> (not $abort_flag@11) (and (=> (= (ControlFlow 0 1630908) 1630900) inline$$AddU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 1630908) 1630848) inline$$AddU128$0$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon39_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@11) (= (ControlFlow 0 1631931) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$CastU128$4$anon3_Then$1_correct  (=> (= $abort_code@11 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@11 true) (= inline$$CastU128$4$dst@1 inline$$CastU128$4$dst@0)) (and (=> (= (ControlFlow 0 1630741) 1631931) inline$$1_CRSN_check$0$anon39_Then_correct) (=> (= (ControlFlow 0 1630741) 1630908) inline$$1_CRSN_check$0$anon39_Else_correct))))))
(let ((inline$$CastU128$4$anon3_Then_correct  (=> (and (> inline$$1_BitVector_length$0$$ret0@1 $MAX_U128) (= (ControlFlow 0 1630739) 1630741)) inline$$CastU128$4$anon3_Then$1_correct)))
(let ((inline$$CastU128$4$anon3_Else_correct  (=> (and (and (>= $MAX_U128 inline$$1_BitVector_length$0$$ret0@1) (= $abort_code@11 $abort_code@10)) (and (= $abort_flag@11 $abort_flag@10) (= inline$$CastU128$4$dst@1 inline$$1_BitVector_length$0$$ret0@1))) (and (=> (= (ControlFlow 0 1630691) 1631931) inline$$1_CRSN_check$0$anon39_Then_correct) (=> (= (ControlFlow 0 1630691) 1630908) inline$$1_CRSN_check$0$anon39_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon38_Else_correct  (=> (not $abort_flag@10) (and (=> (= (ControlFlow 0 1630747) 1630739) inline$$CastU128$4$anon3_Then_correct) (=> (= (ControlFlow 0 1630747) 1630691) inline$$CastU128$4$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon38_Then_correct  (=> (and (and $abort_flag@10 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@10) (= (ControlFlow 0 1631945) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_BitVector_length$0$anon3_Else_correct  (=> (and (and (not $abort_flag@9) (= |inline$$1_Vector_length'bool'$0$l@1| |inline$$1_Vector_length'bool'$0$l@1|)) (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_BitVector_length$0$$ret0@1 |inline$$1_Vector_length'bool'$0$l@1|))) (and (=> (= (ControlFlow 0 1630590) 1631945) inline$$1_CRSN_check$0$anon38_Then_correct) (=> (= (ControlFlow 0 1630590) 1630747) inline$$1_CRSN_check$0$anon38_Else_correct)))))
(let ((inline$$1_BitVector_length$0$anon3_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@10 $abort_code@10)) (and (= $abort_flag@10 true) (= inline$$1_BitVector_length$0$$ret0@1 inline$$1_BitVector_length$0$$ret0@0))) (and (=> (= (ControlFlow 0 1630608) 1631945) inline$$1_CRSN_check$0$anon38_Then_correct) (=> (= (ControlFlow 0 1630608) 1630747) inline$$1_CRSN_check$0$anon38_Else_correct)))))
(let ((|inline$$1_Vector_length'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$0$l@1| (|l#Vec_92615| inline$$1_BitVector_length$0$$t1@1)) (and (=> (= (ControlFlow 0 1630566) 1630608) inline$$1_BitVector_length$0$anon3_Then_correct) (=> (= (ControlFlow 0 1630566) 1630590) inline$$1_BitVector_length$0$anon3_Else_correct)))))
(let ((inline$$1_BitVector_length$0$anon0_correct  (=> (= inline$$1_CRSN_check$0$$t23@1 inline$$1_CRSN_check$0$$t23@1) (=> (and (= inline$$1_BitVector_length$0$$t1@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_check$0$$t23@1)) (= (ControlFlow 0 1630572) 1630566)) |inline$$1_Vector_length'bool'$0$anon0_correct|))))
(let ((inline$$1_CRSN_check$0$anon37_Else_correct  (=> (not $abort_flag@9) (=> (and (= inline$$1_CRSN_check$0$$t23@1 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2))) (= (ControlFlow 0 1630614) 1630572)) inline$$1_BitVector_length$0$anon0_correct))))
(let ((inline$$1_CRSN_check$0$anon37_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@10) (= (ControlFlow 0 1631959) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$CastU128$3$anon3_Then$1_correct  (=> (= $abort_flag@9 true) (=> (and (= $abort_code@10 $EXEC_FAILURE_CODE) (= inline$$CastU128$3$dst@1 inline$$CastU128$3$dst@0)) (and (=> (= (ControlFlow 0 1630370) 1631959) inline$$1_CRSN_check$0$anon37_Then_correct) (=> (= (ControlFlow 0 1630370) 1630614) inline$$1_CRSN_check$0$anon37_Else_correct))))))
(let ((inline$$CastU128$3$anon3_Then_correct  (=> (and (> inline$$1_CRSN_check$0$$t21@1 $MAX_U128) (= (ControlFlow 0 1630368) 1630370)) inline$$CastU128$3$anon3_Then$1_correct)))
(let ((inline$$CastU128$3$anon3_Else_correct  (=> (and (and (>= $MAX_U128 inline$$1_CRSN_check$0$$t21@1) (= $abort_flag@9 $abort_flag@8)) (and (= $abort_code@10 $abort_code@9) (= inline$$CastU128$3$dst@1 inline$$1_CRSN_check$0$$t21@1))) (and (=> (= (ControlFlow 0 1630320) 1631959) inline$$1_CRSN_check$0$anon37_Then_correct) (=> (= (ControlFlow 0 1630320) 1630614) inline$$1_CRSN_check$0$anon37_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon36_Else_correct  (=> (and (not $abort_flag@8) (= inline$$1_CRSN_check$0$$t21@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2)))) (and (=> (= (ControlFlow 0 1630376) 1630368) inline$$CastU128$3$anon3_Then_correct) (=> (= (ControlFlow 0 1630376) 1630320) inline$$CastU128$3$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon36_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@9 $abort_code@9)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@9) (= (ControlFlow 0 1631973) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$CastU128$2$anon3_Then$1_correct  (=> (= $abort_code@9 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@8 true) (= inline$$CastU128$2$dst@1 inline$$CastU128$2$dst@0)) (and (=> (= (ControlFlow 0 1630231) 1631973) inline$$1_CRSN_check$0$anon36_Then_correct) (=> (= (ControlFlow 0 1630231) 1630376) inline$$1_CRSN_check$0$anon36_Else_correct))))))
(let ((inline$$CastU128$2$anon3_Then_correct  (=> (and (> _$t1 $MAX_U128) (= (ControlFlow 0 1630229) 1630231)) inline$$CastU128$2$anon3_Then$1_correct)))
(let ((inline$$CastU128$2$anon3_Else_correct  (=> (and (and (>= $MAX_U128 _$t1) (= $abort_code@9 $abort_code@8)) (and (= $abort_flag@8 $abort_flag@7) (= inline$$CastU128$2$dst@1 _$t1))) (and (=> (= (ControlFlow 0 1630181) 1631973) inline$$1_CRSN_check$0$anon36_Then_correct) (=> (= (ControlFlow 0 1630181) 1630376) inline$$1_CRSN_check$0$anon36_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon35_Else_correct  (=> (not inline$$Lt$1$dst@1) (and (=> (= (ControlFlow 0 1630237) 1630229) inline$$CastU128$2$anon3_Then_correct) (=> (= (ControlFlow 0 1630237) 1630181) inline$$CastU128$2$anon3_Else_correct)))))
(let ((inline$$Lt$1$anon0_correct  (=> (= inline$$Lt$1$dst@1 (< _$t1 inline$$1_CRSN_check$0$$t17@1)) (and (=> (= (ControlFlow 0 1630098) 1631991) inline$$1_CRSN_check$0$anon35_Then_correct) (=> (= (ControlFlow 0 1630098) 1630237) inline$$1_CRSN_check$0$anon35_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon34_Else_correct  (=> (not $abort_flag@7) (=> (and (and (= |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2)) (= |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1| |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1|)) (and (= inline$$1_CRSN_check$0$$t17@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2))) (= (ControlFlow 0 1630104) 1630098))) inline$$Lt$1$anon0_correct))))
(let ((inline$$1_CRSN_check$0$anon34_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@8) (= (ControlFlow 0 1632005) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_CRSN_check$0$anon33_Then$1_correct  (=> (= $abort_flag@7 true) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= inline$$1_CRSN_check$0$$t16@2 inline$$1_CRSN_check$0$$t16@0)) (and (=> (= (ControlFlow 0 1632057) 1632005) inline$$1_CRSN_check$0$anon34_Then_correct) (=> (= (ControlFlow 0 1632057) 1630104) inline$$1_CRSN_check$0$anon34_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon33_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0)) (= (ControlFlow 0 1632055) 1632057)) inline$$1_CRSN_check$0$anon33_Then$1_correct)))
(let ((inline$$1_CRSN_check$0$anon33_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0) (=> (and (and (= inline$$1_CRSN_check$0$$t16@1 ($Mutation_577037 ($Global inline$$1_CRSN_check$0$$t11@0) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0))) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@8 $abort_code@7) (= inline$$1_CRSN_check$0$$t16@2 inline$$1_CRSN_check$0$$t16@1))) (and (=> (= (ControlFlow 0 1630032) 1632005) inline$$1_CRSN_check$0$anon34_Then_correct) (=> (= (ControlFlow 0 1630032) 1630104) inline$$1_CRSN_check$0$anon34_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon32_Then_correct  (=> inline$$1_CRSN_has_crsn$1$$t1@1 (and (=> (= (ControlFlow 0 1630010) 1632055) inline$$1_CRSN_check$0$anon33_Then_correct) (=> (= (ControlFlow 0 1630010) 1630032) inline$$1_CRSN_check$0$anon33_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon32_Else_correct  (=> (and (and (not inline$$1_CRSN_has_crsn$1$$t1@1) (= inline$$1_CRSN_check$0$$t15@0 inline$$1_CRSN_check$0$$t15@0)) (and (= inline$$1_CRSN_check$0$$t13@1 inline$$1_CRSN_check$0$$t15@0) (= (ControlFlow 0 1630000) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_CRSN_check$0$anon31_Else_correct  (=> (and (not $abort_flag@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_CRSN_check$0$$t15@0) (= inline$$1_CRSN_check$0$$t15@0 1)) (and (= inline$$1_CRSN_check$0$$t15@0 inline$$1_CRSN_check$0$$t15@0) (= inline$$1_CRSN_has_crsn$1$$t1@1 inline$$1_CRSN_has_crsn$1$$t1@1))) (and (=> (= (ControlFlow 0 1629984) 1630010) inline$$1_CRSN_check$0$anon32_Then_correct) (=> (= (ControlFlow 0 1629984) 1630000) inline$$1_CRSN_check$0$anon32_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon31_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@7) (= (ControlFlow 0 1632071) 1630006))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_CRSN_has_crsn$1$anon0_correct  (=> (= inline$$1_CRSN_check$0$$t11@0 inline$$1_CRSN_check$0$$t11@0) (=> (and (= inline$$1_CRSN_has_crsn$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0)) (= inline$$1_CRSN_has_crsn$1$$t1@1 inline$$1_CRSN_has_crsn$1$$t1@1)) (and (=> (= (ControlFlow 0 1629942) 1632071) inline$$1_CRSN_check$0$anon31_Then_correct) (=> (= (ControlFlow 0 1629942) 1629984) inline$$1_CRSN_check$0$anon31_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon0_correct  (=> (and (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_check$0$$t7@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_check$0$$t16@0)) 0)) (=> (and (and (and (= inline$$1_CRSN_check$0$$t9@0 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (= inline$$1_CRSN_check$0$$t10@0 (- _$t1 (|$min_nonce#$1_CRSN_CRSN| inline$$1_CRSN_check$0$$t9@0)))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| inline$$1_CRSN_check$0$$t11@0) (= inline$$1_CRSN_check$0$$t11@0 (|$addr#$signer| _$t0))) (and (= inline$$1_CRSN_check$0$$t11@0 inline$$1_CRSN_check$0$$t11@0) (= (ControlFlow 0 1629948) 1629942)))) inline$$1_CRSN_has_crsn$1$anon0_correct))))
(let ((inline$$1_CRSN_record$0$anon0_correct  (=> (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t3@0)) 0) (=> (and (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@0)) 0)) (=> (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (|$IsValid'address'| inline$$1_CRSN_record$0$$t6@0) (= inline$$1_CRSN_record$0$$t6@0 (|$addr#$signer| _$t0)))) (and (and (= inline$$1_CRSN_record$0$$t6@0 inline$$1_CRSN_record$0$$t6@0) (= inline$$1_CRSN_record$0$$t7@0 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)))) (and (= inline$$1_CRSN_record$0$$t8@0 (- _$t1 (|$min_nonce#$1_CRSN_CRSN| inline$$1_CRSN_record$0$$t7@0))) (= (ControlFlow 0 1632077) 1629948)))) inline$$1_CRSN_check$0$anon0_correct)))))
(let ((anon81_Then_correct  (=> (and inline$$1_CRSN_has_crsn$0$$t1@1 (= (ControlFlow 0 1642635) 1632077)) inline$$1_CRSN_record$0$anon0_correct)))
(let ((anon84_Then_correct  (=> (and (and $t54@0 (= $abort_flag@54 $abort_flag@6)) (and (= $abort_code@54 $abort_code@7) (= (ControlFlow 0 1625848) 1626015))) L13_correct)))
(let ((anon84_Else_correct  (=> (not $t54@0) (and (=> (= (ControlFlow 0 1625844) (- 0 2416188)) (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1)) (=> (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1) (=> (= (ControlFlow 0 1625844) (- 0 2416201)) (<= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1)))))))
(let ((anon81_Else_correct  (=> (and (and (and (not inline$$1_CRSN_has_crsn$0$$t1@1) (= $t53@0 (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) (and (= $t54@0 (= $t53@0 _$t1)) (|$IsValid'u64'| 1003))) (and (and (|$IsValid'u64'| $t56) (= $t56 7)) (and (= $t56 $t56) (= $t54@0 $t54@0)))) (and (=> (= (ControlFlow 0 1625796) 1625848) anon84_Then_correct) (=> (= (ControlFlow 0 1625796) 1625844) anon84_Else_correct)))))
(let ((anon80_Else_correct  (=> (not $abort_flag@6) (and (=> (= (ControlFlow 0 1625744) 1642635) anon81_Then_correct) (=> (= (ControlFlow 0 1625744) 1625796) anon81_Else_correct)))))
(let ((anon80_Then_correct true))
(let ((inline$$1_CRSN_has_crsn$0$anon0_correct  (=> (= $t25 $t25) (=> (and (= inline$$1_CRSN_has_crsn$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) $t25)) (= inline$$1_CRSN_has_crsn$0$$t1@1 inline$$1_CRSN_has_crsn$0$$t1@1)) (and (=> (= (ControlFlow 0 1625730) 1642755) anon80_Then_correct) (=> (= (ControlFlow 0 1625730) 1625744) anon80_Else_correct))))))
(let ((anon79_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 1625736) 1625730)) inline$$1_CRSN_has_crsn$0$anon0_correct)))
(let ((anon79_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 1625629) (- 0 2416015)) (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1)) (=> (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1) (=> (= (ControlFlow 0 1625629) (- 0 2416028)) (<= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1)))) 1)))))))
(let ((anon78_Else$1_correct  (=> (|$IsValid'u64'| 1011) (=> (and (and (|$IsValid'u64'| $t48) (= $t48 8)) (and (= $t48 $t48) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 1625581) 1625736) anon79_Then_correct) (=> (= (ControlFlow 0 1625581) 1625629) anon79_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t43@0 inline$$CastU64$0$dst@1)) (= (ControlFlow 0 1625541) 1625581)) anon78_Else$1_correct)))
(let ((anon78_Else_correct  (=> (and (not $abort_flag@6) (= (ControlFlow 0 1625547) 1625541)) inline$$Lt$0$anon0_correct)))
(let ((anon78_Then_correct true))
(let ((inline$$CastU64$0$anon3_Then$1_correct  (=> (= $abort_code@7 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@6 true) (= inline$$CastU64$0$dst@1 inline$$CastU64$0$dst@0)) (and (=> (= (ControlFlow 0 1625487) 1642769) anon78_Then_correct) (=> (= (ControlFlow 0 1625487) 1625547) anon78_Else_correct))))))
(let ((inline$$CastU64$0$anon3_Then_correct  (=> (and (> 18446744073709551615 $MAX_U64) (= (ControlFlow 0 1625485) 1625487)) inline$$CastU64$0$anon3_Then$1_correct)))
(let ((inline$$CastU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 18446744073709551615) (= $abort_code@7 $abort_code@6)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$CastU64$0$dst@1 18446744073709551615))) (and (=> (= (ControlFlow 0 1625437) 1642769) anon78_Then_correct) (=> (= (ControlFlow 0 1625437) 1625547) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (not $abort_flag@5) (=> (and (and (= |$temp_0'$1_DiemAccount_DiemAccount'@0| (|v#$Mutation_657796| $t42@1)) (= |$temp_0'$1_DiemAccount_DiemAccount'@0| |$temp_0'$1_DiemAccount_DiemAccount'@0|)) (and (= $t43@0 (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| $t42@1))) (|$IsValid'u128'| 18446744073709551615))) (and (=> (= (ControlFlow 0 1625493) 1625485) inline$$CastU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 1625493) 1625437) inline$$CastU64$0$anon3_Else_correct))))))
(let ((anon77_Then_correct true))
(let ((anon76_Then$1_correct  (=> (= $t42@1 $t42) (=> (and (= $abort_code@6 $EXEC_FAILURE_CODE) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 1642835) 1642783) anon77_Then_correct) (=> (= (ControlFlow 0 1642835) 1625493) anon77_Else_correct))))))
(let ((anon76_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $t25)) (= (ControlFlow 0 1642833) 1642835)) anon76_Then$1_correct)))
(let ((anon76_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $t25) (=> (and (and (= $t42@0 ($Mutation_657796 ($Global $t25) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $t25))) (= $t42@1 $t42@0)) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4))) (and (=> (= (ControlFlow 0 1625336) 1642783) anon77_Then_correct) (=> (= (ControlFlow 0 1625336) 1625493) anon77_Else_correct))))))
(let ((anon75_Then_correct  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (and (=> (= (ControlFlow 0 1625314) 1642833) anon76_Then_correct) (=> (= (ControlFlow 0 1625314) 1625336) anon76_Else_correct)))))
(let ((anon75_Else_correct true))
(let ((anon74_Else_correct  (=> (and (not $abort_flag@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t41) (= $t41 5)) (and (= $t41 $t41) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 1625294) 1625314) anon75_Then_correct) (=> (= (ControlFlow 0 1625294) 1625310) anon75_Else_correct))))))
(let ((anon74_Then_correct true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= $t25 $t25) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $t25)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 1625252) 1642849) anon74_Then_correct) (=> (= (ControlFlow 0 1625252) 1625294) anon74_Else_correct))))))
(let ((anon73_Else_correct  (=> (not $abort_flag@4) (=> (and (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@2) (= (ControlFlow 0 1625258) 1625252)) inline$$1_DiemAccount_exists_at$0$anon0_correct))))
(let ((anon73_Then_correct true))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 1625133) 1642863) anon73_Then_correct) (=> (= (ControlFlow 0 1625133) 1625258) anon73_Else_correct))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* _$t2 inline$$Sub$0$dst@2) $MAX_U64) (= (ControlFlow 0 1625131) 1625133)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* _$t2 inline$$Sub$0$dst@2)) (=> (and (and (= inline$$MulU64$0$dst@1 (* _$t2 inline$$Sub$0$dst@2)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 1625079) 1642863) anon73_Then_correct) (=> (= (ControlFlow 0 1625079) 1625258) anon73_Else_correct))))))
(let ((anon72_Then_correct  (=> inline$$Le$0$dst@1 (and (=> (= (ControlFlow 0 1625139) 1625131) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 1625139) 1625079) inline$$MulU64$0$anon3_Else_correct)))))
(let ((anon72_Else_correct true))
(let ((anon71_Else$1_correct  (=> (|$IsValid'u64'| 20) (=> (and (and (|$IsValid'u64'| $t37) (= $t37 8)) (and (= $t37 $t37) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 1624966) 1625139) anon72_Then_correct) (=> (= (ControlFlow 0 1624966) 1624982) anon72_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= inline$$MulU128$0$dst@2 18446744073709551615)) (= (ControlFlow 0 1624926) 1624966)) anon71_Else$1_correct)))
(let ((anon71_Else_correct  (=> (not $abort_flag@3) (=> (and (|$IsValid'u128'| 18446744073709551615) (= (ControlFlow 0 1624932) 1624926)) inline$$Le$0$anon0_correct))))
(let ((anon71_Then_correct true))
(let ((inline$$MulU128$0$anon3_Then$1_correct  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@0)) (and (=> (= (ControlFlow 0 1624866) 1642877) anon71_Then_correct) (=> (= (ControlFlow 0 1624866) 1624932) anon71_Else_correct))))))
(let ((inline$$MulU128$0$anon3_Then_correct  (=> (and (> (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1) $MAX_U128) (= (ControlFlow 0 1624864) 1624866)) inline$$MulU128$0$anon3_Then$1_correct)))
(let ((inline$$MulU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (=> (and (and (= inline$$MulU128$0$dst@1 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@1))) (and (=> (= (ControlFlow 0 1624812) 1642877) anon71_Then_correct) (=> (= (ControlFlow 0 1624812) 1624932) anon71_Else_correct))))))
(let ((anon70_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 1624872) 1624864) inline$$MulU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 1624872) 1624812) inline$$MulU128$0$anon3_Else_correct)))))
(let ((anon70_Then_correct true))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 1624705) 1642891) anon70_Then_correct) (=> (= (ControlFlow 0 1624705) 1624872) anon70_Else_correct))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> inline$$Sub$0$dst@2 $MAX_U128) (= (ControlFlow 0 1624703) 1624705)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 inline$$Sub$0$dst@2) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$CastU128$1$dst@1 inline$$Sub$0$dst@2))) (and (=> (= (ControlFlow 0 1624655) 1642891) anon70_Then_correct) (=> (= (ControlFlow 0 1624655) 1624872) anon70_Else_correct)))))
(let ((anon69_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 1624711) 1624703) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 1624711) 1624655) inline$$CastU128$1$anon3_Else_correct)))))
(let ((anon69_Then_correct true))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 1624572) 1642905) anon69_Then_correct) (=> (= (ControlFlow 0 1624572) 1624711) anon69_Else_correct))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> _$t2 $MAX_U128) (= (ControlFlow 0 1624570) 1624572)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 _$t2) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$CastU128$0$dst@1 _$t2))) (and (=> (= (ControlFlow 0 1624522) 1642905) anon69_Then_correct) (=> (= (ControlFlow 0 1624522) 1624711) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (not $abort_flag@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 1624578) 1624570) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 1624578) 1624522) inline$$CastU128$0$anon3_Else_correct)))))
(let ((anon68_Then_correct true))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 1624431) 1642919) anon68_Then_correct) (=> (= (ControlFlow 0 1624431) 1624578) anon68_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< _$t3 _$t4) (= (ControlFlow 0 1624429) 1624431)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= _$t4 _$t3) (=> (and (and (= inline$$Sub$0$dst@1 (- _$t3 _$t4)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 1624381) 1642919) anon68_Then_correct) (=> (= (ControlFlow 0 1624381) 1624578) anon68_Else_correct))))))
(let ((anon67_Then_correct  (=> inline$$Ge$0$dst@1 (and (=> (= (ControlFlow 0 1624437) 1624429) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 1624437) 1624381) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon67_Else_correct true))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 20) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 7)) (and (= $t28 $t28) (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1))) (and (=> (= (ControlFlow 0 1624274) 1624437) anon67_Then_correct) (=> (= (ControlFlow 0 1624274) 1624290) anon67_Else_correct))))))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= _$t3 _$t4)) (= (ControlFlow 0 1624238) 1624274)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) 173345816)) 0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) 186537453)) 1)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472200| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472200| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472379| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472452| $1_DiemSystem_CapabilityHolder_$memory) 173345816))))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472523| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472607| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472691| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472762| $1_XDX_Reserve_$memory) 173345816))))) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472846| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472930| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473098| $1_DualAttestation_Limit_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473182| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473266| $1_ChainId_ChainId_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473337| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473337| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@22) (or (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0) (and (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0)) (= addr@@22 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0)))))))
 :qid |DiemAccountbpl.70465:20|
 :skolemid |2605|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@23) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@23) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@23)))) 0)) (and (not (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@23)))) 0)) (= addr@@23 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@23)))) 0)))))))
 :qid |DiemAccountbpl.70469:20|
 :skolemid |2606|
)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473580| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@24)))
 :qid |DiemAccountbpl.70481:20|
 :skolemid |2607|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473580| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@25)  (and (= addr@@25 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@25))))
 :qid |DiemAccountbpl.70485:20|
 :skolemid |2608|
)))))) (=> (and (and (and (and (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@26)  (and (= addr@@26 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@26))))
 :qid |DiemAccountbpl.70489:20|
 :skolemid |2609|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_478064| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@27)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27)) 2)))))
 :qid |DiemAccountbpl.70493:20|
 :skolemid |2610|
))) (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@28)))
 :qid |DiemAccountbpl.70497:20|
 :skolemid |2611|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@29)))
 :qid |DiemAccountbpl.70501:20|
 :skolemid |2612|
)))) (and (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@30)))
 :qid |DiemAccountbpl.70505:20|
 :skolemid |2613|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473722| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473806| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_471884| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'u64'| _$t1) (|$IsValid'u64'| _$t2)))) (and (and (and (and (|$IsValid'u64'| _$t3) (|$IsValid'u64'| _$t4)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemAccountbpl.70535:20|
 :skolemid |2614|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) $a_0@@0)))
(|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| $rsc@@0))
 :qid |DiemAccountbpl.70539:20|
 :skolemid |2615|
 :pattern ( (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) $a_0@@0))
)))) (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) $a_0@@1)))
(|$IsValid'$1_CRSN_CRSN'| $rsc@@1))
 :qid |DiemAccountbpl.70543:20|
 :skolemid |2616|
 :pattern ( (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $a_0@@2)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@2) (and (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1) (<= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1))))
 :qid |DiemAccountbpl.70547:20|
 :skolemid |2617|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@3))
 :qid |DiemAccountbpl.70551:20|
 :skolemid |2618|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@3))
)) (= _$t0 _$t0)))) (and (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= _$t3 _$t3) (= _$t4 _$t4))) (and (and (|$IsValid'address'| $t25) (= $t25 (|$addr#$signer| _$t0))) (and (= $t25 $t25) (= (ControlFlow 0 1624244) 1624238)))))) inline$$Ge$0$anon0_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_421725| stream@@0) 0) (forall ((v@@68 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@0) v@@68) 0)
 :qid |DiemAccountbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemAccountbpl.3705:13|
 :skolemid |136|
))) (= (ControlFlow 0 1623415) 1624244)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_546962| $t19)) 0) (= (|l#Vec_33444| (|p#$Mutation_657796| $t22)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_668571| $t23)) 0) (= (|l#Vec_33444| (|p#$Mutation_657796| $t42)) 0))) (and (and (= (|l#Vec_33444| (|p#$Mutation_18461| $t60)) 0) (= (|l#Vec_33444| (|p#$Mutation_668571| $t63)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_546962| $t64)) 0) (= (ControlFlow 0 1623425) 1623415)))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 2412533) 1623425) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_463944 0)) ((($Memory_463944 (|domain#$Memory_463944| |T@[Int]Bool|) (|contents#$Memory_463944| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_423840 0)) (((Vec_423840 (|v#Vec_423840| |T@[Int]#0|) (|l#Vec_423840| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_473722 0)) ((($Memory_473722 (|domain#$Memory_473722| |T@[Int]Bool|) (|contents#$Memory_473722| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_473651 0)) ((($Memory_473651 (|domain#$Memory_473651| |T@[Int]Bool|) (|contents#$Memory_473651| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_473408 0)) ((($Memory_473408 (|domain#$Memory_473408| |T@[Int]Bool|) (|contents#$Memory_473408| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_473337 0)) ((($Memory_473337 (|domain#$Memory_473337| |T@[Int]Bool|) (|contents#$Memory_473337| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@Vec_92615 0)) (((Vec_92615 (|v#Vec_92615| |T@[Int]Bool|) (|l#Vec_92615| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_92615) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_576150 0)) ((($Memory_576150 (|domain#$Memory_576150| |T@[Int]Bool|) (|contents#$Memory_576150| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_473266 0)) ((($Memory_473266 (|domain#$Memory_473266| |T@[Int]Bool|) (|contents#$Memory_473266| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_487544 0)) ((($Memory_487544 (|domain#$Memory_487544| |T@[Int]Bool|) (|contents#$Memory_487544| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_557350 0)) ((($Memory_557350 (|domain#$Memory_557350| |T@[Int]Bool|) (|contents#$Memory_557350| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_473098 0)) ((($Memory_473098 (|domain#$Memory_473098| |T@[Int]Bool|) (|contents#$Memory_473098| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_487799 0)) ((($Memory_487799 (|domain#$Memory_487799| |T@[Int]Bool|) (|contents#$Memory_487799| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_487899 0)) ((($Memory_487899 (|domain#$Memory_487899| |T@[Int]Bool|) (|contents#$Memory_487899| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_487325 0)) ((($Memory_487325 (|domain#$Memory_487325| |T@[Int]Bool|) (|contents#$Memory_487325| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_448056 0)) (((Vec_448056 (|v#Vec_448056| |T@[Int]$1_XDX_XDX|) (|l#Vec_448056| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_450736 0)) (((Vec_450736 (|v#Vec_450736| |T@[Int]$1_XUS_XUS|) (|l#Vec_450736| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_525479 0)) ((($Memory_525479 (|domain#$Memory_525479| |T@[Int]Bool|) (|contents#$Memory_525479| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_525415 0)) ((($Memory_525415 (|domain#$Memory_525415| |T@[Int]Bool|) (|contents#$Memory_525415| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_525351 0)) ((($Memory_525351 (|domain#$Memory_525351| |T@[Int]Bool|) (|contents#$Memory_525351| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_526401 0)) ((($Memory_526401 (|domain#$Memory_526401| |T@[Int]Bool|) (|contents#$Memory_526401| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_472930 0)) ((($Memory_472930 (|domain#$Memory_472930| |T@[Int]Bool|) (|contents#$Memory_472930| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_472691 0)) ((($Memory_472691 (|domain#$Memory_472691| |T@[Int]Bool|) (|contents#$Memory_472691| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_473580 0)) ((($Memory_473580 (|domain#$Memory_473580| |T@[Int]Bool|) (|contents#$Memory_473580| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_502287 0)) ((($Memory_502287 (|domain#$Memory_502287| |T@[Int]Bool|) (|contents#$Memory_502287| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_502223 0)) ((($Memory_502223 (|domain#$Memory_502223| |T@[Int]Bool|) (|contents#$Memory_502223| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_502159 0)) ((($Memory_502159 (|domain#$Memory_502159| |T@[Int]Bool|) (|contents#$Memory_502159| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_502780 0)) ((($Memory_502780 (|domain#$Memory_502780| |T@[Int]Bool|) (|contents#$Memory_502780| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_502693 0)) ((($Memory_502693 (|domain#$Memory_502693| |T@[Int]Bool|) (|contents#$Memory_502693| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_502606 0)) ((($Memory_502606 (|domain#$Memory_502606| |T@[Int]Bool|) (|contents#$Memory_502606| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_588258 0)) ((($Memory_588258 (|domain#$Memory_588258| |T@[Int]Bool|) (|contents#$Memory_588258| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_508607 0)) ((($Memory_508607 (|domain#$Memory_508607| |T@[Int]Bool|) (|contents#$Memory_508607| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_545418 0)) ((($Memory_545418 (|domain#$Memory_545418| |T@[Int]Bool|) (|contents#$Memory_545418| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_478064 0)) ((($Memory_478064 (|domain#$Memory_478064| |T@[Int]Bool|) (|contents#$Memory_478064| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508526 0)) ((($Memory_508526 (|domain#$Memory_508526| |T@[Int]Bool|) (|contents#$Memory_508526| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_545354 0)) ((($Memory_545354 (|domain#$Memory_545354| |T@[Int]Bool|) (|contents#$Memory_545354| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_472762 0)) ((($Memory_472762 (|domain#$Memory_472762| |T@[Int]Bool|) (|contents#$Memory_472762| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_478004 0)) ((($Memory_478004 (|domain#$Memory_478004| |T@[Int]Bool|) (|contents#$Memory_478004| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508445 0)) ((($Memory_508445 (|domain#$Memory_508445| |T@[Int]Bool|) (|contents#$Memory_508445| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_473001 0)) ((($Memory_473001 (|domain#$Memory_473001| |T@[Int]Bool|) (|contents#$Memory_473001| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_497451 0)) ((($Memory_497451 (|domain#$Memory_497451| |T@[Int]Bool|) (|contents#$Memory_497451| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_497364 0)) ((($Memory_497364 (|domain#$Memory_497364| |T@[Int]Bool|) (|contents#$Memory_497364| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_497277 0)) ((($Memory_497277 (|domain#$Memory_497277| |T@[Int]Bool|) (|contents#$Memory_497277| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_497190 0)) ((($Memory_497190 (|domain#$Memory_497190| |T@[Int]Bool|) (|contents#$Memory_497190| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_497103 0)) ((($Memory_497103 (|domain#$Memory_497103| |T@[Int]Bool|) (|contents#$Memory_497103| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_497016 0)) ((($Memory_497016 (|domain#$Memory_497016| |T@[Int]Bool|) (|contents#$Memory_497016| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_472452 0)) ((($Memory_472452 (|domain#$Memory_472452| |T@[Int]Bool|) (|contents#$Memory_472452| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_495874 0)) ((($Memory_495874 (|domain#$Memory_495874| |T@[Int]Bool|) (|contents#$Memory_495874| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_472293 0)) ((($Memory_472293 (|domain#$Memory_472293| |T@[Int]Bool|) (|contents#$Memory_472293| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_471884 0)) ((($Memory_471884 (|domain#$Memory_471884| |T@[Int]Bool|) (|contents#$Memory_471884| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_472200 0)) ((($Memory_472200 (|domain#$Memory_472200| |T@[Int]Bool|) (|contents#$Memory_472200| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_421889 0)) (((Vec_421889 (|v#Vec_421889| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_421889| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_421889) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_421850 0)) (((Vec_421850 (|v#Vec_421850| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_421850| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_421850) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_600227 0)) ((($Memory_600227 (|domain#$Memory_600227| |T@[Int]Bool|) (|contents#$Memory_600227| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_421850) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_33444 0)) (((Vec_33444 (|v#Vec_33444| |T@[Int]Int|) (|l#Vec_33444| Int) ) ) ))
(declare-sort |T@[Int]Vec_33444| 0)
(declare-datatypes ((T@Vec_422080 0)) (((Vec_422080 (|v#Vec_422080| |T@[Int]Vec_33444|) (|l#Vec_422080| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_422080) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_473182 0)) ((($Memory_473182 (|domain#$Memory_473182| |T@[Int]Bool|) (|contents#$Memory_473182| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_422080) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_472523 0)) ((($Memory_472523 (|domain#$Memory_472523| |T@[Int]Bool|) (|contents#$Memory_472523| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_33444) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_33444) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_473806 0)) ((($Memory_473806 (|domain#$Memory_473806| |T@[Int]Bool|) (|contents#$Memory_473806| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_33444) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_495741 0)) ((($Memory_495741 (|domain#$Memory_495741| |T@[Int]Bool|) (|contents#$Memory_495741| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_33444) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_487225 0)) ((($Memory_487225 (|domain#$Memory_487225| |T@[Int]Bool|) (|contents#$Memory_487225| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_560400 0)) ((($Memory_560400 (|domain#$Memory_560400| |T@[Int]Bool|) (|contents#$Memory_560400| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_560177 0)) ((($Memory_560177 (|domain#$Memory_560177| |T@[Int]Bool|) (|contents#$Memory_560177| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_559954 0)) ((($Memory_559954 (|domain#$Memory_559954| |T@[Int]Bool|) (|contents#$Memory_559954| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_33444) (|$base_url#$1_DualAttestation_Credential| T@Vec_33444) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_33444) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_477889 0)) ((($Memory_477889 (|domain#$Memory_477889| |T@[Int]Bool|) (|contents#$Memory_477889| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_422523 0)) (((Vec_422523 (|v#Vec_422523| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_422523| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_422523) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_487410 0)) ((($Memory_487410 (|domain#$Memory_487410| |T@[Int]Bool|) (|contents#$Memory_487410| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_422368 0)) (((Vec_422368 (|v#Vec_422368| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_422368| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_422368) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_509091 0)) ((($Memory_509091 (|domain#$Memory_509091| |T@[Int]Bool|) (|contents#$Memory_509091| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_422329 0)) (((Vec_422329 (|v#Vec_422329| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_422329| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_422329) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508974 0)) ((($Memory_508974 (|domain#$Memory_508974| |T@[Int]Bool|) (|contents#$Memory_508974| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_422290 0)) (((Vec_422290 (|v#Vec_422290| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_422290| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_422290) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508857 0)) ((($Memory_508857 (|domain#$Memory_508857| |T@[Int]Bool|) (|contents#$Memory_508857| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_33444) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_501585 0)) ((($Memory_501585 (|domain#$Memory_501585| |T@[Int]Bool|) (|contents#$Memory_501585| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_33444) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_472846 0)) ((($Memory_472846 (|domain#$Memory_472846| |T@[Int]Bool|) (|contents#$Memory_472846| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_33444) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_472607 0)) ((($Memory_472607 (|domain#$Memory_472607| |T@[Int]Bool|) (|contents#$Memory_472607| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_33444) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_33444) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_421811 0)) (((Vec_421811 (|v#Vec_421811| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_421811| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_421811) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_422023 0)) (((Vec_422023 (|v#Vec_422023| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_422023| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_422023) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_472379 0)) ((($Memory_472379 (|domain#$Memory_472379| |T@[Int]Bool|) (|contents#$Memory_472379| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_477156 0)) ((($Memory_477156 (|domain#$Memory_477156| |T@[Int]Bool|) (|contents#$Memory_477156| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_33444) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_477551 0)) ((($Memory_477551 (|domain#$Memory_477551| |T@[Int]Bool|) (|contents#$Memory_477551| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_472013 0)) ((($Memory_472013 (|domain#$Memory_472013| |T@[Int]Bool|) (|contents#$Memory_472013| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_471307 0)) ((($Memory_471307 (|domain#$Memory_471307| |T@[Int]Bool|) (|contents#$Memory_471307| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_33444) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_33444) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_33444) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_33444) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_33444) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_33444) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_33444) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_33444) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_33444) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_33444) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_421725 0)) (((Multiset_421725 (|v#Multiset_421725| |T@[$EventRep]Int|) (|l#Multiset_421725| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_421725| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_421725|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_1070810 0)) ((($Mutation_1070810 (|l#$Mutation_1070810| T@$Location) (|p#$Mutation_1070810| T@Vec_33444) (|v#$Mutation_1070810| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_878532 0)) ((($Mutation_878532 (|l#$Mutation_878532| T@$Location) (|p#$Mutation_878532| T@Vec_33444) (|v#$Mutation_878532| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_875081 0)) ((($Mutation_875081 (|l#$Mutation_875081| T@$Location) (|p#$Mutation_875081| T@Vec_33444) (|v#$Mutation_875081| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_872151 0)) ((($Mutation_872151 (|l#$Mutation_872151| T@$Location) (|p#$Mutation_872151| T@Vec_33444) (|v#$Mutation_872151| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_679430 0)) ((($Mutation_679430 (|l#$Mutation_679430| T@$Location) (|p#$Mutation_679430| T@Vec_33444) (|v#$Mutation_679430| |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_668571 0)) ((($Mutation_668571 (|l#$Mutation_668571| T@$Location) (|p#$Mutation_668571| T@Vec_33444) (|v#$Mutation_668571| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_657796 0)) ((($Mutation_657796 (|l#$Mutation_657796| T@$Location) (|p#$Mutation_657796| T@Vec_33444) (|v#$Mutation_657796| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_657750 0)) ((($Mutation_657750 (|l#$Mutation_657750| T@$Location) (|p#$Mutation_657750| T@Vec_33444) (|v#$Mutation_657750| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_580635 0)) ((($Mutation_580635 (|l#$Mutation_580635| T@$Location) (|p#$Mutation_580635| T@Vec_33444) (|v#$Mutation_580635| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_580592 0)) ((($Mutation_580592 (|l#$Mutation_580592| T@$Location) (|p#$Mutation_580592| T@Vec_33444) (|v#$Mutation_580592| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_577037 0)) ((($Mutation_577037 (|l#$Mutation_577037| T@$Location) (|p#$Mutation_577037| T@Vec_33444) (|v#$Mutation_577037| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_572160 0)) ((($Mutation_572160 (|l#$Mutation_572160| T@$Location) (|p#$Mutation_572160| T@Vec_33444) (|v#$Mutation_572160| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_560444 0)) ((($Mutation_560444 (|l#$Mutation_560444| T@$Location) (|p#$Mutation_560444| T@Vec_33444) (|v#$Mutation_560444| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_552651 0)) ((($Mutation_552651 (|l#$Mutation_552651| T@$Location) (|p#$Mutation_552651| T@Vec_33444) (|v#$Mutation_552651| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_548876 0)) ((($Mutation_548876 (|l#$Mutation_548876| T@$Location) (|p#$Mutation_548876| T@Vec_33444) (|v#$Mutation_548876| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_548830 0)) ((($Mutation_548830 (|l#$Mutation_548830| T@$Location) (|p#$Mutation_548830| T@Vec_33444) (|v#$Mutation_548830| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_547892 0)) ((($Mutation_547892 (|l#$Mutation_547892| T@$Location) (|p#$Mutation_547892| T@Vec_33444) (|v#$Mutation_547892| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_547846 0)) ((($Mutation_547846 (|l#$Mutation_547846| T@$Location) (|p#$Mutation_547846| T@Vec_33444) (|v#$Mutation_547846| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_546962 0)) ((($Mutation_546962 (|l#$Mutation_546962| T@$Location) (|p#$Mutation_546962| T@Vec_33444) (|v#$Mutation_546962| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_546916 0)) ((($Mutation_546916 (|l#$Mutation_546916| T@$Location) (|p#$Mutation_546916| T@Vec_33444) (|v#$Mutation_546916| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_543304 0)) ((($Mutation_543304 (|l#$Mutation_543304| T@$Location) (|p#$Mutation_543304| T@Vec_33444) (|v#$Mutation_543304| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_532783 0)) ((($Mutation_532783 (|l#$Mutation_532783| T@$Location) (|p#$Mutation_532783| T@Vec_33444) (|v#$Mutation_532783| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_532718 0)) ((($Mutation_532718 (|l#$Mutation_532718| T@$Location) (|p#$Mutation_532718| T@Vec_33444) (|v#$Mutation_532718| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_515509 0)) ((($Mutation_515509 (|l#$Mutation_515509| T@$Location) (|p#$Mutation_515509| T@Vec_33444) (|v#$Mutation_515509| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_513746 0)) ((($Mutation_513746 (|l#$Mutation_513746| T@$Location) (|p#$Mutation_513746| T@Vec_33444) (|v#$Mutation_513746| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_511983 0)) ((($Mutation_511983 (|l#$Mutation_511983| T@$Location) (|p#$Mutation_511983| T@Vec_33444) (|v#$Mutation_511983| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_500157 0)) ((($Mutation_500157 (|l#$Mutation_500157| T@$Location) (|p#$Mutation_500157| T@Vec_33444) (|v#$Mutation_500157| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_489851 0)) ((($Mutation_489851 (|l#$Mutation_489851| T@$Location) (|p#$Mutation_489851| T@Vec_33444) (|v#$Mutation_489851| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_486387 0)) ((($Mutation_486387 (|l#$Mutation_486387| T@$Location) (|p#$Mutation_486387| T@Vec_33444) (|v#$Mutation_486387| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_486346 0)) ((($Mutation_486346 (|l#$Mutation_486346| T@$Location) (|p#$Mutation_486346| T@Vec_33444) (|v#$Mutation_486346| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_471826 0)) ((($Mutation_471826 (|l#$Mutation_471826| T@$Location) (|p#$Mutation_471826| T@Vec_33444) (|v#$Mutation_471826| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_464575 0)) ((($Mutation_464575 (|l#$Mutation_464575| T@$Location) (|p#$Mutation_464575| T@Vec_33444) (|v#$Mutation_464575| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_18461 0)) ((($Mutation_18461 (|l#$Mutation_18461| T@$Location) (|p#$Mutation_18461| T@Vec_33444) (|v#$Mutation_18461| Int) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_33444) (|v#$Mutation_17352| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_456873 0)) ((($Mutation_456873 (|l#$Mutation_456873| T@$Location) (|p#$Mutation_456873| T@Vec_33444) (|v#$Mutation_456873| T@Vec_92615) ) ) ))
(declare-datatypes ((T@$Mutation_455163 0)) ((($Mutation_455163 (|l#$Mutation_455163| T@$Location) (|p#$Mutation_455163| T@Vec_33444) (|v#$Mutation_455163| T@Vec_33444) ) ) ))
(declare-datatypes ((T@$Mutation_454075 0)) ((($Mutation_454075 (|l#$Mutation_454075| T@$Location) (|p#$Mutation_454075| T@Vec_33444) (|v#$Mutation_454075| T@Vec_422080) ) ) ))
(declare-datatypes ((T@$Mutation_452366 0)) ((($Mutation_452366 (|l#$Mutation_452366| T@$Location) (|p#$Mutation_452366| T@Vec_33444) (|v#$Mutation_452366| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_451379 0)) ((($Mutation_451379 (|l#$Mutation_451379| T@$Location) (|p#$Mutation_451379| T@Vec_33444) (|v#$Mutation_451379| T@Vec_450736) ) ) ))
(declare-datatypes ((T@$Mutation_449686 0)) ((($Mutation_449686 (|l#$Mutation_449686| T@$Location) (|p#$Mutation_449686| T@Vec_33444) (|v#$Mutation_449686| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_448699 0)) ((($Mutation_448699 (|l#$Mutation_448699| T@$Location) (|p#$Mutation_448699| T@Vec_33444) (|v#$Mutation_448699| T@Vec_448056) ) ) ))
(declare-datatypes ((T@$Mutation_447006 0)) ((($Mutation_447006 (|l#$Mutation_447006| T@$Location) (|p#$Mutation_447006| T@Vec_33444) (|v#$Mutation_447006| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_446019 0)) ((($Mutation_446019 (|l#$Mutation_446019| T@$Location) (|p#$Mutation_446019| T@Vec_33444) (|v#$Mutation_446019| T@Vec_421811) ) ) ))
(declare-datatypes ((T@$Mutation_444364 0)) ((($Mutation_444364 (|l#$Mutation_444364| T@$Location) (|p#$Mutation_444364| T@Vec_33444) (|v#$Mutation_444364| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_443377 0)) ((($Mutation_443377 (|l#$Mutation_443377| T@$Location) (|p#$Mutation_443377| T@Vec_33444) (|v#$Mutation_443377| T@Vec_422523) ) ) ))
(declare-datatypes ((T@$Mutation_441699 0)) ((($Mutation_441699 (|l#$Mutation_441699| T@$Location) (|p#$Mutation_441699| T@Vec_33444) (|v#$Mutation_441699| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_440712 0)) ((($Mutation_440712 (|l#$Mutation_440712| T@$Location) (|p#$Mutation_440712| T@Vec_33444) (|v#$Mutation_440712| T@Vec_422290) ) ) ))
(declare-datatypes ((T@$Mutation_439003 0)) ((($Mutation_439003 (|l#$Mutation_439003| T@$Location) (|p#$Mutation_439003| T@Vec_33444) (|v#$Mutation_439003| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_438016 0)) ((($Mutation_438016 (|l#$Mutation_438016| T@$Location) (|p#$Mutation_438016| T@Vec_33444) (|v#$Mutation_438016| T@Vec_422329) ) ) ))
(declare-datatypes ((T@$Mutation_436307 0)) ((($Mutation_436307 (|l#$Mutation_436307| T@$Location) (|p#$Mutation_436307| T@Vec_33444) (|v#$Mutation_436307| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_435320 0)) ((($Mutation_435320 (|l#$Mutation_435320| T@$Location) (|p#$Mutation_435320| T@Vec_33444) (|v#$Mutation_435320| T@Vec_422368) ) ) ))
(declare-datatypes ((T@$Mutation_433611 0)) ((($Mutation_433611 (|l#$Mutation_433611| T@$Location) (|p#$Mutation_433611| T@Vec_33444) (|v#$Mutation_433611| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_432624 0)) ((($Mutation_432624 (|l#$Mutation_432624| T@$Location) (|p#$Mutation_432624| T@Vec_33444) (|v#$Mutation_432624| T@Vec_422023) ) ) ))
(declare-datatypes ((T@$Mutation_430824 0)) ((($Mutation_430824 (|l#$Mutation_430824| T@$Location) (|p#$Mutation_430824| T@Vec_33444) (|v#$Mutation_430824| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_429837 0)) ((($Mutation_429837 (|l#$Mutation_429837| T@$Location) (|p#$Mutation_429837| T@Vec_33444) (|v#$Mutation_429837| T@Vec_421889) ) ) ))
(declare-datatypes ((T@$Mutation_428172 0)) ((($Mutation_428172 (|l#$Mutation_428172| T@$Location) (|p#$Mutation_428172| T@Vec_33444) (|v#$Mutation_428172| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_427185 0)) ((($Mutation_427185 (|l#$Mutation_427185| T@$Location) (|p#$Mutation_427185| T@Vec_33444) (|v#$Mutation_427185| T@Vec_421850) ) ) ))
(declare-datatypes ((T@$Mutation_425472 0)) ((($Mutation_425472 (|l#$Mutation_425472| T@$Location) (|p#$Mutation_425472| T@Vec_33444) (|v#$Mutation_425472| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_424485 0)) ((($Mutation_424485 (|l#$Mutation_424485| T@$Location) (|p#$Mutation_424485| T@Vec_33444) (|v#$Mutation_424485| T@Vec_423840) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_423840 T@Vec_423840) Bool)
(declare-fun InRangeVec_383763 (T@Vec_423840 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_423840) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_423840 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_421850 T@Vec_421850) Bool)
(declare-fun InRangeVec_383964 (T@Vec_421850 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_421850) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_421850 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_421889 T@Vec_421889) Bool)
(declare-fun InRangeVec_384165 (T@Vec_421889 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_421889) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_421889 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_422023 T@Vec_422023) Bool)
(declare-fun InRangeVec_384366 (T@Vec_422023 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_33444 T@Vec_33444) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_422023) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_422023 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_422368 T@Vec_422368) Bool)
(declare-fun InRangeVec_384567 (T@Vec_422368 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_422368) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_422368 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_422329 T@Vec_422329) Bool)
(declare-fun InRangeVec_384768 (T@Vec_422329 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_422329) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_422329 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_422290 T@Vec_422290) Bool)
(declare-fun InRangeVec_384969 (T@Vec_422290 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_422290) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_422290 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_422523 T@Vec_422523) Bool)
(declare-fun InRangeVec_385170 (T@Vec_422523 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_422523) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_422523 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_421811 T@Vec_421811) Bool)
(declare-fun InRangeVec_385371 (T@Vec_421811 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_421811) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_421811 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_448056 T@Vec_448056) Bool)
(declare-fun InRangeVec_385572 (T@Vec_448056 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_448056) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_448056 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_450736 T@Vec_450736) Bool)
(declare-fun InRangeVec_385773 (T@Vec_450736 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_450736) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_450736 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_422080 T@Vec_422080) Bool)
(declare-fun InRangeVec_453498 (T@Vec_422080 Int) Bool)
(declare-fun |Select__T@[Int]Vec_33444_| (|T@[Int]Vec_33444| Int) T@Vec_33444)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_422080) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_33444) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_422080 T@Vec_33444) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_92615 T@Vec_92615) Bool)
(declare-fun InRangeVec_16728 (T@Vec_92615 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_92615) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_92615 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_33444 T@Vec_33444) Bool)
(declare-fun InRangeVec_17837 (T@Vec_33444 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_33444) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_33444 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_33444 T@Vec_33444) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_33444) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_33444 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_33444 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_33444) T@Vec_33444)
(declare-fun $1_Hash_sha3 (T@Vec_33444) T@Vec_33444)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_33444) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_33444 T@Vec_33444 T@Vec_33444) Bool)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_33444)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_421725_| (|T@[$1_Event_EventHandle]Multiset_421725| T@$1_Event_EventHandle) T@Multiset_421725)
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
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_33444 Int) T@Vec_33444)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| (|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| (|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun $1_DiemAccount_spec_abstract_create_authentication_key (T@Vec_33444) T@Vec_33444)
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
(declare-fun IndexOfVec_33444 (T@Vec_33444 Int) Int)
(declare-fun IndexOfVec_421811 (T@Vec_421811 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_421850 (T@Vec_421850 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_421889 (T@Vec_421889 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_422023 (T@Vec_422023 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_422080 (T@Vec_422080 T@Vec_33444) Int)
(declare-fun IndexOfVec_422290 (T@Vec_422290 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_422329 (T@Vec_422329 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_422368 (T@Vec_422368 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_422523 (T@Vec_422523 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_92615 (T@Vec_92615 Bool) Int)
(declare-fun IndexOfVec_423840 (T@Vec_423840 |T@#0|) Int)
(declare-fun IndexOfVec_448056 (T@Vec_448056 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_450736 (T@Vec_450736 T@$1_XUS_XUS) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_421725| |T@[$1_Event_EventHandle]Multiset_421725|) |T@[$1_Event_EventHandle]Multiset_421725|)
(declare-fun |lambda#45| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_33444| |T@[Int]Vec_33444| Int T@Vec_33444) |T@[Int]Vec_33444|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_33444| Int Int T@Vec_33444) |T@[Int]Vec_33444|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_33444| |T@[Int]Vec_33444| Int T@Vec_33444) |T@[Int]Vec_33444|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#40| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#42| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#43| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#44| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemAccountbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemAccountbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemAccountbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemAccountbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemAccountbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemAccountbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_423840) (v2 T@Vec_423840) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_423840| v1) (|l#Vec_423840| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_383763 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_423840| v2) i@@0)))
 :qid |DiemAccountbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemAccountbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_423840) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_423840| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_383763 v@@4 i@@1) true)
 :qid |DiemAccountbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemAccountbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_423840) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_383763 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@5) i@@3) e))
 :qid |DiemAccountbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_383763 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@5) j) e)))
 :qid |DiemAccountbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemAccountbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_421850) (v2@@0 T@Vec_421850) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_421850| v1@@0) (|l#Vec_421850| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_383964 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v2@@0) i@@4)))
 :qid |DiemAccountbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemAccountbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_421850) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_421850| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_383964 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@6) i@@5)))
 :qid |DiemAccountbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemAccountbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_421850) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_383964 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@7) i@@7) e@@0))
 :qid |DiemAccountbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_383964 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@7) j@@0) e@@0)))
 :qid |DiemAccountbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemAccountbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_421889) (v2@@1 T@Vec_421889) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_421889| v1@@1) (|l#Vec_421889| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_384165 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v2@@1) i@@8)))
 :qid |DiemAccountbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemAccountbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_421889) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_421889| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_384165 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@8) i@@9)))
 :qid |DiemAccountbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemAccountbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_421889) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_384165 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@9) i@@11) e@@1))
 :qid |DiemAccountbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_384165 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@9) j@@1) e@@1)))
 :qid |DiemAccountbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemAccountbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_422023) (v2@@2 T@Vec_422023) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_422023| v1@@2) (|l#Vec_422023| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_384366 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v2@@2) i@@12)))))
 :qid |DiemAccountbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemAccountbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_422023) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_422023| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_384366 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@10) i@@13)))
 :qid |DiemAccountbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemAccountbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_422023) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_384366 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemAccountbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_384366 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemAccountbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemAccountbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_422368) (v2@@3 T@Vec_422368) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_422368| v1@@3) (|l#Vec_422368| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_384567 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v2@@3) i@@16)))))
 :qid |DiemAccountbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemAccountbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_422368) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_422368| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_384567 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@12) i@@17)))
 :qid |DiemAccountbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemAccountbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_422368) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_384567 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemAccountbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_384567 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemAccountbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemAccountbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_422329) (v2@@4 T@Vec_422329) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_422329| v1@@4) (|l#Vec_422329| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_384768 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v2@@4) i@@20)))))
 :qid |DiemAccountbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemAccountbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_422329) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_422329| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_384768 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@14) i@@21)))
 :qid |DiemAccountbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemAccountbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_422329) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_384768 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemAccountbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_384768 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemAccountbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemAccountbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_422290) (v2@@5 T@Vec_422290) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_422290| v1@@5) (|l#Vec_422290| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_384969 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v2@@5) i@@24)))))
 :qid |DiemAccountbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemAccountbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_422290) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_422290| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_384969 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@16) i@@25)))
 :qid |DiemAccountbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemAccountbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_422290) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_384969 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemAccountbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_384969 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemAccountbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemAccountbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_422523) (v2@@6 T@Vec_422523) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_422523| v1@@6) (|l#Vec_422523| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_385170 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v2@@6) i@@28))))
 :qid |DiemAccountbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemAccountbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_422523) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_422523| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_385170 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@18) i@@29)))
 :qid |DiemAccountbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemAccountbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_422523) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_385170 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemAccountbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_385170 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemAccountbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemAccountbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_421811) (v2@@7 T@Vec_421811) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_421811| v1@@7) (|l#Vec_421811| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_385371 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v2@@7) i@@32)))))
 :qid |DiemAccountbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemAccountbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_421811) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_421811| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_385371 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@20) i@@33)))
 :qid |DiemAccountbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemAccountbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_421811) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_385371 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemAccountbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_385371 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemAccountbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemAccountbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_448056) (v2@@8 T@Vec_448056) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_448056| v1@@8) (|l#Vec_448056| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_385572 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v2@@8) i@@36)))
 :qid |DiemAccountbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemAccountbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_448056) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_448056| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_385572 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@22) i@@37)))
 :qid |DiemAccountbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemAccountbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_448056) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_385572 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@23) i@@39) e@@8))
 :qid |DiemAccountbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_385572 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@23) j@@8) e@@8)))
 :qid |DiemAccountbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemAccountbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_450736) (v2@@9 T@Vec_450736) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_450736| v1@@9) (|l#Vec_450736| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_385773 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v2@@9) i@@40)))
 :qid |DiemAccountbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemAccountbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_450736) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_450736| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_385773 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@24) i@@41)))
 :qid |DiemAccountbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemAccountbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_450736) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_385773 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@25) i@@43) e@@9))
 :qid |DiemAccountbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_385773 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@25) j@@9) e@@9)))
 :qid |DiemAccountbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemAccountbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_422080) (v2@@10 T@Vec_422080) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_422080| v1@@10) (|l#Vec_422080| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_453498 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v1@@10) i@@44) (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v2@@10) i@@44)))
 :qid |DiemAccountbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemAccountbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_422080) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_422080| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_453498 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@26) i@@45)))
 :qid |DiemAccountbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemAccountbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_422080) (e@@10 T@Vec_33444) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_453498 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@27) i@@47) e@@10))
 :qid |DiemAccountbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_453498 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@27) j@@10) e@@10)))
 :qid |DiemAccountbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemAccountbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_92615) (v2@@11 T@Vec_92615) ) (! (= (|$IsEqual'vec'bool''| v1@@11 v2@@11)  (and (= (|l#Vec_92615| v1@@11) (|l#Vec_92615| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v1@@11) i@@48) (|Select__T@[Int]Bool_| (|v#Vec_92615| v2@@11) i@@48)))
 :qid |DiemAccountbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemAccountbpl.2785:30|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'bool''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_92615) ) (! (= (|$IsValid'vec'bool''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_92615| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) true)
 :qid |DiemAccountbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemAccountbpl.2791:30|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'bool''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_92615) (e@@11 Bool) ) (! (let ((i@@50 (|$IndexOfVec'bool'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@29) i@@51) e@@11))
 :qid |DiemAccountbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@29) j@@11) e@@11)))
 :qid |DiemAccountbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemAccountbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'bool'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_33444) (v2@@12 T@Vec_33444) ) (! (= (|$IsEqual'vec'address''| v1@@12 v2@@12)  (and (= (|l#Vec_33444| v1@@12) (|l#Vec_33444| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_17837 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_33444| v2@@12) i@@52)))
 :qid |DiemAccountbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemAccountbpl.2966:33|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'address''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_33444) ) (! (= (|$IsValid'vec'address''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_33444| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_17837 v@@30 i@@53) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_33444| v@@30) i@@53)))
 :qid |DiemAccountbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemAccountbpl.2972:33|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'address''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_33444) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'address'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_17837 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@31) i@@55) e@@12))
 :qid |DiemAccountbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_17837 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@31) j@@12) e@@12)))
 :qid |DiemAccountbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemAccountbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'address'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_33444) (v2@@13 T@Vec_33444) ) (! (= (|$IsEqual'vec'u64''| v1@@13 v2@@13)  (and (= (|l#Vec_33444| v1@@13) (|l#Vec_33444| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_17837 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_33444| v2@@13) i@@56)))
 :qid |DiemAccountbpl.3149:13|
 :skolemid |115|
))))
 :qid |DiemAccountbpl.3147:29|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u64''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_33444) ) (! (= (|$IsValid'vec'u64''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_33444| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_17837 v@@32 i@@57) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_33444| v@@32) i@@57)))
 :qid |DiemAccountbpl.3155:13|
 :skolemid |117|
))))
 :qid |DiemAccountbpl.3153:29|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u64''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_33444) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u64'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_17837 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@33) i@@59) e@@13))
 :qid |DiemAccountbpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_17837 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@33) j@@13) e@@13)))
 :qid |DiemAccountbpl.3168:17|
 :skolemid |120|
)))))
 :qid |DiemAccountbpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u64'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_33444) (v2@@14 T@Vec_33444) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14)  (and (= (|l#Vec_33444| v1@@14) (|l#Vec_33444| v2@@14)) (forall ((i@@60 Int) ) (!  (=> (InRangeVec_17837 v1@@14 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v1@@14) i@@60) (|Select__T@[Int]Int_| (|v#Vec_33444| v2@@14) i@@60)))
 :qid |DiemAccountbpl.3330:13|
 :skolemid |122|
))))
 :qid |DiemAccountbpl.3328:28|
 :skolemid |123|
 :pattern ( (|$IsEqual'vec'u8''| v1@@14 v2@@14))
)))
(assert (forall ((v@@34 T@Vec_33444) ) (! (= (|$IsValid'vec'u8''| v@@34)  (and (|$IsValid'u64'| (|l#Vec_33444| v@@34)) (forall ((i@@61 Int) ) (!  (=> (InRangeVec_17837 v@@34 i@@61) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_33444| v@@34) i@@61)))
 :qid |DiemAccountbpl.3336:13|
 :skolemid |124|
))))
 :qid |DiemAccountbpl.3334:28|
 :skolemid |125|
 :pattern ( (|$IsValid'vec'u8''| v@@34))
)))
(assert (forall ((v@@35 T@Vec_33444) (e@@14 Int) ) (! (let ((i@@62 (|$IndexOfVec'u8'| v@@35 e@@14)))
(ite  (not (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (InRangeVec_17837 v@@35 i@@63)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@35) i@@63) e@@14))
 :qid |DiemAccountbpl.3341:13|
 :skolemid |126|
))) (= i@@62 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@62) (InRangeVec_17837 v@@35 i@@62)) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@35) i@@62) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@14) (>= j@@14 0)) (< j@@14 i@@62)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@35) j@@14) e@@14)))
 :qid |DiemAccountbpl.3349:17|
 :skolemid |127|
)))))
 :qid |DiemAccountbpl.3345:15|
 :skolemid |128|
 :pattern ( (|$IndexOfVec'u8'| v@@35 e@@14))
)))
(assert (forall ((v1@@15 T@Vec_33444) (v2@@15 T@Vec_33444) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@15) ($1_Hash_sha2 v2@@15)))
 :qid |DiemAccountbpl.3522:15|
 :skolemid |129|
 :pattern ( ($1_Hash_sha2 v1@@15) ($1_Hash_sha2 v2@@15))
)))
(assert (forall ((v1@@16 T@Vec_33444) (v2@@16 T@Vec_33444) ) (! (= (|$IsEqual'vec'u8''| v1@@16 v2@@16) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@16) ($1_Hash_sha3 v2@@16)))
 :qid |DiemAccountbpl.3538:15|
 :skolemid |130|
 :pattern ( ($1_Hash_sha3 v1@@16) ($1_Hash_sha3 v2@@16))
)))
(assert (forall ((k1 T@Vec_33444) (k2 T@Vec_33444) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemAccountbpl.3609:15|
 :skolemid |131|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_33444) (s2 T@Vec_33444) (k1@@0 T@Vec_33444) (k2@@0 T@Vec_33444) (m1 T@Vec_33444) (m2 T@Vec_33444) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemAccountbpl.3612:15|
 :skolemid |132|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@17 Int) (v2@@17 Int) ) (! (= (= v1@@17 v2@@17) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@17) (|$1_BCS_serialize'address'| v2@@17)))
 :qid |DiemAccountbpl.3639:15|
 :skolemid |133|
 :pattern ( (|$1_BCS_serialize'address'| v1@@17) (|$1_BCS_serialize'address'| v2@@17))
)))
(assert (forall ((v@@36 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@36)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_33444| r@@0) 0)))
 :qid |DiemAccountbpl.3644:15|
 :skolemid |134|
 :pattern ( (|$1_BCS_serialize'address'| v@@36))
)))
(assert (forall ((v@@37 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@37)))
(= (|l#Vec_33444| r@@1) $serialized_address_len))
 :qid |DiemAccountbpl.3658:15|
 :skolemid |135|
 :pattern ( (|$1_BCS_serialize'address'| v@@37))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_421725| stream) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream) v@@38) 0)
 :qid |DiemAccountbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemAccountbpl.3705:13|
 :skolemid |136|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemAccountbpl.3746:80|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@18 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@18 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@18)))
 :qid |DiemAccountbpl.3752:15|
 :skolemid |139|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@18))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemAccountbpl.3802:82|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@19 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@19 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@19) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@19)))
 :qid |DiemAccountbpl.3808:15|
 :skolemid |141|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@19) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@19))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemAccountbpl.3858:80|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@20 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@20 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@20) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@20)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@20) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@20))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@20) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@20))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@20) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@20)))
 :qid |DiemAccountbpl.3864:15|
 :skolemid |143|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@20) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@20))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemAccountbpl.3914:79|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_AdminTransactionEvent) (v2@@21 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@21)))
 :qid |DiemAccountbpl.3920:15|
 :skolemid |145|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@21))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemAccountbpl.3970:76|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_CreateAccountEvent) (v2@@22 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@22 v2@@22) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@22)))
 :qid |DiemAccountbpl.3976:15|
 :skolemid |147|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@22))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemAccountbpl.4026:78|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@23 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@23 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@23))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@23))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@23) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@23))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@23)))
 :qid |DiemAccountbpl.4032:15|
 :skolemid |149|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@23))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemAccountbpl.4082:74|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@24 T@$1_DiemAccount_SentPaymentEvent) (v2@@24 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@24))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@24) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@24))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@24) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@24)))
 :qid |DiemAccountbpl.4088:15|
 :skolemid |151|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@24) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@24))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemAccountbpl.4138:69|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@25 T@$1_DiemBlock_NewBlockEvent) (v2@@25 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@25) (|$round#$1_DiemBlock_NewBlockEvent| v2@@25)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@25) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@25))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@25) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@25))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@25) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@25))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@25) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@25)))
 :qid |DiemAccountbpl.4144:15|
 :skolemid |153|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@25) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@25))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemAccountbpl.4194:70|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@26 T@$1_DiemConfig_NewEpochEvent) (v2@@26 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@26 v2@@26) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@26)))
 :qid |DiemAccountbpl.4200:15|
 :skolemid |155|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@26))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemAccountbpl.4250:60|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@27 T@$1_Diem_BurnEvent) (v2@@27 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@27) (|$amount#$1_Diem_BurnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@27) (|$currency_code#$1_Diem_BurnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@27) (|$preburn_address#$1_Diem_BurnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@27)))
 :qid |DiemAccountbpl.4256:15|
 :skolemid |157|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@27))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemAccountbpl.4306:66|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@28 T@$1_Diem_CancelBurnEvent) (v2@@28 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@28) (|$amount#$1_Diem_CancelBurnEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@28) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@28))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@28) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@28) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@28)))
 :qid |DiemAccountbpl.4312:15|
 :skolemid |159|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@28) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@28))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemAccountbpl.4362:60|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@29 T@$1_Diem_MintEvent) (v2@@29 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@29) (|$amount#$1_Diem_MintEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@29) (|$currency_code#$1_Diem_MintEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@29) (|$ToEventRep'$1_Diem_MintEvent'| v2@@29)))
 :qid |DiemAccountbpl.4368:15|
 :skolemid |161|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@29) (|$ToEventRep'$1_Diem_MintEvent'| v2@@29))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemAccountbpl.4418:63|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@30 T@$1_Diem_PreburnEvent) (v2@@30 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@30) (|$amount#$1_Diem_PreburnEvent| v2@@30)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@30) (|$currency_code#$1_Diem_PreburnEvent| v2@@30))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@30) (|$preburn_address#$1_Diem_PreburnEvent| v2@@30))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@30) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@30)))
 :qid |DiemAccountbpl.4424:15|
 :skolemid |163|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@30) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@30))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemAccountbpl.4474:79|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@31 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@31 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@31) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@31)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@31) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@31))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@31) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@31)))
 :qid |DiemAccountbpl.4480:15|
 :skolemid |165|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@31) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@31))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemAccountbpl.4530:82|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@32 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@32 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@32) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@32)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@32) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@32))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@32)))
 :qid |DiemAccountbpl.4536:15|
 :skolemid |167|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@32))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemAccountbpl.4586:88|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@33 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@33 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@33) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@33)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@33) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@33))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@33)))
 :qid |DiemAccountbpl.4592:15|
 :skolemid |169|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@33))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemAccountbpl.4642:72|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@34 T@$1_VASPDomain_VASPDomainEvent) (v2@@34 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@34) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@34)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@34)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@34)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@34) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@34))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@34) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@34)))
 :qid |DiemAccountbpl.4648:15|
 :skolemid |171|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@34) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@34))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemAccountbpl.4732:61|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemAccountbpl.5582:36|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemAccountbpl.7618:71|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemAccountbpl.8032:46|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemAccountbpl.8044:64|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemAccountbpl.8056:75|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemAccountbpl.8068:72|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemAccountbpl.8106:55|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemAccountbpl.8129:46|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemAccountbpl.9873:49|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemAccountbpl.9978:71|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemAccountbpl.9991:91|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemAccountbpl.10004:113|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemAccountbpl.10017:89|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemAccountbpl.10030:75|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemAccountbpl.10043:73|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemAccountbpl.10063:48|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemAccountbpl.10080:57|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemAccountbpl.10094:83|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemAccountbpl.10108:103|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemAccountbpl.10122:125|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |DiemAccountbpl.10136:101|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemAccountbpl.10150:87|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemAccountbpl.10164:85|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemAccountbpl.10178:48|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemAccountbpl.10199:45|
 :skolemid |326|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemAccountbpl.10213:51|
 :skolemid |327|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemAccountbpl.10236:48|
 :skolemid |328|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemAccountbpl.10535:49|
 :skolemid |329|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemAccountbpl.10548:65|
 :skolemid |330|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemAccountbpl.11179:45|
 :skolemid |331|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemAccountbpl.11192:45|
 :skolemid |332|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |DiemAccountbpl.11205:37|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |DiemAccountbpl.11218:55|
 :skolemid |334|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |DiemAccountbpl.11232:55|
 :skolemid |335|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |DiemAccountbpl.11246:47|
 :skolemid |336|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |DiemAccountbpl.11266:38|
 :skolemid |337|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |DiemAccountbpl.11288:44|
 :skolemid |338|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |DiemAccountbpl.11340:53|
 :skolemid |339|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |DiemAccountbpl.11413:53|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |DiemAccountbpl.11486:45|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |DiemAccountbpl.11523:55|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |DiemAccountbpl.11537:55|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |DiemAccountbpl.11551:47|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |DiemAccountbpl.11568:38|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |DiemAccountbpl.11582:48|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |DiemAccountbpl.11596:48|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |DiemAccountbpl.11610:40|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |DiemAccountbpl.11630:41|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |DiemAccountbpl.11646:53|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |DiemAccountbpl.11659:53|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |DiemAccountbpl.11672:45|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |DiemAccountbpl.11688:60|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |DiemAccountbpl.11705:60|
 :skolemid |354|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |DiemAccountbpl.11722:52|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |DiemAccountbpl.11739:57|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |DiemAccountbpl.16711:68|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |DiemAccountbpl.16733:66|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |DiemAccountbpl.16759:66|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |DiemAccountbpl.16785:58|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |DiemAccountbpl.16814:56|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |DiemAccountbpl.16844:56|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |DiemAccountbpl.16874:48|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |DiemAccountbpl.17340:31|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |DiemAccountbpl.17670:31|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |DiemAccountbpl.17689:35|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |DiemAccountbpl.18103:45|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |DiemAccountbpl.18121:50|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |DiemAccountbpl.18137:52|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |DiemAccountbpl.18150:46|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |DiemAccountbpl.19982:38|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |DiemAccountbpl.19996:39|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |DiemAccountbpl.20789:65|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@72)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@72)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@72))))
 :qid |DiemAccountbpl.20807:65|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@72))
)))
(assert (forall ((s@@73 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@73)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@73)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@73))))
 :qid |DiemAccountbpl.20825:57|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@73))
)))
(assert (forall ((payer Int) (metadata T@Vec_33444) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DiemAccountbpl.21912:15|
 :skolemid |466|
)))
(assert (forall ((s@@74 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@74)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@74)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@74))))
 :qid |DiemAccountbpl.21940:60|
 :skolemid |467|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@75)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@75)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@75))))
 :qid |DiemAccountbpl.21957:66|
 :skolemid |468|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@76)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@76)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@76))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@76))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@76))))
 :qid |DiemAccountbpl.21986:50|
 :skolemid |469|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@77) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@77)))
 :qid |DiemAccountbpl.22009:45|
 :skolemid |470|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@78)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@78)) true))
 :qid |DiemAccountbpl.23542:87|
 :skolemid |489|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@79) true)
 :qid |DiemAccountbpl.23556:75|
 :skolemid |490|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@80)))
 :qid |DiemAccountbpl.24203:47|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@81)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@81))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@81))))
 :qid |DiemAccountbpl.24222:58|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@82)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82))))
 :qid |DiemAccountbpl.24244:61|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@83)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83))))
 :qid |DiemAccountbpl.24267:61|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@84)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@84)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@84))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@84))))
 :qid |DiemAccountbpl.24290:53|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@84))
)))
(assert (forall ((s@@85 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@85) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@85)))
 :qid |DiemAccountbpl.26391:39|
 :skolemid |601|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@85))
)))
(assert (forall ((s@@86 T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s@@86)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s@@86)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s@@86))))
 :qid |DiemAccountbpl.26499:43|
 :skolemid |602|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s@@86))
)))
(assert (forall ((s@@87 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@87)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@87)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@87))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@87))))
 :qid |DiemAccountbpl.28132:33|
 :skolemid |603|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@87))
)))
(assert (forall ((s@@88 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@88)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@88))))
 :qid |DiemAccountbpl.29201:58|
 :skolemid |604|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@89)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@89))))
 :qid |DiemAccountbpl.29218:58|
 :skolemid |605|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@89))
)))
(assert (forall ((s@@90 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@90) true)
 :qid |DiemAccountbpl.29233:51|
 :skolemid |606|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@90))
)))
(assert (forall ((s@@91 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@91)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@91)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@91))))
 :qid |DiemAccountbpl.29250:60|
 :skolemid |607|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@91))
)))
(assert (forall ((auth_key_prefix T@Vec_33444) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |DiemAccountbpl.31002:15|
 :skolemid |680|
)))
(assert (forall ((s@@92 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@92)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@92)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@92))))
 :qid |DiemAccountbpl.31082:47|
 :skolemid |681|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@93)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@93)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@93))))
 :qid |DiemAccountbpl.31108:63|
 :skolemid |682|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@94) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@94)))
 :qid |DiemAccountbpl.31123:57|
 :skolemid |683|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@94))
)))
(assert (forall ((s@@95 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@95) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@95)))
 :qid |DiemAccountbpl.31136:55|
 :skolemid |684|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@95))
)))
(assert (forall ((s@@96 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@96) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@96)))
 :qid |DiemAccountbpl.31150:55|
 :skolemid |685|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@96))
)))
(assert (forall ((s@@97 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@97) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@97)))
 :qid |DiemAccountbpl.31164:47|
 :skolemid |686|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@98)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@98)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@98))))
 :qid |DiemAccountbpl.31181:54|
 :skolemid |687|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@99) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@99)))
 :qid |DiemAccountbpl.31195:55|
 :skolemid |688|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@100) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@100)))
 :qid |DiemAccountbpl.31208:57|
 :skolemid |689|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@101)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@101)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@101))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@101))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@101))))
 :qid |DiemAccountbpl.31230:56|
 :skolemid |690|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@102)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@102)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@102))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@102))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@102))))
 :qid |DiemAccountbpl.31257:52|
 :skolemid |691|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@103) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@103)))
 :qid |DiemAccountbpl.31275:54|
 :skolemid |692|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@103))
)))
(assert (forall ((s@@104 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@104) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@104)))
 :qid |DiemAccountbpl.104361:55|
 :skolemid |3691|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@104))
)))
(assert (forall ((s@@105 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@105)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@105)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@105))))
 :qid |DiemAccountbpl.105492:47|
 :skolemid |3848|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@105))
)))
(assert (forall ((s@@106 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@106)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@106)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@106))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@106))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@106))))
 :qid |DiemAccountbpl.105516:47|
 :skolemid |3849|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@106))
)))
(assert (forall ((s@@107 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@107) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@107)))
 :qid |DiemAccountbpl.105750:63|
 :skolemid |3850|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@107))
)))
(assert (forall ((s@@108 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@108) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@108)))
 :qid |DiemAccountbpl.106085:49|
 :skolemid |3851|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@108))
)))
(assert (forall ((s@@109 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@109)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@109)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@109))))
 :qid |DiemAccountbpl.106127:49|
 :skolemid |3852|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@109))
)))
(assert (forall ((s@@110 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@110)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@110)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@110))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@110))))
 :qid |DiemAccountbpl.106156:48|
 :skolemid |3853|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@110))
)))
(assert (forall ((s@@111 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@111) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@111)))
 :qid |DiemAccountbpl.106441:47|
 :skolemid |3854|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@111))
)))
(assert (forall ((v@@39 T@Vec_423840) (i@@64 Int) ) (! (= (InRangeVec_383763 v@@39 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_423840| v@@39))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_383763 v@@39 i@@64))
)))
(assert (forall ((v@@40 T@Vec_421850) (i@@65 Int) ) (! (= (InRangeVec_383964 v@@40 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_421850| v@@40))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_383964 v@@40 i@@65))
)))
(assert (forall ((v@@41 T@Vec_421889) (i@@66 Int) ) (! (= (InRangeVec_384165 v@@41 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_421889| v@@41))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384165 v@@41 i@@66))
)))
(assert (forall ((v@@42 T@Vec_422023) (i@@67 Int) ) (! (= (InRangeVec_384366 v@@42 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_422023| v@@42))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384366 v@@42 i@@67))
)))
(assert (forall ((v@@43 T@Vec_422368) (i@@68 Int) ) (! (= (InRangeVec_384567 v@@43 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_422368| v@@43))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384567 v@@43 i@@68))
)))
(assert (forall ((v@@44 T@Vec_422329) (i@@69 Int) ) (! (= (InRangeVec_384768 v@@44 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_422329| v@@44))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384768 v@@44 i@@69))
)))
(assert (forall ((v@@45 T@Vec_422290) (i@@70 Int) ) (! (= (InRangeVec_384969 v@@45 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_422290| v@@45))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_384969 v@@45 i@@70))
)))
(assert (forall ((v@@46 T@Vec_422523) (i@@71 Int) ) (! (= (InRangeVec_385170 v@@46 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_422523| v@@46))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385170 v@@46 i@@71))
)))
(assert (forall ((v@@47 T@Vec_421811) (i@@72 Int) ) (! (= (InRangeVec_385371 v@@47 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_421811| v@@47))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385371 v@@47 i@@72))
)))
(assert (forall ((v@@48 T@Vec_448056) (i@@73 Int) ) (! (= (InRangeVec_385572 v@@48 i@@73)  (and (>= i@@73 0) (< i@@73 (|l#Vec_448056| v@@48))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385572 v@@48 i@@73))
)))
(assert (forall ((v@@49 T@Vec_450736) (i@@74 Int) ) (! (= (InRangeVec_385773 v@@49 i@@74)  (and (>= i@@74 0) (< i@@74 (|l#Vec_450736| v@@49))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_385773 v@@49 i@@74))
)))
(assert (forall ((v@@50 T@Vec_422080) (i@@75 Int) ) (! (= (InRangeVec_453498 v@@50 i@@75)  (and (>= i@@75 0) (< i@@75 (|l#Vec_422080| v@@50))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_453498 v@@50 i@@75))
)))
(assert (forall ((v@@51 T@Vec_92615) (i@@76 Int) ) (! (= (InRangeVec_16728 v@@51 i@@76)  (and (>= i@@76 0) (< i@@76 (|l#Vec_92615| v@@51))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@51 i@@76))
)))
(assert (forall ((v@@52 T@Vec_33444) (i@@77 Int) ) (! (= (InRangeVec_17837 v@@52 i@@77)  (and (>= i@@77 0) (< i@@77 (|l#Vec_33444| v@@52))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_17837 v@@52 i@@77))
)))
(assert (forall ((v@@53 T@Vec_33444) (e@@15 Int) ) (! (let ((i@@78 (IndexOfVec_33444 v@@53 e@@15)))
(ite  (not (exists ((i@@79 Int) ) (!  (and (InRangeVec_17837 v@@53 i@@79) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@53) i@@79) e@@15))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@78 (- 0 1))  (and (and (InRangeVec_17837 v@@53 i@@78) (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@53) i@@78) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@78)) (not (= (|Select__T@[Int]Int_| (|v#Vec_33444| v@@53) j@@15) e@@15)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_33444 v@@53 e@@15))
)))
(assert (forall ((v@@54 T@Vec_421811) (e@@16 T@$1_ValidatorConfig_Config) ) (! (let ((i@@80 (IndexOfVec_421811 v@@54 e@@16)))
(ite  (not (exists ((i@@81 Int) ) (!  (and (InRangeVec_385371 v@@54 i@@81) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@54) i@@81) e@@16))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@80 (- 0 1))  (and (and (InRangeVec_385371 v@@54 i@@80) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@54) i@@80) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@80)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_421811| v@@54) j@@16) e@@16)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_421811 v@@54 e@@16))
)))
(assert (forall ((v@@55 T@Vec_421850) (e@@17 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@82 (IndexOfVec_421850 v@@55 e@@17)))
(ite  (not (exists ((i@@83 Int) ) (!  (and (InRangeVec_383964 v@@55 i@@83) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@55) i@@83) e@@17))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@82 (- 0 1))  (and (and (InRangeVec_383964 v@@55 i@@82) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@55) i@@82) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@82)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| v@@55) j@@17) e@@17)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_421850 v@@55 e@@17))
)))
(assert (forall ((v@@56 T@Vec_421889) (e@@18 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@84 (IndexOfVec_421889 v@@56 e@@18)))
(ite  (not (exists ((i@@85 Int) ) (!  (and (InRangeVec_384165 v@@56 i@@85) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@56) i@@85) e@@18))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@84 (- 0 1))  (and (and (InRangeVec_384165 v@@56 i@@84) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@56) i@@84) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@84)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| v@@56) j@@18) e@@18)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_421889 v@@56 e@@18))
)))
(assert (forall ((v@@57 T@Vec_422023) (e@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@86 (IndexOfVec_422023 v@@57 e@@19)))
(ite  (not (exists ((i@@87 Int) ) (!  (and (InRangeVec_384366 v@@57 i@@87) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@57) i@@87) e@@19))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@86 (- 0 1))  (and (and (InRangeVec_384366 v@@57 i@@86) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@57) i@@86) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@86)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| v@@57) j@@19) e@@19)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422023 v@@57 e@@19))
)))
(assert (forall ((v@@58 T@Vec_422080) (e@@20 T@Vec_33444) ) (! (let ((i@@88 (IndexOfVec_422080 v@@58 e@@20)))
(ite  (not (exists ((i@@89 Int) ) (!  (and (InRangeVec_453498 v@@58 i@@89) (= (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@58) i@@89) e@@20))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@88 (- 0 1))  (and (and (InRangeVec_453498 v@@58 i@@88) (= (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@58) i@@88) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@88)) (not (= (|Select__T@[Int]Vec_33444_| (|v#Vec_422080| v@@58) j@@20) e@@20)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422080 v@@58 e@@20))
)))
(assert (forall ((v@@59 T@Vec_422290) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@90 (IndexOfVec_422290 v@@59 e@@21)))
(ite  (not (exists ((i@@91 Int) ) (!  (and (InRangeVec_384969 v@@59 i@@91) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@59) i@@91) e@@21))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@90 (- 0 1))  (and (and (InRangeVec_384969 v@@59 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@59) i@@90) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@90)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_422290| v@@59) j@@21) e@@21)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422290 v@@59 e@@21))
)))
(assert (forall ((v@@60 T@Vec_422329) (e@@22 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@92 (IndexOfVec_422329 v@@60 e@@22)))
(ite  (not (exists ((i@@93 Int) ) (!  (and (InRangeVec_384768 v@@60 i@@93) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@60) i@@93) e@@22))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@92 (- 0 1))  (and (and (InRangeVec_384768 v@@60 i@@92) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@60) i@@92) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@92)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_422329| v@@60) j@@22) e@@22)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422329 v@@60 e@@22))
)))
(assert (forall ((v@@61 T@Vec_422368) (e@@23 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@94 (IndexOfVec_422368 v@@61 e@@23)))
(ite  (not (exists ((i@@95 Int) ) (!  (and (InRangeVec_384567 v@@61 i@@95) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@61) i@@95) e@@23))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@94 (- 0 1))  (and (and (InRangeVec_384567 v@@61 i@@94) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@61) i@@94) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@94)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_422368| v@@61) j@@23) e@@23)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422368 v@@61 e@@23))
)))
(assert (forall ((v@@62 T@Vec_422523) (e@@24 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@96 (IndexOfVec_422523 v@@62 e@@24)))
(ite  (not (exists ((i@@97 Int) ) (!  (and (InRangeVec_385170 v@@62 i@@97) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@62) i@@97) e@@24))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@96 (- 0 1))  (and (and (InRangeVec_385170 v@@62 i@@96) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@62) i@@96) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@96)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_422523| v@@62) j@@24) e@@24)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_422523 v@@62 e@@24))
)))
(assert (forall ((v@@63 T@Vec_92615) (e@@25 Bool) ) (! (let ((i@@98 (IndexOfVec_92615 v@@63 e@@25)))
(ite  (not (exists ((i@@99 Int) ) (!  (and (InRangeVec_16728 v@@63 i@@99) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@63) i@@99) e@@25))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@98 (- 0 1))  (and (and (InRangeVec_16728 v@@63 i@@98) (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@63) i@@98) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@98)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_92615| v@@63) j@@25) e@@25)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_92615 v@@63 e@@25))
)))
(assert (forall ((v@@64 T@Vec_423840) (e@@26 |T@#0|) ) (! (let ((i@@100 (IndexOfVec_423840 v@@64 e@@26)))
(ite  (not (exists ((i@@101 Int) ) (!  (and (InRangeVec_383763 v@@64 i@@101) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@64) i@@101) e@@26))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@100 (- 0 1))  (and (and (InRangeVec_383763 v@@64 i@@100) (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@64) i@@100) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@100)) (not (= (|Select__T@[Int]#0_| (|v#Vec_423840| v@@64) j@@26) e@@26)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_423840 v@@64 e@@26))
)))
(assert (forall ((v@@65 T@Vec_448056) (e@@27 T@$1_XDX_XDX) ) (! (let ((i@@102 (IndexOfVec_448056 v@@65 e@@27)))
(ite  (not (exists ((i@@103 Int) ) (!  (and (InRangeVec_385572 v@@65 i@@103) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@65) i@@103) e@@27))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@102 (- 0 1))  (and (and (InRangeVec_385572 v@@65 i@@102) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@65) i@@102) e@@27)) (forall ((j@@27 Int) ) (!  (=> (and (>= j@@27 0) (< j@@27 i@@102)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_448056| v@@65) j@@27) e@@27)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_448056 v@@65 e@@27))
)))
(assert (forall ((v@@66 T@Vec_450736) (e@@28 T@$1_XUS_XUS) ) (! (let ((i@@104 (IndexOfVec_450736 v@@66 e@@28)))
(ite  (not (exists ((i@@105 Int) ) (!  (and (InRangeVec_385773 v@@66 i@@105) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@66) i@@105) e@@28))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@104 (- 0 1))  (and (and (InRangeVec_385773 v@@66 i@@104) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@66) i@@104) e@@28)) (forall ((j@@28 Int) ) (!  (=> (and (>= j@@28 0) (< j@@28 i@@104)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_450736| v@@66) j@@28) e@@28)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_450736 v@@66 e@@28))
)))
(assert (forall ((|l#0| Bool) (i@@106 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@106) |l#0|)
 :qid |DiemAccountbpl.275:54|
 :skolemid |3945|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@106))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_421725|) (|l#1| |T@[$1_Event_EventHandle]Multiset_421725|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#1| handle@@0))))
(Multiset_421725 (|lambda#45| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#0@@0| handle@@0)) (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemAccountbpl.3715:13|
 :skolemid |3946|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@107 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@107) (ite  (and (>= i@@107 |l#0@@1|) (< i@@107 |l#1@@0|)) (ite (< i@@107 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@107) (|Select__T@[Int]#0_| |l#4| (- i@@107 |l#5|))) |l#6|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3947|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@107))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@108 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@108) (ite  (and (<= |l#0@@2| i@@108) (< i@@108 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@108) |l#4@@0|)) |l#5@@0|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3948|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@108))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@29 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@29) (ite  (and (>= j@@29 |l#0@@3|) (< j@@29 |l#1@@2|)) (ite (< j@@29 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@29) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@29 |l#5@@1|))) |l#6@@0|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3949|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@29))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@109) (ite  (and (>= i@@109 |l#0@@4|) (< i@@109 |l#1@@3|)) (ite (< i@@109 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@109) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@109 |l#5@@2|))) |l#6@@1|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3950|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@109))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@110) (ite  (and (<= |l#0@@5| i@@110) (< i@@110 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@110) |l#4@@3|)) |l#5@@3|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3951|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@110))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@30) (ite  (and (>= j@@30 |l#0@@6|) (< j@@30 |l#1@@5|)) (ite (< j@@30 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@30) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@30 |l#5@@4|))) |l#6@@2|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3952|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@30))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@111) (ite  (and (>= i@@111 |l#0@@7|) (< i@@111 |l#1@@6|)) (ite (< i@@111 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@111) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@111 |l#5@@5|))) |l#6@@3|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3953|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@111))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@112) (ite  (and (<= |l#0@@8| i@@112) (< i@@112 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@112) |l#4@@6|)) |l#5@@6|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3954|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@112))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@31) (ite  (and (>= j@@31 |l#0@@9|) (< j@@31 |l#1@@8|)) (ite (< j@@31 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@31) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@31 |l#5@@7|))) |l#6@@4|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3955|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@31))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@113) (ite  (and (>= i@@113 |l#0@@10|) (< i@@113 |l#1@@9|)) (ite (< i@@113 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@113) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@113 |l#5@@8|))) |l#6@@5|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3956|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@113))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@114) (ite  (and (<= |l#0@@11| i@@114) (< i@@114 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@114) |l#4@@9|)) |l#5@@9|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3957|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@114))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@32) (ite  (and (>= j@@32 |l#0@@12|) (< j@@32 |l#1@@11|)) (ite (< j@@32 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@32) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@32 |l#5@@10|))) |l#6@@6|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3958|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@32))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@115) (ite  (and (>= i@@115 |l#0@@13|) (< i@@115 |l#1@@12|)) (ite (< i@@115 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@115) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@115 |l#5@@11|))) |l#6@@7|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3959|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@115))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@116) (ite  (and (<= |l#0@@14| i@@116) (< i@@116 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@116) |l#4@@12|)) |l#5@@12|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3960|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@116))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@33) (ite  (and (>= j@@33 |l#0@@15|) (< j@@33 |l#1@@14|)) (ite (< j@@33 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@33 |l#5@@13|))) |l#6@@8|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3961|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@33))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@117) (ite  (and (>= i@@117 |l#0@@16|) (< i@@117 |l#1@@15|)) (ite (< i@@117 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@117) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@117 |l#5@@14|))) |l#6@@9|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3962|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@117))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@118) (ite  (and (<= |l#0@@17| i@@118) (< i@@118 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@118) |l#4@@15|)) |l#5@@15|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3963|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@118))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@34) (ite  (and (>= j@@34 |l#0@@18|) (< j@@34 |l#1@@17|)) (ite (< j@@34 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@34) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@34 |l#5@@16|))) |l#6@@10|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3964|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@34))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@119) (ite  (and (>= i@@119 |l#0@@19|) (< i@@119 |l#1@@18|)) (ite (< i@@119 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@119) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@119 |l#5@@17|))) |l#6@@11|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3965|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@119))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@120) (ite  (and (<= |l#0@@20| i@@120) (< i@@120 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@120) |l#4@@18|)) |l#5@@18|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3966|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@120))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@35) (ite  (and (>= j@@35 |l#0@@21|) (< j@@35 |l#1@@20|)) (ite (< j@@35 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@35) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@35 |l#5@@19|))) |l#6@@12|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3967|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@35))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@121) (ite  (and (>= i@@121 |l#0@@22|) (< i@@121 |l#1@@21|)) (ite (< i@@121 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@121) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@121 |l#5@@20|))) |l#6@@13|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3968|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@121))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@122 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@122) (ite  (and (<= |l#0@@23| i@@122) (< i@@122 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@122) |l#4@@21|)) |l#5@@21|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3969|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@122))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@36) (ite  (and (>= j@@36 |l#0@@24|) (< j@@36 |l#1@@23|)) (ite (< j@@36 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@36) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@36 |l#5@@22|))) |l#6@@14|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3970|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@36))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@123 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@123) (ite  (and (>= i@@123 |l#0@@25|) (< i@@123 |l#1@@24|)) (ite (< i@@123 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@123) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@123 |l#5@@23|))) |l#6@@15|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3971|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@123))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@124 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@124) (ite  (and (<= |l#0@@26| i@@124) (< i@@124 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@124) |l#4@@24|)) |l#5@@24|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3972|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@124))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@37) (ite  (and (>= j@@37 |l#0@@27|) (< j@@37 |l#1@@26|)) (ite (< j@@37 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@37) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@37 |l#5@@25|))) |l#6@@16|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3973|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@37))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@125 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@125) (ite  (and (>= i@@125 |l#0@@28|) (< i@@125 |l#1@@27|)) (ite (< i@@125 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@125) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@125 |l#5@@26|))) |l#6@@17|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3974|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@125))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@126 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@126) (ite  (and (<= |l#0@@29| i@@126) (< i@@126 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@126) |l#4@@27|)) |l#5@@27|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3975|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@126))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@38 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@38) (ite  (and (>= j@@38 |l#0@@30|) (< j@@38 |l#1@@29|)) (ite (< j@@38 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@38) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@38 |l#5@@28|))) |l#6@@18|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3976|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@38))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@127 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@127) (ite  (and (>= i@@127 |l#0@@31|) (< i@@127 |l#1@@30|)) (ite (< i@@127 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@127) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@127 |l#5@@29|))) |l#6@@19|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3977|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@127))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@128 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@128) (ite  (and (<= |l#0@@32| i@@128) (< i@@128 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@128) |l#4@@30|)) |l#5@@30|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3978|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@128))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@39 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@39) (ite  (and (>= j@@39 |l#0@@33|) (< j@@39 |l#1@@32|)) (ite (< j@@39 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@39) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@39 |l#5@@31|))) |l#6@@20|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3979|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@39))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_33444|) (|l#4@@32| |T@[Int]Vec_33444|) (|l#5@@32| Int) (|l#6@@21| T@Vec_33444) (i@@129 Int) ) (! (= (|Select__T@[Int]Vec_33444_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@129) (ite  (and (>= i@@129 |l#0@@34|) (< i@@129 |l#1@@33|)) (ite (< i@@129 |l#2@@32|) (|Select__T@[Int]Vec_33444_| |l#3@@32| i@@129) (|Select__T@[Int]Vec_33444_| |l#4@@32| (- i@@129 |l#5@@32|))) |l#6@@21|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3980|
 :pattern ( (|Select__T@[Int]Vec_33444_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@129))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_33444|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_33444) (i@@130 Int) ) (! (= (|Select__T@[Int]Vec_33444_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@130) (ite  (and (<= |l#0@@35| i@@130) (< i@@130 |l#1@@34|)) (|Select__T@[Int]Vec_33444_| |l#2@@33| (- (- |l#3@@33| i@@130) |l#4@@33|)) |l#5@@33|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3981|
 :pattern ( (|Select__T@[Int]Vec_33444_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@130))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_33444|) (|l#4@@34| |T@[Int]Vec_33444|) (|l#5@@34| Int) (|l#6@@22| T@Vec_33444) (j@@40 Int) ) (! (= (|Select__T@[Int]Vec_33444_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@40) (ite  (and (>= j@@40 |l#0@@36|) (< j@@40 |l#1@@35|)) (ite (< j@@40 |l#2@@34|) (|Select__T@[Int]Vec_33444_| |l#3@@34| j@@40) (|Select__T@[Int]Vec_33444_| |l#4@@34| (+ j@@40 |l#5@@34|))) |l#6@@22|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3982|
 :pattern ( (|Select__T@[Int]Vec_33444_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@40))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Bool|) (|l#4@@35| |T@[Int]Bool|) (|l#5@@35| Int) (|l#6@@23| Bool) (i@@131 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@131) (ite  (and (>= i@@131 |l#0@@37|) (< i@@131 |l#1@@36|)) (ite (< i@@131 |l#2@@35|) (|Select__T@[Int]Bool_| |l#3@@35| i@@131) (|Select__T@[Int]Bool_| |l#4@@35| (- i@@131 |l#5@@35|))) |l#6@@23|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3983|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@131))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Bool|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Bool) (i@@132 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@132) (ite  (and (<= |l#0@@38| i@@132) (< i@@132 |l#1@@37|)) (|Select__T@[Int]Bool_| |l#2@@36| (- (- |l#3@@36| i@@132) |l#4@@36|)) |l#5@@36|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3984|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@132))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Bool|) (|l#4@@37| |T@[Int]Bool|) (|l#5@@37| Int) (|l#6@@24| Bool) (j@@41 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@41) (ite  (and (>= j@@41 |l#0@@39|) (< j@@41 |l#1@@38|)) (ite (< j@@41 |l#2@@37|) (|Select__T@[Int]Bool_| |l#3@@37| j@@41) (|Select__T@[Int]Bool_| |l#4@@37| (+ j@@41 |l#5@@37|))) |l#6@@24|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3985|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@41))
)))
(assert (forall ((|l#0@@40| Int) (|l#1@@39| Int) (|l#2@@38| Int) (|l#3@@38| |T@[Int]Int|) (|l#4@@38| |T@[Int]Int|) (|l#5@@38| Int) (|l#6@@25| Int) (i@@133 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#42| |l#0@@40| |l#1@@39| |l#2@@38| |l#3@@38| |l#4@@38| |l#5@@38| |l#6@@25|) i@@133) (ite  (and (>= i@@133 |l#0@@40|) (< i@@133 |l#1@@39|)) (ite (< i@@133 |l#2@@38|) (|Select__T@[Int]Int_| |l#3@@38| i@@133) (|Select__T@[Int]Int_| |l#4@@38| (- i@@133 |l#5@@38|))) |l#6@@25|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3986|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#42| |l#0@@40| |l#1@@39| |l#2@@38| |l#3@@38| |l#4@@38| |l#5@@38| |l#6@@25|) i@@133))
)))
(assert (forall ((|l#0@@41| Int) (|l#1@@40| Int) (|l#2@@39| |T@[Int]Int|) (|l#3@@39| Int) (|l#4@@39| Int) (|l#5@@39| Int) (i@@134 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@39| |l#3@@39| |l#4@@39| |l#5@@39|) i@@134) (ite  (and (<= |l#0@@41| i@@134) (< i@@134 |l#1@@40|)) (|Select__T@[Int]Int_| |l#2@@39| (- (- |l#3@@39| i@@134) |l#4@@39|)) |l#5@@39|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3987|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@39| |l#3@@39| |l#4@@39| |l#5@@39|) i@@134))
)))
(assert (forall ((|l#0@@42| Int) (|l#1@@41| Int) (|l#2@@40| Int) (|l#3@@40| |T@[Int]Int|) (|l#4@@40| |T@[Int]Int|) (|l#5@@40| Int) (|l#6@@26| Int) (j@@42 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#44| |l#0@@42| |l#1@@41| |l#2@@40| |l#3@@40| |l#4@@40| |l#5@@40| |l#6@@26|) j@@42) (ite  (and (>= j@@42 |l#0@@42|) (< j@@42 |l#1@@41|)) (ite (< j@@42 |l#2@@40|) (|Select__T@[Int]Int_| |l#3@@40| j@@42) (|Select__T@[Int]Int_| |l#4@@40| (+ j@@42 |l#5@@40|))) |l#6@@26|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3988|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#44| |l#0@@42| |l#1@@41| |l#2@@40| |l#3@@40| |l#4@@40| |l#5@@40| |l#6@@26|) j@@42))
)))
(assert (forall ((|l#0@@43| |T@[$EventRep]Int|) (|l#1@@42| |T@[$EventRep]Int|) (v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#45| |l#0@@43| |l#1@@42|) v@@67) (- (|Select__T@[$EventRep]Int_| |l#0@@43| v@@67) (|Select__T@[$EventRep]Int_| |l#1@@42| v@@67)))
 :qid |DiemAccountbpl.154:29|
 :skolemid |3989|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#45| |l#0@@43| |l#1@@42|) v@@67))
)))
; Valid

