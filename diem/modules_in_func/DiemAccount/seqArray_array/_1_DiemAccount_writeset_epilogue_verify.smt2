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
(declare-fun $t43 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3 () T@$Memory_472293)
(declare-fun $t44 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_471307)
(declare-fun $t45 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_487225)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_487225)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t9 () T@$1_Event_EventHandle)
(declare-fun $t10 () T@$1_DiemAccount_AdminTransactionEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_421725_| (|T@[$1_Event_EventHandle]Multiset_421725| T@$1_Event_EventHandle T@Multiset_421725) |T@[$1_Event_EventHandle]Multiset_421725|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_421725|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_421725)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|Store__T@[$1_Event_EventHandle]Multiset_421725_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_421725|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_421725)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|Store__T@[$1_Event_EventHandle]Multiset_421725_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_421725_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t2 () Bool)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_495874)
(declare-fun $t11 () T@$1_DiemConfig_Configuration)
(declare-fun $t12 () T@$1_Event_EventHandle)
(declare-fun $t37 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_472293)
(declare-fun $t38 () Int)
(declare-fun $t39 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_472293)
(declare-fun $t40 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t41 () T@$1_Event_EventHandle)
(declare-fun $t35 () T@$1_Event_EventHandle)
(declare-fun $t42 () Bool)
(declare-fun $t34 () T@$1_DiemConfig_Configuration)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_472293)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_472293)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t36 () Bool)
(declare-fun $t31 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun $t32 () T@$1_DiemConfig_Configuration)
(declare-fun $t33 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_472013)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $abort_flag@65 () Bool)
(declare-fun $abort_flag@64 () Bool)
(declare-fun $abort_code@64 () Int)
(declare-fun $abort_code@63 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_487225)
(declare-fun $abort_flag@63 () Bool)
(declare-fun $abort_code@62 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $abort_code@59 () Int)
(declare-fun $abort_flag@60 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_487225)
(declare-fun inline$$1_CRSN_record$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0| () Int)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@57 () Int)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0| () Bool)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2| () T@$Mutation_546962)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1| () T@$Mutation_546962)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t13@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3| () T@$Mutation_546916)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2| () T@$Mutation_546916)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@0| () T@$Memory_473001)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_473001)
(declare-fun |Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| Int |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| Int) |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@61 () Int)
(declare-fun $abort_flag@62 () Bool)
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
(declare-fun $abort_flag@61 () Bool)
(declare-fun $abort_code@60 () Int)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| () Bool)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0| () Bool)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t3@0| () T@$Mutation_546916)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@0| () T@$Mutation_546962)
(declare-fun |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t4@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t72@0| () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@2| () T@$Mutation_546962)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1| () T@$Mutation_546962)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@2| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t71@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@3| () T@$Mutation_668571)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2| () T@$Mutation_668571)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_478004)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_478004)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t73@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@0| () Int)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0| () Int)
(declare-fun |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t65@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@0| () T@$Mutation_668571)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0| () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@1| () T@$Mutation_668571)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@1| () T@$Mutation_18461)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2| () T@$Mutation_657796)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@2| () T@$Mutation_18461)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@3| () T@$Mutation_657796)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t57@1| () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@59 () Bool)
(declare-fun $abort_code@58 () Int)
(declare-fun inline$$1_CRSN_record$0$$ret0@0 () Bool)
(declare-fun inline$$1_CRSN_record$0$$t10@1 () Int)
(declare-fun $abort_flag@56 () Bool)
(declare-fun $abort_code@55 () Int)
(declare-fun $abort_flag@29 () Bool)
(declare-fun $abort_code@28 () Int)
(declare-fun $abort_flag@27 () Bool)
(declare-fun $abort_code@26 () Int)
(declare-fun $abort_flag@26 () Bool)
(declare-fun $abort_code@25 () Int)
(declare-fun $abort_flag@24 () Bool)
(declare-fun $abort_code@23 () Int)
(declare-fun $abort_flag@23 () Bool)
(declare-fun $abort_code@22 () Int)
(declare-fun $abort_flag@57 () Bool)
(declare-fun inline$$1_CRSN_record$0$$t16@1 () Bool)
(declare-fun $abort_code@56 () Int)
(declare-fun $1_CRSN_CRSN_$memory@0 () T@$Memory_576150)
(declare-fun $1_CRSN_CRSN_$memory () T@$Memory_576150)
(declare-fun inline$$1_CRSN_shift_window_right$0$$ret0 () T@$Mutation_577037)
(declare-fun |Store__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int T@$1_CRSN_CRSN) |T@[Int]$1_CRSN_CRSN|)
(declare-fun |Select__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int) T@$1_CRSN_CRSN)
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_CRSN_CRSN_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_CRSN_shift_window_right$0$$t5@1 () Int)
(declare-fun $abort_flag@54 () Bool)
(declare-fun $abort_code@53 () Int)
(declare-fun $abort_flag@53 () Bool)
(declare-fun $abort_code@52 () Int)
(declare-fun $abort_flag@35 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun $abort_flag@55 () Bool)
(declare-fun $abort_code@54 () Int)
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
(declare-fun $abort_flag@52 () Bool)
(declare-fun $abort_code@51 () Int)
(declare-fun inline$$AddU64$4$dst@2 () Int)
(declare-fun inline$$AddU64$4$dst@0 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t13@1 () Int)
(declare-fun inline$$AddU64$4$dst@1 () Int)
(declare-fun $abort_code@50 () Int)
(declare-fun $abort_flag@51 () Bool)
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
(declare-fun $abort_flag@47 () Bool)
(declare-fun $abort_code@46 () Int)
(declare-fun $abort_flag@45 () Bool)
(declare-fun $abort_code@44 () Int)
(declare-fun $abort_flag@49 () Bool)
(declare-fun $abort_code@48 () Int)
(declare-fun inline$$AddU64$3$dst@2 () Int)
(declare-fun inline$$AddU64$3$dst@0 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t1@1 () Int)
(declare-fun inline$$AddU64$3$dst@1 () Int)
(declare-fun $abort_code@47 () Int)
(declare-fun $abort_flag@48 () Bool)
(declare-fun $abort_flag@46 () Bool)
(declare-fun |inline$$1_BitVector_set$1$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$1$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$1$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$3$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_set$1$$t0@1 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_shift_left$0$$t0@1 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@45 () Int)
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
(declare-fun $abort_flag@41 () Bool)
(declare-fun $abort_code@40 () Int)
(declare-fun inline$$1_BitVector_is_index_set$2$$ret0@1 () Bool)
(declare-fun $abort_flag@44 () Bool)
(declare-fun $abort_code@43 () Int)
(declare-fun $abort_flag@43 () Bool)
(declare-fun |inline$$1_BitVector_unset$1$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$1$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$1$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_unset$1$$t0@1 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@42 () Int)
(declare-fun inline$$1_BitVector_unset$1$$t7@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$dst@0| () T@$Mutation_17352)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$m'@0| () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$v@1| () T@Vec_92615)
(declare-fun inline$$Sub$5$dst@2 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$2$dst@1| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$1$$t11@1 () T@$Mutation_456873)
(declare-fun $abort_code@41 () Int)
(declare-fun $abort_flag@42 () Bool)
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
(declare-fun $abort_flag@40 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$2$dst@2| () Bool)
(declare-fun $abort_code@39 () Int)
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
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@38 () Int)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun inline$$1_BitVector_shift_left$0$$t29@1 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@38 () Bool)
(declare-fun $abort_code@37 () Int)
(declare-fun $abort_flag@37 () Bool)
(declare-fun |inline$$1_BitVector_unset$0$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$0$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$0$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_unset$0$$t0@1 () T@$Mutation_572160)
(declare-fun inline$$1_BitVector_shift_left$0$$t0@2 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@36 () Int)
(declare-fun inline$$1_BitVector_unset$0$$t7@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$dst@0| () T@$Mutation_17352)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$m'@0| () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$v@1| () T@Vec_92615)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$1$dst@1| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_unset$0$$t11@1 () T@$Mutation_456873)
(declare-fun $abort_code@35 () Int)
(declare-fun $abort_flag@36 () Bool)
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
(declare-fun $abort_flag@50 () Bool)
(declare-fun $abort_code@49 () Int)
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
(declare-fun $abort_flag@33 () Bool)
(declare-fun inline$$Sub$3$dst@2 () Int)
(declare-fun $abort_code@32 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@0 () Int)
(declare-fun $abort_flag@34 () Bool)
(declare-fun $abort_code@33 () Int)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_flag@31 () Bool)
(declare-fun $abort_code@30 () Int)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$Sub$3$dst@0 () Int)
(declare-fun inline$$Sub$3$dst@1 () Int)
(declare-fun $abort_flag@32 () Bool)
(declare-fun $abort_code@31 () Int)
(declare-fun inline$$1_BitVector_is_index_set$1$$ret0@1 () Bool)
(declare-fun $abort_flag@30 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$1$dst@2| () Bool)
(declare-fun $abort_code@29 () Int)
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
(declare-fun $abort_flag@28 () Bool)
(declare-fun |inline$$1_BitVector_set$0$$temp_0'bool'@1| () Bool)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$dst@2| () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$0$$t12@1 () T@$Mutation_17352)
(declare-fun inline$$1_BitVector_set$0$$t11@2 () T@$Mutation_456873)
(declare-fun |inline$$1_Vector_borrow_mut'bool'$0$m'@1| () T@$Mutation_456873)
(declare-fun inline$$1_BitVector_set$0$$t0@1 () T@$Mutation_572160)
(declare-fun inline$$1_CRSN_record$0$$t14@1 () T@$Mutation_572160)
(declare-fun |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2| () T@$1_BitVector_BitVector)
(declare-fun $abort_code@27 () Int)
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
(declare-fun $abort_flag@25 () Bool)
(declare-fun $abort_code@24 () Int)
(declare-fun inline$$1_CRSN_record$0$$t19@1 () Int)
(declare-fun inline$$1_CRSN_record$0$$t18@2 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t18@0 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t18@1 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t17@1 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t5@1 () Bool)
(declare-fun $abort_flag@22 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $abort_code@20 () Int)
(declare-fun $abort_flag@21 () Bool)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@1 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t4@1 () Bool)
(declare-fun $abort_code@17 () Int)
(declare-fun $abort_flag@18 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t13@1 () Int)
(declare-fun inline$$1_CRSN_check$0$$ret0@0 () Bool)
(declare-fun $abort_flag@20 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@2| () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$t6@1 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@0| () Bool)
(declare-fun inline$$1_BitVector_is_index_set$0$$t10@1 () T@Vec_92615)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@1| () Bool)
(declare-fun $abort_flag@19 () Bool)
(declare-fun $abort_code@18 () Int)
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
(declare-fun $abort_flag@17 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun inline$$CastU128$2$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@2 () Int)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun $abort_flag@12 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun inline$$AddU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$3$dst@1 () Int)
(declare-fun inline$$CastU128$4$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@1 () Int)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun inline$$CastU128$4$dst@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@1 () Int)
(declare-fun $abort_code@14 () Int)
(declare-fun $abort_flag@15 () Bool)
(declare-fun $abort_flag@14 () Bool)
(declare-fun |inline$$1_Vector_length'bool'$0$l@1| () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$t1@1 () T@Vec_92615)
(declare-fun inline$$1_CRSN_check$0$$t23@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$CastU128$3$dst@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t21@1 () Int)
(declare-fun $abort_code@13 () Int)
(declare-fun $abort_flag@13 () Bool)
(declare-fun inline$$CastU128$2$dst@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t17@1 () Int)
(declare-fun |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1| () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_check$0$$t16@0 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_check$0$$t11@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t16@1 () T@$Mutation_577037)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_CRSN_has_crsn$1$$t1@1 () Bool)
(declare-fun inline$$1_CRSN_check$0$$t15@0 () Int)
(declare-fun inline$$1_CRSN_check$0$$t7@0 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_check$0$$t9@0 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_check$0$$t10@0 () Int)
(declare-fun inline$$1_CRSN_record$0$$t3@0 () T@$Mutation_577037)
(declare-fun inline$$1_CRSN_record$0$$t14@0 () T@$Mutation_572160)
(declare-fun inline$$1_CRSN_record$0$$t7@0 () T@$1_CRSN_CRSN)
(declare-fun inline$$1_CRSN_record$0$$t8@0 () Int)
(declare-fun inline$$1_CRSN_has_crsn$0$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t54@1| () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0| () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t53@1| () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0| () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t43@1| () Int)
(declare-fun inline$$CastU64$0$dst@1 () Int)
(declare-fun inline$$CastU64$0$dst@0 () Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@0| () T@$Mutation_657796)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@1| () T@$Mutation_657796)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0| () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0| () Int)
(declare-fun inline$$MulU128$0$dst@2 () Int)
(declare-fun inline$$MulU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$MulU128$0$dst@1 () Int)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0| () Int)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t19@0| () T@$Mutation_546962)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t22@0| () T@$Mutation_657796)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t23@0| () T@$Mutation_668571)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@0| () T@$Mutation_18461)
(declare-fun |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@0| () T@$Mutation_546962)
(declare-fun inline$$1_Roles_has_diem_root_role$0$$ret0@1 () Bool)
(declare-fun $t27 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_diem_root_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun $t22@0 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t24 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t16@0 () T@$Mutation_464575)
(declare-fun $t19@0 () T@$1_DiemAccount_AdminTransactionEvent)
(declare-fun $t18 () Bool)
(declare-fun $t17 () Int)
(declare-fun |$temp_0'$1_DiemAccount_DiemWriteSetManager'@0| () T@$1_DiemAccount_DiemWriteSetManager)
(declare-fun $t14@1 () T@$Mutation_1070810)
(declare-fun $t14 () T@$Mutation_1070810)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_473651)
(declare-fun $t14@0 () T@$Mutation_1070810)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int) T@$1_DiemAccount_DiemWriteSetManager)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_477551)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_477156)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_472200)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_472379)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_472452)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_472523)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_472607)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_472691)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_472762)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_472846)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_472930)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_473098)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_477889)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_473182)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_473266)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_473337)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_473408)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_473580)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_487325)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_487410)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_478064)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_487544)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_487799)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_487899)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_473722)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_473806)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_471884)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun $t8 () T@$Mutation_1070810)
(declare-fun $t16 () T@$Mutation_464575)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_writeset_epilogue$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 2626409) (let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Else_correct true))
(let ((inline$$1_BitVector_shift_left$0$anon50_Else_correct true))
(let ((inline$$1_BitVector_shift_left$0$anon58_Else_correct true))
(let ((inline$$1_BitVector_shift_left$0$anon62_Else_correct true))
(let ((anon38_Then_correct true))
(let ((L7_correct  (=> (= $t43 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory@3) 173345816)) (=> (and (= $t44 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t45 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t43)))) (and (=> (= (ControlFlow 0 1968631) (- 0 2641067)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr)) (not (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr)))) 0)))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr)) (not (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr)))) 0))))))
 :qid |DiemAccountbpl.103652:15|
 :skolemid |3644|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@0)) (not (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)))) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@0)) (not (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@0)))) 0))))))
 :qid |DiemAccountbpl.103652:15|
 :skolemid |3644|
)) (and (=> (= (ControlFlow 0 1968631) (- 0 2641113)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@1)) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@1)) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@1)))) 0))))
 :qid |DiemAccountbpl.103657:15|
 :skolemid |3645|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@2)) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@2)))) 0)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@2)) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@2)))) 0))))
 :qid |DiemAccountbpl.103657:15|
 :skolemid |3645|
)) (and (=> (= (ControlFlow 0 1968631) (- 0 2641163)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@3) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@3)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@3)))))
 :qid |DiemAccountbpl.103662:15|
 :skolemid |3646|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@4) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory@2) addr@@4)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@4)))))
 :qid |DiemAccountbpl.103662:15|
 :skolemid |3646|
)) (and (=> (= (ControlFlow 0 1968631) (- 0 2641198)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new (let ((len (|l#Multiset_421725| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@0) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@0) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@68 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected) handle@@1)) v@@68) (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual) handle@@1)) v@@68))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3721:13|
 :skolemid |137|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_421725| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@1) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@1) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@69 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@0) handle@@2)) v@@69) (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@0) handle@@2)) v@@69))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3721:13|
 :skolemid |137|
))))) (and (=> (= (ControlFlow 0 1968631) (- 0 2641223)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and _$t2 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_495874| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t44 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11))))) (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_421725| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@1))))) $t12)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_421725| stream@@2)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t45))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t45) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_421725| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@1))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_421725| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@1))))) $t12 stream_new@@2)))) (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_421725| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@3) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@1)))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@1) handle@@3)) (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@1) handle@@3))) (forall ((v@@70 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@1) handle@@3)) v@@70) (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@1) handle@@3)) v@@70))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3721:13|
 :skolemid |137|
)))))) (=> (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and _$t2 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_495874| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t44 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11))))) (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_421725| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@3))))) $t12)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_421725| stream@@4)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t45))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t45) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_421725| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@3))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_421725| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@3))))) $t12 stream_new@@4)))) (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_421725| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@3)))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@2) handle@@4)) (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@2) handle@@4))) (forall ((v@@71 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@2) handle@@4)) v@@71) (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@2) handle@@4)) v@@71))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3721:13|
 :skolemid |137|
))))) (=> (= (ControlFlow 0 1968631) (- 0 2641277)) (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (and _$t2 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_495874| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t44 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11))))) (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_421725| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@5))))) $t12)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_421725| stream@@6)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@6) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t45))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@6) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t45) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_421725| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@5))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_421725| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@5))))) $t12 stream_new@@6)))) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_421725| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t10) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $EmptyEventStore) $t9 stream_new@@5)))))))
 (and (<= (|counter#$EventStore| actual@@3) (|counter#$EventStore| expected@@3)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@3) handle@@5)) (|l#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@3) handle@@5))) (forall ((v@@72 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| actual@@3) handle@@5)) v@@72) (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| expected@@3) handle@@5)) v@@72))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3721:13|
 :skolemid |137|
))))))))))))))))))))
(let ((anon26_correct  (=> (= $t37 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (and (= $t38 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t39 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t37)))) (=> (and (and (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472293| $1_DiemConfig_Configuration_$memory@2) 173345816)) (= $t40 $t39)) (and (= $t41 $t35) (= $t42  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_495874| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t38 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t34))))))) (and (and (= $es@1 (ite $t42 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $es@0) $t41)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_421725| stream@@8)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $es@0) $t41 stream_new@@7)))) $es@0)) (= $es@2 $es@1)) (and (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory@2) (= (ControlFlow 0 1968891) 1968631)))) L7_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_472293 (|Store__T@[Int]Bool_| (|domain#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 1968793) 1968891))) anon26_correct)))
(let ((anon39_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_472293 (|Store__T@[Int]Bool_| (|domain#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 1968903) 1968891))) anon26_correct)))
(let ((anon38_Else_correct  (=> (not $t36) (and (=> (= (ControlFlow 0 1968781) 1968903) anon39_Then_correct) (=> (= (ControlFlow 0 1968781) 1968793) anon39_Else_correct)))))
(let ((anon37_Then_correct  (=> _$t2 (=> (and (= $t31 (|$addr#$signer| _$t0)) (= $t32 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= $t33 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t34 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t35 (|$events#$1_DiemConfig_Configuration| $t34)) (= $t36  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) $t31)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) $t31)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_495874| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t32) 18446744073709551615)) (< $t33 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t32))))))) (and (=> (= (ControlFlow 0 1968773) 1969025) anon38_Then_correct) (=> (= (ControlFlow 0 1968773) 1968781) anon38_Else_correct)))))))
(let ((anon37_Else_correct  (=> (and (and (not _$t2) (= $es@2 $es@0)) (and (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory) (= (ControlFlow 0 1968310) 1968631))) L7_correct)))
(let ((anon36_Else_correct  (=> (not $abort_flag@65) (and (=> (= (ControlFlow 0 1968304) 1968773) anon37_Then_correct) (=> (= (ControlFlow 0 1968304) 1968310) anon37_Else_correct)))))
(let ((anon36_Then_correct true))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L17_correct|  (=> (= $abort_flag@65 $abort_flag@64) (=> (and (= $abort_code@64 $abort_code@63) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 1951930) 1969039) anon36_Then_correct) (=> (= (ControlFlow 0 1951930) 1968304) anon36_Else_correct))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon91_Else_correct|  (=> (and (and (not $abort_flag@63) (= $abort_code@63 $abort_code@62)) (and (= $abort_flag@64 $abort_flag@63) (= (ControlFlow 0 1953378) 1951930))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L17_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon85_Else_correct|  (=> (and (and (not inline$$Gt$0$dst@1) (= $abort_code@63 $abort_code@59)) (and (= $abort_flag@64 $abort_flag@60) (= (ControlFlow 0 1951926) 1951930))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L17_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|  (=> (= $abort_flag@65 true) (=> (and (= $abort_code@64 |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1|) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 1950157) 1969039) anon36_Then_correct) (=> (= (ControlFlow 0 1950157) 1968304) anon36_Else_correct))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon82_Else_correct|  (=> (not inline$$1_CRSN_record$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968094) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon81_Then_correct|  (=> $abort_flag@58 (=> (and (and (= $abort_code@57 $abort_code@57) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@57)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968112) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon91_Then_correct|  (=> $abort_flag@63 (=> (and (and (= $abort_code@62 $abort_code@62) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@62)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0) (= (ControlFlow 0 1953392) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Else_correct|  (=> (not |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0|) (=> (and (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2| ($Mutation_546962 (|l#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|) (|p#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1|)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|))) (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|)) (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t13@1|) (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0|))))) (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3| ($Mutation_546916 (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|) (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|) (|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@2|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))))) (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@0| ($Memory_473001 (|Store__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3|)) true) (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3|)) (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@3|))))) (and (= $abort_code@62 $abort_code@61) (= $abort_flag@63 $abort_flag@62)))) (and (=> (= (ControlFlow 0 1953222) 1953392) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon91_Then_correct|) (=> (= (ControlFlow 0 1953222) 1953378) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon91_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|  (=> (and (= $abort_code@62 |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1|) (= $abort_flag@63 true)) (and (=> (= (ControlFlow 0 1953064) 1953392) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon91_Then_correct|) (=> (= (ControlFlow 0 1953064) 1953378) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon91_Else_correct|)))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Then_correct|  (=> |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0| (=> (and (and (and (> (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0|)) 18446744073709551615) (= 8 |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|) (= (ControlFlow 0 1953258) 1953064))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Else_correct|  (=> (and (not $abort_flag@62) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_TransactionFee_TransactionFee'$1_XUS_XUS''@1| (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))) (=> (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_TransactionFee_TransactionFee'$1_XUS_XUS''@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$temp_0'$1_TransactionFee_TransactionFee'$1_XUS_XUS''@1|) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1| ($Mutation_546962 (|l#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|) (let ((l (|l#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|)) l 0) (+ l 1))) (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|v#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2|))))) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t13@1| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|)) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t14@0| (> (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@1|)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0|)) 18446744073709551615)))) (and (=> (= (ControlFlow 0 1953152) 1953258) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 1953152) 1953222) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon21_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Then_correct|  (=> (and (and $abort_flag@62 (= $abort_code@61 $abort_code@61)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| $abort_code@61) (= (ControlFlow 0 1953272) 1953064))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then$1_correct|  (=> (= $abort_flag@62 true) (=> (and (= $abort_code@61 $EXEC_FAILURE_CODE) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@0|)) (and (=> (= (ControlFlow 0 1953324) 1953272) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 1953324) 1953152) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (= (ControlFlow 0 1953322) 1953324)) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then$1_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453) (=> (and (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@1| ($Mutation_546916 ($Global 186537453) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (= $abort_flag@62 $abort_flag@61)) (and (= $abort_code@61 $abort_code@60) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@2| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@1|))) (and (=> (= (ControlFlow 0 1953096) 1953272) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 1953096) 1953152) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon20_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 1953074) 1953322) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 1953074) 1953096) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon19_Else_correct|)))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1|) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 1953058) 1953064))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (and (not $abort_flag@61) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| 5)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1|))) (and (=> (= (ControlFlow 0 1953042) 1953074) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 1953042) 1953058) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon18_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Then_correct|  (=> (and (and $abort_flag@61 (= $abort_code@60 $abort_code@60)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| $abort_code@60) (= (ControlFlow 0 1953338) 1953064))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon0_correct|  (=> (|$IsValid'address'| 186537453) (=> (and (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t1@1|)) (and (=> (= (ControlFlow 0 1953000) 1953338) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 1953000) 1953042) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon17_Else_correct|))))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Else_correct|  (=> (and (not |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0|) (= (ControlFlow 0 1953006) 1953000)) |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Then_correct|  (=> |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|)) (and (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@1| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t6@0|) (= (ControlFlow 0 1953364) 1953064))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon0_correct|  (=> (and (= (|l#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t3@0|)) 0) (= (|l#Vec_33444| (|p#$Mutation_546916| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t11@0|)) 0)) (=> (and (and (= (|l#Vec_33444| (|p#$Mutation_546962| |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t12@0|)) 0) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t4@0| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0|) (= |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$$t5@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 1952913) 1953364) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 1952913) 1953006) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon16_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon90_Else_correct|  (=> (not |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t72@0|) (=> (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@2| ($Mutation_546962 (|l#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1|) (|p#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1|) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@2|)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@2|))) (=> (and (and (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@2|)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0|)) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@2|)) (- (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t71@1|) inline$$MulU64$0$dst@2)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t70@0|) inline$$MulU64$0$dst@2))) (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@3| ($Mutation_668571 (|l#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2|) (|p#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2|) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@2|)))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_478004 (|Store__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@3|)) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@3|)) (|v#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@3|))))) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t73@0| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (= (ControlFlow 0 1953368) 1952913)))) |inline$$1_TransactionFee_pay_fee'$1_XUS_XUS'$0$anon0_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon90_Then_correct|  (=> |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t72@0| (=> (and (< (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1|)) inline$$MulU64$0$dst@2) (= 8 |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@0|)) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0) (= (ControlFlow 0 1953422) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon89_Then_correct|  (=> inline$$Le$1$dst@1 (=> (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t71@1| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1|)) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t72@0| (< (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1|)) inline$$MulU64$0$dst@2))) (and (=> (= (ControlFlow 0 1952229) 1953422) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon90_Then_correct|) (=> (= (ControlFlow 0 1952229) 1953368) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon90_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon89_Else_correct|  (=> (not inline$$Le$1$dst@1) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0) (= (ControlFlow 0 1952207) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon88_Else$1_correct|  (=> (|$IsValid'u64'| 1005) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0| 8)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t69@0|) (= inline$$Le$1$dst@1 inline$$Le$1$dst@1))) (and (=> (= (ControlFlow 0 1952191) 1952229) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon89_Then_correct|) (=> (= (ControlFlow 0 1952191) 1952207) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon89_Else_correct|))))))
(let ((inline$$Le$1$anon0_correct  (=> (and (= inline$$Le$1$dst@1 (<= inline$$MulU64$0$dst@2 |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (= (ControlFlow 0 1952151) 1952191)) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon88_Else$1_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon88_Else_correct|  (=> (and (not $abort_flag@61) (= (ControlFlow 0 1952157) 1952151)) inline$$Le$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon88_Then_correct|  (=> $abort_flag@61 (=> (and (and (= $abort_code@60 $abort_code@60) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@60)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0) (= (ControlFlow 0 1953436) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_Diem_value'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t65@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t65@1|) (=> (and (= |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t65@1|)) (= |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (and (=> (= (ControlFlow 0 1952097) 1953436) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon88_Then_correct|) (=> (= (ControlFlow 0 1952097) 1952157) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon88_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon87_Else_correct|  (=> (and (and (and (not $abort_flag@61) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@1| (|v#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2|))) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_Balance'$1_XUS_XUS''@1|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1| ($Mutation_546962 (|l#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2|) (let ((l@@0 (|l#Vec_33444| (|p#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2|))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2|)) l@@0 0) (+ l@@0 1))) (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| (|v#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2|)))))) (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1|)) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_Diem_Diem'$1_XUS_XUS''@1|)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t65@1| (|v#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@1|)) (= (ControlFlow 0 1952103) 1952097)))) |inline$$1_Diem_value'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon87_Then_correct|  (=> $abort_flag@61 (=> (and (and (= $abort_code@60 $abort_code@60) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@60)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0) (= (ControlFlow 0 1953450) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon86_Then$1_correct|  (=> (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@0|) (=> (and (= $abort_code@60 $EXEC_FAILURE_CODE) (= $abort_flag@61 true)) (and (=> (= (ControlFlow 0 1953502) 1953450) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon87_Then_correct|) (=> (= (ControlFlow 0 1953502) 1952103) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon87_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon86_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|)) (= (ControlFlow 0 1953500) 1953502)) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon86_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon86_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@1| ($Mutation_668571 ($Global |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|))) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@2| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@1|)) (and (= $abort_code@60 $abort_code@59) (= $abort_flag@61 $abort_flag@60))) (and (=> (= (ControlFlow 0 1951956) 1953450) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon87_Then_correct|) (=> (= (ControlFlow 0 1951956) 1952103) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon87_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon85_Then_correct|  (=> inline$$Gt$0$dst@1 (and (=> (= (ControlFlow 0 1951934) 1953500) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon86_Then_correct|) (=> (= (ControlFlow 0 1951934) 1951956) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon86_Else_correct|)))))
(let ((inline$$Gt$0$anon0_correct  (=> (= inline$$Gt$0$dst@1 (> inline$$MulU64$0$dst@2 0)) (and (=> (= (ControlFlow 0 1951912) 1951934) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon85_Then_correct|) (=> (= (ControlFlow 0 1951912) 1951926) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon85_Else_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon84_Else_correct|  (=> (not $abort_flag@60) (=> (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@1| ($Mutation_18461 (|l#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|) (let ((l@@1 (|l#Vec_33444| (|p#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)) l@@1 5) (+ l@@1 1))) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)))) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@2| ($Mutation_18461 (|l#$Mutation_18461| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@1|) (|p#$Mutation_18461| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@1|) inline$$AddU64$0$dst@2))) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@3| ($Mutation_657796 (|l#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|) (|p#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)) (|v#$Mutation_18461| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@2|)))) (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_487225 (|Store__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@3|)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@3|)) (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@3|))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 1951918) 1951912))) inline$$Gt$0$anon0_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon84_Then_correct|  (=> $abort_flag@60 (=> (and (and (= $abort_code@59 $abort_code@59) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@59)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1953516) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@60 true) (=> (and (= $abort_code@59 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 1951806) 1953516) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon84_Then_correct|) (=> (= (ControlFlow 0 1951806) 1951918) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon84_Else_correct|))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t57@1| 1) $MAX_U64) (= (ControlFlow 0 1951804) 1951806)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t57@1| 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t57@1| 1)) (= $abort_flag@60 $abort_flag@59)) (and (= $abort_code@59 $abort_code@58) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 1951752) 1953516) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon84_Then_correct|) (=> (= (ControlFlow 0 1951752) 1951918) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon84_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L13_correct|  (=> (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t57@1| (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|))) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 1951812) 1951804) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 1951812) 1951752) inline$$AddU64$0$anon3_Else_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon82_Then_correct|  (=> (and (and inline$$1_CRSN_record$0$$ret0@1 (= $abort_code@58 $abort_code@57)) (and (= $abort_flag@59 $abort_flag@58) (= (ControlFlow 0 1968098) 1951812))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L13_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon81_Else_correct|  (=> (and (not $abort_flag@58) (|$IsValid'u64'| 1014)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0| 7)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t52@0|) (= inline$$1_CRSN_record$0$$ret0@1 inline$$1_CRSN_record$0$$ret0@1))) (and (=> (= (ControlFlow 0 1968078) 1968098) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon82_Then_correct|) (=> (= (ControlFlow 0 1968078) 1968094) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon82_Else_correct|))))))
(let ((inline$$1_CRSN_record$0$L9_correct  (=> (= $abort_flag@58 true) (=> (and (= inline$$1_CRSN_record$0$$ret0@1 inline$$1_CRSN_record$0$$ret0@0) (= $abort_code@57 inline$$1_CRSN_record$0$$t10@1)) (and (=> (= (ControlFlow 0 1957658) 1968112) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon81_Then_correct|) (=> (= (ControlFlow 0 1957658) 1968078) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon81_Else_correct|))))))
(let ((inline$$1_CRSN_record$0$anon35_Then_correct  (=> (and (and $abort_flag@56 (= $abort_code@55 $abort_code@55)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@55) (= (ControlFlow 0 1967924) 1957658))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon34_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@28 $abort_code@28)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@28) (= (ControlFlow 0 1967938) 1957658))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon33_Then_correct  (=> (and (and $abort_flag@27 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@26) (= (ControlFlow 0 1967952) 1957658))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon32_Then_correct  (=> (and (and $abort_flag@26 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@25) (= (ControlFlow 0 1967966) 1957658))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon38_Then_correct  (=> (and (and $abort_flag@24 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@23) (= (ControlFlow 0 1957652) 1957658))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$anon29_Then_correct  (=> (and (and $abort_flag@23 (= $abort_code@22 $abort_code@22)) (and (= inline$$1_CRSN_record$0$$t10@1 $abort_code@22) (= (ControlFlow 0 1968032) 1957658))) inline$$1_CRSN_record$0$L9_correct)))
(let ((inline$$1_CRSN_record$0$L8_correct  (=> (= $abort_flag@58 $abort_flag@57) (=> (and (= inline$$1_CRSN_record$0$$ret0@1 inline$$1_CRSN_record$0$$t16@1) (= $abort_code@57 $abort_code@56)) (and (=> (= (ControlFlow 0 1957528) 1968112) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon81_Then_correct|) (=> (= (ControlFlow 0 1957528) 1968078) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon81_Else_correct|))))))
(let ((inline$$1_CRSN_record$0$anon35_Else_correct  (=> (not $abort_flag@56) (=> (and (= $1_CRSN_CRSN_$memory@0 ($Memory_576150 (|Store__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) (|a#$Global| (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$ret0)) true) (|Store__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) (|a#$Global| (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$ret0)) (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$ret0)))) (= true true)) (=> (and (and (= inline$$1_CRSN_record$0$$t16@1 true) (= $abort_flag@57 $abort_flag@56)) (and (= $abort_code@56 $abort_code@55) (= (ControlFlow 0 1967910) 1957528))) inline$$1_CRSN_record$0$L8_correct)))))
(let ((inline$$1_CRSN_shift_window_right$0$L4_correct  (=> (and (= $abort_flag@56 true) (= $abort_code@55 inline$$1_CRSN_shift_window_right$0$$t5@1)) (and (=> (= (ControlFlow 0 1967826) 1967924) inline$$1_CRSN_record$0$anon35_Then_correct) (=> (= (ControlFlow 0 1967826) 1967910) inline$$1_CRSN_record$0$anon35_Else_correct)))))
(let ((inline$$1_CRSN_shift_window_right$0$anon13_Then_correct  (=> (and (and $abort_flag@54 (= $abort_code@53 $abort_code@53)) (and (= inline$$1_CRSN_shift_window_right$0$$t5@1 $abort_code@53) (= (ControlFlow 0 1967820) 1967826))) inline$$1_CRSN_shift_window_right$0$L4_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$anon12_Then_correct  (=> (and (and $abort_flag@53 (= $abort_code@52 $abort_code@52)) (and (= inline$$1_CRSN_shift_window_right$0$$t5@1 $abort_code@52) (= (ControlFlow 0 1967840) 1967826))) inline$$1_CRSN_shift_window_right$0$L4_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$anon10_Then_correct  (=> (and (and $abort_flag@35 (= $abort_code@34 $abort_code@34)) (and (= inline$$1_CRSN_shift_window_right$0$$t5@1 $abort_code@34) (= (ControlFlow 0 1967868) 1967826))) inline$$1_CRSN_shift_window_right$0$L4_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$L3_correct  (=> (and (= $abort_flag@56 $abort_flag@55) (= $abort_code@55 $abort_code@54)) (and (=> (= (ControlFlow 0 1967806) 1967924) inline$$1_CRSN_record$0$anon35_Then_correct) (=> (= (ControlFlow 0 1967806) 1967910) inline$$1_CRSN_record$0$anon35_Else_correct)))))
(let ((inline$$1_CRSN_shift_window_right$0$anon13_Else_correct  (=> (not $abort_flag@54) (=> (and (and (and (= inline$$1_CRSN_shift_window_right$0$$t11@1 ($Mutation_18461 (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1) (let ((l@@2 (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)) l@@2 0) (+ l@@2 1))) (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)))) (= inline$$1_CRSN_shift_window_right$0$$t11@2 ($Mutation_18461 (|l#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@1) (|p#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@1) inline$$AddU64$5$dst@2))) (and (= inline$$1_CRSN_shift_window_right$0$$t0@2 ($Mutation_577037 (|l#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1) (|p#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1) ($1_CRSN_CRSN (|v#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@2) (|$size#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)) (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1))))) (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@3| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@2)))) (and (and (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@3| |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@3|) (= $abort_flag@55 $abort_flag@54)) (and (= $abort_code@54 $abort_code@53) (= (ControlFlow 0 1967802) 1967806)))) inline$$1_CRSN_shift_window_right$0$L3_correct))))
(let ((inline$$AddU64$5$anon3_Then$1_correct  (=> (= $abort_code@53 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@54 true) (= inline$$AddU64$5$dst@2 inline$$AddU64$5$dst@0)) (and (=> (= (ControlFlow 0 1967744) 1967820) inline$$1_CRSN_shift_window_right$0$anon13_Then_correct) (=> (= (ControlFlow 0 1967744) 1967802) inline$$1_CRSN_shift_window_right$0$anon13_Else_correct))))))
(let ((inline$$AddU64$5$anon3_Then_correct  (=> (and (> (+ inline$$1_CRSN_shift_window_right$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1) $MAX_U64) (= (ControlFlow 0 1967742) 1967744)) inline$$AddU64$5$anon3_Then$1_correct)))
(let ((inline$$AddU64$5$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_CRSN_shift_window_right$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (=> (and (and (= inline$$AddU64$5$dst@1 (+ inline$$1_CRSN_shift_window_right$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (= $abort_code@53 $abort_code@52)) (and (= $abort_flag@54 $abort_flag@53) (= inline$$AddU64$5$dst@2 inline$$AddU64$5$dst@1))) (and (=> (= (ControlFlow 0 1967690) 1967820) inline$$1_CRSN_shift_window_right$0$anon13_Then_correct) (=> (= (ControlFlow 0 1967690) 1967802) inline$$1_CRSN_shift_window_right$0$anon13_Else_correct))))))
(let ((inline$$1_CRSN_shift_window_right$0$anon12_Else_correct  (=> (not $abort_flag@53) (=> (and (= inline$$1_CRSN_shift_window_right$0$$t0@1 ($Mutation_577037 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3) (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3) ($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)) (|$size#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)) (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$ret0@1)))) (= inline$$1_CRSN_shift_window_right$0$$t9@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_shift_window_right$0$$t0@1)))) (and (=> (= (ControlFlow 0 1967750) 1967742) inline$$AddU64$5$anon3_Then_correct) (=> (= (ControlFlow 0 1967750) 1967690) inline$$AddU64$5$anon3_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$L24_correct  (=> (= $abort_flag@53 true) (=> (and (= $abort_code@52 inline$$1_BitVector_shift_left$0$$t12@1) (= inline$$1_BitVector_shift_left$0$$ret0@1 inline$$1_BitVector_shift_left$0$$ret0@0)) (and (=> (= (ControlFlow 0 1963803) 1967840) inline$$1_CRSN_shift_window_right$0$anon12_Then_correct) (=> (= (ControlFlow 0 1963803) 1967750) inline$$1_CRSN_shift_window_right$0$anon12_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon50_Then_correct  (=> (and (and $abort_flag@52 (= $abort_code@51 $abort_code@51)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@51) (= (ControlFlow 0 1967533) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$AddU64$4$anon3_Then$1_correct  (=> (= $abort_code@51 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@52 true) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@0)) (and (=> (= (ControlFlow 0 1967497) 1967533) inline$$1_BitVector_shift_left$0$anon50_Then_correct) (=> (= (ControlFlow 0 1967497) 1967519) inline$$1_BitVector_shift_left$0$anon50_Else_correct))))))
(let ((inline$$AddU64$4$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_shift_left$0$$t13@1 1) $MAX_U64) (= (ControlFlow 0 1967495) 1967497)) inline$$AddU64$4$anon3_Then$1_correct)))
(let ((inline$$AddU64$4$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_shift_left$0$$t13@1 1)) (=> (and (and (= inline$$AddU64$4$dst@1 (+ inline$$1_BitVector_shift_left$0$$t13@1 1)) (= $abort_code@51 $abort_code@50)) (and (= $abort_flag@52 $abort_flag@51) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@1))) (and (=> (= (ControlFlow 0 1967443) 1967533) inline$$1_BitVector_shift_left$0$anon50_Then_correct) (=> (= (ControlFlow 0 1967443) 1967519) inline$$1_BitVector_shift_left$0$anon50_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon49_Else_correct  (=> (not $abort_flag@51) (=> (and (= |inline$$1_BitVector_shift_left$0$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$4$dst@2|)) (= |inline$$1_BitVector_shift_left$0$$temp_0'bool'@1| |inline$$1_BitVector_shift_left$0$$temp_0'bool'@1|)) (=> (and (and (= inline$$1_BitVector_shift_left$0$$t19@2 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$4$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$4$dst@2|) false)) (= inline$$1_BitVector_shift_left$0$$t18@3 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t19@2)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|))) (|v#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t19@2)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$4$m'|)))))) (and (= inline$$1_BitVector_shift_left$0$$t0@5 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)) (|v#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@3)))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 1967503) 1967495) inline$$AddU64$4$anon3_Then_correct) (=> (= (ControlFlow 0 1967503) 1967443) inline$$AddU64$4$anon3_Else_correct)))))))
(let ((inline$$1_BitVector_shift_left$0$anon49_Then_correct  (=> (and (and $abort_flag@51 (= $abort_code@50 $abort_code@50)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@50) (= (ControlFlow 0 1967547) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon3_Then$1_correct|  (=> (= $abort_flag@51 true) (=> (and (= $abort_code@50 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'bool'$4$dst@2| |inline$$1_Vector_borrow_mut'bool'$4$dst@0|)) (and (=> (= (ControlFlow 0 1967262) 1967547) inline$$1_BitVector_shift_left$0$anon49_Then_correct) (=> (= (ControlFlow 0 1967262) 1967503) inline$$1_BitVector_shift_left$0$anon49_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$4$v@1| inline$$1_BitVector_shift_left$0$$t13@1)) (= (ControlFlow 0 1967260) 1967262)) |inline$$1_Vector_borrow_mut'bool'$4$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon3_Else_correct|  (=> (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$4$v@1| inline$$1_BitVector_shift_left$0$$t13@1) (=> (and (and (= |inline$$1_Vector_borrow_mut'bool'$4$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2) (let ((l@@3 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2)) l@@3 inline$$1_BitVector_shift_left$0$$t13@1) (+ l@@3 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$4$v@1|) inline$$1_BitVector_shift_left$0$$t13@1))) (= $abort_flag@51 $abort_flag@35)) (and (= $abort_code@50 $abort_code@34) (= |inline$$1_Vector_borrow_mut'bool'$4$dst@2| |inline$$1_Vector_borrow_mut'bool'$4$dst@1|))) (and (=> (= (ControlFlow 0 1967210) 1967547) inline$$1_BitVector_shift_left$0$anon49_Then_correct) (=> (= (ControlFlow 0 1967210) 1967503) inline$$1_BitVector_shift_left$0$anon49_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$4$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$4$v@1| (|v#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@2)) (and (=> (= (ControlFlow 0 1967180) 1967260) |inline$$1_Vector_borrow_mut'bool'$4$anon3_Then_correct|) (=> (= (ControlFlow 0 1967180) 1967210) |inline$$1_Vector_borrow_mut'bool'$4$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_shift_left$0$anon48_Then_correct  (=> inline$$Lt$13$dst@1 (=> (and (= inline$$1_BitVector_shift_left$0$$t18@2 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3) (let ((l@@4 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)) l@@4 1) (+ l@@4 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)))) (= (ControlFlow 0 1967270) 1967180)) |inline$$1_Vector_borrow_mut'bool'$4$anon0_correct|))))
(let ((inline$$1_BitVector_shift_left$0$anon47_Then_correct  (=> (and (and $abort_flag@35 (= $abort_code@34 $abort_code@34)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@34) (= (ControlFlow 0 1967561) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon55_Then_correct  (=> (and (and $abort_flag@47 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@46) (= (ControlFlow 0 1966858) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon54_Then_correct  (=> (and (and $abort_flag@45 (= $abort_code@44 $abort_code@44)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@44) (= (ControlFlow 0 1966872) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon58_Then_correct  (=> (and (and $abort_flag@49 (= $abort_code@48 $abort_code@48)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@48) (= (ControlFlow 0 1965756) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$AddU64$3$anon3_Then$1_correct  (=> (= $abort_code@48 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@49 true) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@0)) (and (=> (= (ControlFlow 0 1965720) 1965756) inline$$1_BitVector_shift_left$0$anon58_Then_correct) (=> (= (ControlFlow 0 1965720) 1965742) inline$$1_BitVector_shift_left$0$anon58_Else_correct))))))
(let ((inline$$AddU64$3$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_shift_left$0$$t1@1 1) $MAX_U64) (= (ControlFlow 0 1965718) 1965720)) inline$$AddU64$3$anon3_Then$1_correct)))
(let ((inline$$AddU64$3$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_shift_left$0$$t1@1 1)) (=> (and (and (= inline$$AddU64$3$dst@1 (+ inline$$1_BitVector_shift_left$0$$t1@1 1)) (= $abort_code@48 $abort_code@47)) (and (= $abort_flag@49 $abort_flag@48) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@1))) (and (=> (= (ControlFlow 0 1965666) 1965756) inline$$1_BitVector_shift_left$0$anon58_Then_correct) (=> (= (ControlFlow 0 1965666) 1965742) inline$$1_BitVector_shift_left$0$anon58_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$L14_correct  (=> (|$IsValid'u64'| 1) (and (=> (= (ControlFlow 0 1965726) 1965718) inline$$AddU64$3$anon3_Then_correct) (=> (= (ControlFlow 0 1965726) 1965666) inline$$AddU64$3$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon55_Else_correct  (=> (and (and (not $abort_flag@47) (= $abort_flag@48 $abort_flag@47)) (and (= $abort_code@47 $abort_code@46) (= (ControlFlow 0 1966844) 1965726))) inline$$1_BitVector_shift_left$0$L14_correct)))
(let ((inline$$1_BitVector_set$1$anon10_Else_correct  (=> (and (not $abort_flag@46) (= |inline$$1_BitVector_set$1$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$3$dst@2|))) (=> (and (and (and (= |inline$$1_BitVector_set$1$$temp_0'bool'@1| |inline$$1_BitVector_set$1$$temp_0'bool'@1|) (= inline$$1_BitVector_set$1$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$3$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$3$dst@2|) true))) (and (= inline$$1_BitVector_set$1$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$1$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_set$1$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$3$m'@1|))))) (= inline$$1_BitVector_set$1$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (|v#$Mutation_456873| inline$$1_BitVector_set$1$$t11@2)))))) (and (and (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_set$1$$t0@1)) (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@2|)) (and (= $abort_flag@47 $abort_flag@46) (= $abort_code@46 $abort_code@45)))) (and (=> (= (ControlFlow 0 1966802) 1966858) inline$$1_BitVector_shift_left$0$anon55_Then_correct) (=> (= (ControlFlow 0 1966802) 1966844) inline$$1_BitVector_shift_left$0$anon55_Else_correct))))))
(let ((inline$$1_BitVector_set$1$L3_correct  (=> (and (= $abort_flag@47 true) (= $abort_code@46 inline$$1_BitVector_set$1$$t7@1)) (and (=> (= (ControlFlow 0 1966510) 1966858) inline$$1_BitVector_shift_left$0$anon55_Then_correct) (=> (= (ControlFlow 0 1966510) 1966844) inline$$1_BitVector_shift_left$0$anon55_Else_correct)))))
(let ((inline$$1_BitVector_set$1$anon10_Then_correct  (=> (and (and $abort_flag@46 (= $abort_code@45 $abort_code@45)) (and (= inline$$1_BitVector_set$1$$t7@1 $abort_code@45) (= (ControlFlow 0 1966816) 1966510))) inline$$1_BitVector_set$1$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon3_Then$1_correct|  (=> (and (and (= $abort_code@45 $EXEC_FAILURE_CODE) (= $abort_flag@46 true)) (and (= |inline$$1_Vector_borrow_mut'bool'$3$dst@2| |inline$$1_Vector_borrow_mut'bool'$3$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$3$m'@1| |inline$$1_Vector_borrow_mut'bool'$3$m'@0|))) (and (=> (= (ControlFlow 0 1966708) 1966816) inline$$1_BitVector_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1966708) 1966802) inline$$1_BitVector_set$1$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$3$v@1| inline$$Sub$6$dst@2)) (= (ControlFlow 0 1966706) 1966708)) |inline$$1_Vector_borrow_mut'bool'$3$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$3$v@1| inline$$Sub$6$dst@2) (= |inline$$1_Vector_borrow_mut'bool'$3$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1) (let ((l@@5 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1)) l@@5 inline$$Sub$6$dst@2) (+ l@@5 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$3$v@1|) inline$$Sub$6$dst@2)))) (=> (and (and (= $abort_code@45 $abort_code@44) (= $abort_flag@46 $abort_flag@45)) (and (= |inline$$1_Vector_borrow_mut'bool'$3$dst@2| |inline$$1_Vector_borrow_mut'bool'$3$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$3$m'@1| inline$$1_BitVector_set$1$$t11@1))) (and (=> (= (ControlFlow 0 1966656) 1966816) inline$$1_BitVector_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1966656) 1966802) inline$$1_BitVector_set$1$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$3$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$3$v@1| (|v#$Mutation_456873| inline$$1_BitVector_set$1$$t11@1)) (and (=> (= (ControlFlow 0 1966626) 1966706) |inline$$1_Vector_borrow_mut'bool'$3$anon3_Then_correct|) (=> (= (ControlFlow 0 1966626) 1966656) |inline$$1_Vector_borrow_mut'bool'$3$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_set$1$anon9_Then_correct  (=> inline$$Lt$12$dst@1 (=> (and (= inline$$1_BitVector_set$1$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (let ((l@@6 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) l@@6 1) (+ l@@6 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (= (ControlFlow 0 1966716) 1966626)) |inline$$1_Vector_borrow_mut'bool'$3$anon0_correct|))))
(let ((inline$$1_BitVector_set$1$anon9_Else_correct  (=> (and (and (not inline$$Lt$12$dst@1) (= inline$$1_BitVector_set$1$$t10@0 inline$$1_BitVector_set$1$$t10@0)) (and (= inline$$1_BitVector_set$1$$t7@1 inline$$1_BitVector_set$1$$t10@0) (= (ControlFlow 0 1966504) 1966510))) inline$$1_BitVector_set$1$L3_correct)))
(let ((inline$$1_BitVector_set$1$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_set$1$$t10@0) (= inline$$1_BitVector_set$1$$t10@0 7)) (and (= inline$$1_BitVector_set$1$$t10@0 inline$$1_BitVector_set$1$$t10@0) (= inline$$Lt$12$dst@1 inline$$Lt$12$dst@1))) (and (=> (= (ControlFlow 0 1966488) 1966716) inline$$1_BitVector_set$1$anon9_Then_correct) (=> (= (ControlFlow 0 1966488) 1966504) inline$$1_BitVector_set$1$anon9_Else_correct))))))
(let ((inline$$Lt$12$anon0_correct  (=> (and (= inline$$Lt$12$dst@1 (< inline$$Sub$6$dst@2 |inline$$1_Vector_length'bool'$7$l@1|)) (= (ControlFlow 0 1966452) 1966488)) inline$$1_BitVector_set$1$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_set$1$anon8_Else_correct  (=> (and (not $abort_flag@45) (= (ControlFlow 0 1966458) 1966452)) inline$$Lt$12$anon0_correct)))
(let ((inline$$1_BitVector_set$1$anon8_Then_correct  (=> (and (and $abort_flag@45 (= $abort_code@44 $abort_code@44)) (and (= inline$$1_BitVector_set$1$$t7@1 $abort_code@44) (= (ControlFlow 0 1966830) 1966510))) inline$$1_BitVector_set$1$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$7$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$7$l@1| (|l#Vec_92615| inline$$1_BitVector_set$1$$t5@1)) (and (=> (= (ControlFlow 0 1966398) 1966830) inline$$1_BitVector_set$1$anon8_Then_correct) (=> (= (ControlFlow 0 1966398) 1966458) inline$$1_BitVector_set$1$anon8_Else_correct)))))
(let ((inline$$1_BitVector_set$1$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$1$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$1$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$1$$t12@0)) 0) (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (and (and (= |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_set$1$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$Sub$6$dst@2 inline$$Sub$6$dst@2)) (and (= inline$$1_BitVector_set$1$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))) (= (ControlFlow 0 1966404) 1966398)))) |inline$$1_Vector_length'bool'$7$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon54_Else_correct  (=> (and (not $abort_flag@45) (= (ControlFlow 0 1966836) 1966404)) inline$$1_BitVector_set$1$anon0_correct)))
(let ((inline$$Sub$6$anon3_Then$1_correct  (=> (= $abort_flag@45 true) (=> (and (= $abort_code@44 $EXEC_FAILURE_CODE) (= inline$$Sub$6$dst@2 inline$$Sub$6$dst@0)) (and (=> (= (ControlFlow 0 1965919) 1966872) inline$$1_BitVector_shift_left$0$anon54_Then_correct) (=> (= (ControlFlow 0 1965919) 1966836) inline$$1_BitVector_shift_left$0$anon54_Else_correct))))))
(let ((inline$$Sub$6$anon3_Then_correct  (=> (and (< inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (= (ControlFlow 0 1965917) 1965919)) inline$$Sub$6$anon3_Then$1_correct)))
(let ((inline$$Sub$6$anon3_Else_correct  (=> (<= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (=> (and (and (= inline$$Sub$6$dst@1 (- inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@45 $abort_flag@41)) (and (= $abort_code@44 $abort_code@40) (= inline$$Sub$6$dst@2 inline$$Sub$6$dst@1))) (and (=> (= (ControlFlow 0 1965869) 1966872) inline$$1_BitVector_shift_left$0$anon54_Then_correct) (=> (= (ControlFlow 0 1965869) 1966836) inline$$1_BitVector_shift_left$0$anon54_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon53_Then_correct  (=> inline$$1_BitVector_is_index_set$2$$ret0@1 (and (=> (= (ControlFlow 0 1965925) 1965917) inline$$Sub$6$anon3_Then_correct) (=> (= (ControlFlow 0 1965925) 1965869) inline$$Sub$6$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon57_Else_correct  (=> (and (and (not $abort_flag@44) (= $abort_flag@48 $abort_flag@44)) (and (= $abort_code@47 $abort_code@43) (= (ControlFlow 0 1965565) 1965726))) inline$$1_BitVector_shift_left$0$L14_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon57_Then_correct  (=> (and (and $abort_flag@44 (= $abort_code@43 $abort_code@43)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@43) (= (ControlFlow 0 1965770) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_unset$1$anon10_Else_correct  (=> (and (not $abort_flag@43) (= |inline$$1_BitVector_unset$1$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$2$dst@2|))) (=> (and (and (and (= |inline$$1_BitVector_unset$1$$temp_0'bool'@1| |inline$$1_BitVector_unset$1$$temp_0'bool'@1|) (= inline$$1_BitVector_unset$1$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$2$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$2$dst@2|) false))) (and (= inline$$1_BitVector_unset$1$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$1$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_unset$1$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$2$m'@1|))))) (= inline$$1_BitVector_unset$1$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (|v#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@2)))))) (and (and (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_unset$1$$t0@1)) (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@2|)) (and (= $abort_flag@44 $abort_flag@43) (= $abort_code@43 $abort_code@42)))) (and (=> (= (ControlFlow 0 1965521) 1965770) inline$$1_BitVector_shift_left$0$anon57_Then_correct) (=> (= (ControlFlow 0 1965521) 1965565) inline$$1_BitVector_shift_left$0$anon57_Else_correct))))))
(let ((inline$$1_BitVector_unset$1$L3_correct  (=> (and (= $abort_flag@44 true) (= $abort_code@43 inline$$1_BitVector_unset$1$$t7@1)) (and (=> (= (ControlFlow 0 1965229) 1965770) inline$$1_BitVector_shift_left$0$anon57_Then_correct) (=> (= (ControlFlow 0 1965229) 1965565) inline$$1_BitVector_shift_left$0$anon57_Else_correct)))))
(let ((inline$$1_BitVector_unset$1$anon10_Then_correct  (=> (and (and $abort_flag@43 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_BitVector_unset$1$$t7@1 $abort_code@42) (= (ControlFlow 0 1965535) 1965229))) inline$$1_BitVector_unset$1$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon3_Then$1_correct|  (=> (and (and (= $abort_code@42 $EXEC_FAILURE_CODE) (= $abort_flag@43 true)) (and (= |inline$$1_Vector_borrow_mut'bool'$2$dst@2| |inline$$1_Vector_borrow_mut'bool'$2$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$2$m'@1| |inline$$1_Vector_borrow_mut'bool'$2$m'@0|))) (and (=> (= (ControlFlow 0 1965427) 1965535) inline$$1_BitVector_unset$1$anon10_Then_correct) (=> (= (ControlFlow 0 1965427) 1965521) inline$$1_BitVector_unset$1$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$2$v@1| inline$$Sub$5$dst@2)) (= (ControlFlow 0 1965425) 1965427)) |inline$$1_Vector_borrow_mut'bool'$2$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$2$v@1| inline$$Sub$5$dst@2) (= |inline$$1_Vector_borrow_mut'bool'$2$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1) (let ((l@@7 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1)) l@@7 inline$$Sub$5$dst@2) (+ l@@7 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$2$v@1|) inline$$Sub$5$dst@2)))) (=> (and (and (= $abort_code@42 $abort_code@41) (= $abort_flag@43 $abort_flag@42)) (and (= |inline$$1_Vector_borrow_mut'bool'$2$dst@2| |inline$$1_Vector_borrow_mut'bool'$2$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$2$m'@1| inline$$1_BitVector_unset$1$$t11@1))) (and (=> (= (ControlFlow 0 1965375) 1965535) inline$$1_BitVector_unset$1$anon10_Then_correct) (=> (= (ControlFlow 0 1965375) 1965521) inline$$1_BitVector_unset$1$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$2$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$2$v@1| (|v#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@1)) (and (=> (= (ControlFlow 0 1965345) 1965425) |inline$$1_Vector_borrow_mut'bool'$2$anon3_Then_correct|) (=> (= (ControlFlow 0 1965345) 1965375) |inline$$1_Vector_borrow_mut'bool'$2$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_unset$1$anon9_Then_correct  (=> inline$$Lt$11$dst@1 (=> (and (= inline$$1_BitVector_unset$1$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (let ((l@@8 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) l@@8 1) (+ l@@8 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (= (ControlFlow 0 1965435) 1965345)) |inline$$1_Vector_borrow_mut'bool'$2$anon0_correct|))))
(let ((inline$$1_BitVector_unset$1$anon9_Else_correct  (=> (and (and (not inline$$Lt$11$dst@1) (= inline$$1_BitVector_unset$1$$t10@0 inline$$1_BitVector_unset$1$$t10@0)) (and (= inline$$1_BitVector_unset$1$$t7@1 inline$$1_BitVector_unset$1$$t10@0) (= (ControlFlow 0 1965223) 1965229))) inline$$1_BitVector_unset$1$L3_correct)))
(let ((inline$$1_BitVector_unset$1$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_unset$1$$t10@0) (= inline$$1_BitVector_unset$1$$t10@0 7)) (and (= inline$$1_BitVector_unset$1$$t10@0 inline$$1_BitVector_unset$1$$t10@0) (= inline$$Lt$11$dst@1 inline$$Lt$11$dst@1))) (and (=> (= (ControlFlow 0 1965207) 1965435) inline$$1_BitVector_unset$1$anon9_Then_correct) (=> (= (ControlFlow 0 1965207) 1965223) inline$$1_BitVector_unset$1$anon9_Else_correct))))))
(let ((inline$$Lt$11$anon0_correct  (=> (and (= inline$$Lt$11$dst@1 (< inline$$Sub$5$dst@2 |inline$$1_Vector_length'bool'$6$l@1|)) (= (ControlFlow 0 1965171) 1965207)) inline$$1_BitVector_unset$1$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_unset$1$anon8_Else_correct  (=> (and (not $abort_flag@42) (= (ControlFlow 0 1965177) 1965171)) inline$$Lt$11$anon0_correct)))
(let ((inline$$1_BitVector_unset$1$anon8_Then_correct  (=> (and (and $abort_flag@42 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_BitVector_unset$1$$t7@1 $abort_code@41) (= (ControlFlow 0 1965549) 1965229))) inline$$1_BitVector_unset$1$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$6$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$6$l@1| (|l#Vec_92615| inline$$1_BitVector_unset$1$$t5@1)) (and (=> (= (ControlFlow 0 1965117) 1965549) inline$$1_BitVector_unset$1$anon8_Then_correct) (=> (= (ControlFlow 0 1965117) 1965177) inline$$1_BitVector_unset$1$anon8_Else_correct)))))
(let ((inline$$1_BitVector_unset$1$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$1$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$1$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$1$$t12@0)) 0) (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (and (and (= |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_unset$1$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$Sub$5$dst@2 inline$$Sub$5$dst@2)) (and (= inline$$1_BitVector_unset$1$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))) (= (ControlFlow 0 1965123) 1965117)))) |inline$$1_Vector_length'bool'$6$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon56_Else_correct  (=> (and (not $abort_flag@42) (= (ControlFlow 0 1965555) 1965123)) inline$$1_BitVector_unset$1$anon0_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon56_Then_correct  (=> (and (and $abort_flag@42 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@41) (= (ControlFlow 0 1965784) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$Sub$5$anon3_Then$1_correct  (=> (= $abort_flag@42 true) (=> (and (= $abort_code@41 $EXEC_FAILURE_CODE) (= inline$$Sub$5$dst@2 inline$$Sub$5$dst@0)) (and (=> (= (ControlFlow 0 1964638) 1965784) inline$$1_BitVector_shift_left$0$anon56_Then_correct) (=> (= (ControlFlow 0 1964638) 1965555) inline$$1_BitVector_shift_left$0$anon56_Else_correct))))))
(let ((inline$$Sub$5$anon3_Then_correct  (=> (and (< inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (= (ControlFlow 0 1964636) 1964638)) inline$$Sub$5$anon3_Then$1_correct)))
(let ((inline$$Sub$5$anon3_Else_correct  (=> (<= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1) (=> (and (and (= inline$$Sub$5$dst@1 (- inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@42 $abort_flag@41)) (and (= $abort_code@41 $abort_code@40) (= inline$$Sub$5$dst@2 inline$$Sub$5$dst@1))) (and (=> (= (ControlFlow 0 1964588) 1965784) inline$$1_BitVector_shift_left$0$anon56_Then_correct) (=> (= (ControlFlow 0 1964588) 1965555) inline$$1_BitVector_shift_left$0$anon56_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon53_Else_correct  (=> (not inline$$1_BitVector_is_index_set$2$$ret0@1) (and (=> (= (ControlFlow 0 1964644) 1964636) inline$$Sub$5$anon3_Then_correct) (=> (= (ControlFlow 0 1964644) 1964588) inline$$Sub$5$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon52_Else_correct  (=> (not $abort_flag@41) (and (=> (= (ControlFlow 0 1964501) 1965925) inline$$1_BitVector_shift_left$0$anon53_Then_correct) (=> (= (ControlFlow 0 1964501) 1964644) inline$$1_BitVector_shift_left$0$anon53_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon52_Then_correct  (=> (and (and $abort_flag@41 (= $abort_code@40 $abort_code@40)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@40) (= (ControlFlow 0 1966886) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon10_Else_correct  (=> (not $abort_flag@40) (=> (and (and (= |inline$$1_Vector_borrow'bool'$2$dst@2| |inline$$1_Vector_borrow'bool'$2$dst@2|) (= $abort_code@40 $abort_code@39)) (and (= inline$$1_BitVector_is_index_set$2$$ret0@1 |inline$$1_Vector_borrow'bool'$2$dst@2|) (= $abort_flag@41 $abort_flag@40))) (and (=> (= (ControlFlow 0 1964459) 1966886) inline$$1_BitVector_shift_left$0$anon52_Then_correct) (=> (= (ControlFlow 0 1964459) 1964501) inline$$1_BitVector_shift_left$0$anon52_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$2$L3_correct  (=> (= $abort_code@40 inline$$1_BitVector_is_index_set$2$$t6@1) (=> (and (= inline$$1_BitVector_is_index_set$2$$ret0@1 inline$$1_BitVector_is_index_set$2$$ret0@0) (= $abort_flag@41 true)) (and (=> (= (ControlFlow 0 1964292) 1966886) inline$$1_BitVector_shift_left$0$anon52_Then_correct) (=> (= (ControlFlow 0 1964292) 1964501) inline$$1_BitVector_shift_left$0$anon52_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$2$anon10_Then_correct  (=> (and (and $abort_flag@40 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_BitVector_is_index_set$2$$t6@1 $abort_code@39) (= (ControlFlow 0 1964473) 1964292))) inline$$1_BitVector_is_index_set$2$L3_correct)))
(let ((|inline$$1_Vector_borrow'bool'$2$anon3_Then$1_correct|  (=> (= $abort_flag@40 true) (=> (and (= $abort_code@39 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'bool'$2$dst@2| |inline$$1_Vector_borrow'bool'$2$dst@0|)) (and (=> (= (ControlFlow 0 1964435) 1964473) inline$$1_BitVector_is_index_set$2$anon10_Then_correct) (=> (= (ControlFlow 0 1964435) 1964459) inline$$1_BitVector_is_index_set$2$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'bool'$2$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 inline$$1_BitVector_is_index_set$2$$t10@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= (ControlFlow 0 1964433) 1964435)) |inline$$1_Vector_borrow'bool'$2$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'bool'$2$anon3_Else_correct|  (=> (InRangeVec_16728 inline$$1_BitVector_is_index_set$2$$t10@1 inline$$1_BitVector_shift_left$0$$t1@1) (=> (and (and (= |inline$$1_Vector_borrow'bool'$2$dst@1| (|Select__T@[Int]Bool_| (|v#Vec_92615| inline$$1_BitVector_is_index_set$2$$t10@1) inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@40 $abort_flag@35)) (and (= $abort_code@39 $abort_code@34) (= |inline$$1_Vector_borrow'bool'$2$dst@2| |inline$$1_Vector_borrow'bool'$2$dst@1|))) (and (=> (= (ControlFlow 0 1964383) 1964473) inline$$1_BitVector_is_index_set$2$anon10_Then_correct) (=> (= (ControlFlow 0 1964383) 1964459) inline$$1_BitVector_is_index_set$2$anon10_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$2$anon9_Then_correct  (=> (and inline$$Lt$10$dst@1 (= inline$$1_BitVector_is_index_set$2$$t10@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_BitVector_shift_left$0$$t22@2))) (and (=> (= (ControlFlow 0 1964441) 1964433) |inline$$1_Vector_borrow'bool'$2$anon3_Then_correct|) (=> (= (ControlFlow 0 1964441) 1964383) |inline$$1_Vector_borrow'bool'$2$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_is_index_set$2$anon9_Else_correct  (=> (and (and (not inline$$Lt$10$dst@1) (= inline$$1_BitVector_is_index_set$2$$t9@0 inline$$1_BitVector_is_index_set$2$$t9@0)) (and (= inline$$1_BitVector_is_index_set$2$$t6@1 inline$$1_BitVector_is_index_set$2$$t9@0) (= (ControlFlow 0 1964286) 1964292))) inline$$1_BitVector_is_index_set$2$L3_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_is_index_set$2$$t9@0) (= inline$$1_BitVector_is_index_set$2$$t9@0 7)) (and (= inline$$1_BitVector_is_index_set$2$$t9@0 inline$$1_BitVector_is_index_set$2$$t9@0) (= inline$$Lt$10$dst@1 inline$$Lt$10$dst@1))) (and (=> (= (ControlFlow 0 1964270) 1964441) inline$$1_BitVector_is_index_set$2$anon9_Then_correct) (=> (= (ControlFlow 0 1964270) 1964286) inline$$1_BitVector_is_index_set$2$anon9_Else_correct))))))
(let ((inline$$Lt$10$anon0_correct  (=> (and (= inline$$Lt$10$dst@1 (< inline$$1_BitVector_shift_left$0$$t1@1 |inline$$1_Vector_length'bool'$5$l@1|)) (= (ControlFlow 0 1964234) 1964270)) inline$$1_BitVector_is_index_set$2$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon8_Else_correct  (=> (and (not $abort_flag@35) (= (ControlFlow 0 1964240) 1964234)) inline$$Lt$10$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$2$anon8_Then_correct  (=> (and (and $abort_flag@35 (= $abort_code@34 $abort_code@34)) (and (= inline$$1_BitVector_is_index_set$2$$t6@1 $abort_code@34) (= (ControlFlow 0 1964487) 1964292))) inline$$1_BitVector_is_index_set$2$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$5$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$5$l@1| (|l#Vec_92615| inline$$1_BitVector_is_index_set$2$$t4@1)) (and (=> (= (ControlFlow 0 1964180) 1964487) inline$$1_BitVector_is_index_set$2$anon8_Then_correct) (=> (= (ControlFlow 0 1964180) 1964240) inline$$1_BitVector_is_index_set$2$anon8_Else_correct)))))
(let ((inline$$1_BitVector_is_index_set$2$anon0_correct  (=> (and (and (= inline$$1_BitVector_shift_left$0$$t22@2 inline$$1_BitVector_shift_left$0$$t22@2) (= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (and (= inline$$1_BitVector_is_index_set$2$$t4@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_BitVector_shift_left$0$$t22@2)) (= (ControlFlow 0 1964186) 1964180))) |inline$$1_Vector_length'bool'$5$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon51_Then_correct  (=> (and inline$$Lt$7$dst@1 (= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t1@1)) (=> (and (and (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@3| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@3| |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@3|)) (and (= inline$$1_BitVector_shift_left$0$$t22@2 (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (= (ControlFlow 0 1964493) 1964186))) inline$$1_BitVector_is_index_set$2$anon0_correct))))
(let ((inline$$1_BitVector_shift_left$0$anon62_Then_correct  (=> (and (and $abort_flag@39 (= $abort_code@38 $abort_code@38)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@38) (= (ControlFlow 0 1963797) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@39 true) (=> (and (= $abort_code@38 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 1963761) 1963797) inline$$1_BitVector_shift_left$0$anon62_Then_correct) (=> (= (ControlFlow 0 1963761) 1963783) inline$$1_BitVector_shift_left$0$anon62_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_shift_left$0$$t29@1 1) $MAX_U64) (= (ControlFlow 0 1963759) 1963761)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_shift_left$0$$t29@1 1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ inline$$1_BitVector_shift_left$0$$t29@1 1)) (= $abort_flag@39 $abort_flag@38)) (and (= $abort_code@38 $abort_code@37) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 1963707) 1963797) inline$$1_BitVector_shift_left$0$anon62_Then_correct) (=> (= (ControlFlow 0 1963707) 1963783) inline$$1_BitVector_shift_left$0$anon62_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon61_Else_correct  (=> (and (not $abort_flag@38) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 1963767) 1963759) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 1963767) 1963707) inline$$AddU64$2$anon3_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon61_Then_correct  (=> (and (and $abort_flag@38 (= $abort_code@37 $abort_code@37)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@37) (= (ControlFlow 0 1963817) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_unset$0$anon10_Else_correct  (=> (and (not $abort_flag@37) (= |inline$$1_BitVector_unset$0$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$1$dst@2|))) (=> (and (and (and (= |inline$$1_BitVector_unset$0$$temp_0'bool'@1| |inline$$1_BitVector_unset$0$$temp_0'bool'@1|) (= inline$$1_BitVector_unset$0$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$1$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$1$dst@2|) false))) (and (= inline$$1_BitVector_unset$0$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$0$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_unset$0$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$1$m'@1|))))) (= inline$$1_BitVector_unset$0$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)) (|v#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@2)))))) (and (and (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_unset$0$$t0@1)) (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@2|)) (and (= $abort_flag@38 $abort_flag@37) (= $abort_code@37 $abort_code@36)))) (and (=> (= (ControlFlow 0 1963564) 1963817) inline$$1_BitVector_shift_left$0$anon61_Then_correct) (=> (= (ControlFlow 0 1963564) 1963767) inline$$1_BitVector_shift_left$0$anon61_Else_correct))))))
(let ((inline$$1_BitVector_unset$0$L3_correct  (=> (and (= $abort_flag@38 true) (= $abort_code@37 inline$$1_BitVector_unset$0$$t7@1)) (and (=> (= (ControlFlow 0 1963272) 1963817) inline$$1_BitVector_shift_left$0$anon61_Then_correct) (=> (= (ControlFlow 0 1963272) 1963767) inline$$1_BitVector_shift_left$0$anon61_Else_correct)))))
(let ((inline$$1_BitVector_unset$0$anon10_Then_correct  (=> (and (and $abort_flag@37 (= $abort_code@36 $abort_code@36)) (and (= inline$$1_BitVector_unset$0$$t7@1 $abort_code@36) (= (ControlFlow 0 1963578) 1963272))) inline$$1_BitVector_unset$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon3_Then$1_correct|  (=> (and (and (= $abort_code@36 $EXEC_FAILURE_CODE) (= $abort_flag@37 true)) (and (= |inline$$1_Vector_borrow_mut'bool'$1$dst@2| |inline$$1_Vector_borrow_mut'bool'$1$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$1$m'@1| |inline$$1_Vector_borrow_mut'bool'$1$m'@0|))) (and (=> (= (ControlFlow 0 1963470) 1963578) inline$$1_BitVector_unset$0$anon10_Then_correct) (=> (= (ControlFlow 0 1963470) 1963564) inline$$1_BitVector_unset$0$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$1$v@1| inline$$1_BitVector_shift_left$0$$t29@1)) (= (ControlFlow 0 1963468) 1963470)) |inline$$1_Vector_borrow_mut'bool'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$1$v@1| inline$$1_BitVector_shift_left$0$$t29@1) (= |inline$$1_Vector_borrow_mut'bool'$1$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1) (let ((l@@9 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1)) l@@9 inline$$1_BitVector_shift_left$0$$t29@1) (+ l@@9 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$1$v@1|) inline$$1_BitVector_shift_left$0$$t29@1)))) (=> (and (and (= $abort_code@36 $abort_code@35) (= $abort_flag@37 $abort_flag@36)) (and (= |inline$$1_Vector_borrow_mut'bool'$1$dst@2| |inline$$1_Vector_borrow_mut'bool'$1$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$1$m'@1| inline$$1_BitVector_unset$0$$t11@1))) (and (=> (= (ControlFlow 0 1963418) 1963578) inline$$1_BitVector_unset$0$anon10_Then_correct) (=> (= (ControlFlow 0 1963418) 1963564) inline$$1_BitVector_unset$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$1$v@1| (|v#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@1)) (and (=> (= (ControlFlow 0 1963388) 1963468) |inline$$1_Vector_borrow_mut'bool'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 1963388) 1963418) |inline$$1_Vector_borrow_mut'bool'$1$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_unset$0$anon9_Then_correct  (=> inline$$Lt$9$dst@1 (=> (and (= inline$$1_BitVector_unset$0$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2) (let ((l@@10 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)) l@@10 1) (+ l@@10 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)))) (= (ControlFlow 0 1963478) 1963388)) |inline$$1_Vector_borrow_mut'bool'$1$anon0_correct|))))
(let ((inline$$1_BitVector_unset$0$anon9_Else_correct  (=> (and (and (not inline$$Lt$9$dst@1) (= inline$$1_BitVector_unset$0$$t10@0 inline$$1_BitVector_unset$0$$t10@0)) (and (= inline$$1_BitVector_unset$0$$t7@1 inline$$1_BitVector_unset$0$$t10@0) (= (ControlFlow 0 1963266) 1963272))) inline$$1_BitVector_unset$0$L3_correct)))
(let ((inline$$1_BitVector_unset$0$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_unset$0$$t10@0) (= inline$$1_BitVector_unset$0$$t10@0 7)) (and (= inline$$1_BitVector_unset$0$$t10@0 inline$$1_BitVector_unset$0$$t10@0) (= inline$$Lt$9$dst@1 inline$$Lt$9$dst@1))) (and (=> (= (ControlFlow 0 1963250) 1963478) inline$$1_BitVector_unset$0$anon9_Then_correct) (=> (= (ControlFlow 0 1963250) 1963266) inline$$1_BitVector_unset$0$anon9_Else_correct))))))
(let ((inline$$Lt$9$anon0_correct  (=> (and (= inline$$Lt$9$dst@1 (< inline$$1_BitVector_shift_left$0$$t29@1 |inline$$1_Vector_length'bool'$4$l@1|)) (= (ControlFlow 0 1963214) 1963250)) inline$$1_BitVector_unset$0$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_unset$0$anon8_Else_correct  (=> (and (not $abort_flag@36) (= (ControlFlow 0 1963220) 1963214)) inline$$Lt$9$anon0_correct)))
(let ((inline$$1_BitVector_unset$0$anon8_Then_correct  (=> (and (and $abort_flag@36 (= $abort_code@35 $abort_code@35)) (and (= inline$$1_BitVector_unset$0$$t7@1 $abort_code@35) (= (ControlFlow 0 1963592) 1963272))) inline$$1_BitVector_unset$0$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$4$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$4$l@1| (|l#Vec_92615| inline$$1_BitVector_unset$0$$t5@1)) (and (=> (= (ControlFlow 0 1963160) 1963592) inline$$1_BitVector_unset$0$anon8_Then_correct) (=> (= (ControlFlow 0 1963160) 1963220) inline$$1_BitVector_unset$0$anon8_Else_correct)))))
(let ((inline$$1_BitVector_unset$0$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$0$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_unset$0$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_unset$0$$t12@0)) 0) (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)))) (and (and (= |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_unset$0$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$1_BitVector_shift_left$0$$t29@1 inline$$1_BitVector_shift_left$0$$t29@1)) (and (= inline$$1_BitVector_unset$0$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2))) (= (ControlFlow 0 1963166) 1963160)))) |inline$$1_Vector_length'bool'$4$anon0_correct|)))
(let ((inline$$1_BitVector_shift_left$0$anon60_Then_correct  (=> (and inline$$Lt$8$dst@1 (= (ControlFlow 0 1963598) 1963166)) inline$$1_BitVector_unset$0$anon0_correct)))
(let ((inline$$1_BitVector_shift_left$0$anon59_Then_correct  (=> (and (and $abort_flag@36 (= $abort_code@35 $abort_code@35)) (and (= inline$$1_BitVector_shift_left$0$$t12@1 $abort_code@35) (= (ControlFlow 0 1963831) 1963803))) inline$$1_BitVector_shift_left$0$L24_correct)))
(let ((inline$$1_BitVector_shift_left$0$L7_correct  (=> (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@6| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@4)) (=> (and (and (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@6| |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@6|) (= $abort_flag@53 $abort_flag@50)) (and (= $abort_code@52 $abort_code@49) (= inline$$1_BitVector_shift_left$0$$ret0@1 inline$$1_BitVector_shift_left$0$$t0@4))) (and (=> (= (ControlFlow 0 1962691) 1967840) inline$$1_CRSN_shift_window_right$0$anon12_Then_correct) (=> (= (ControlFlow 0 1962691) 1967750) inline$$1_CRSN_shift_window_right$0$anon12_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon48_Else_correct  (=> (not inline$$Lt$13$dst@1) (=> (and (and (= $abort_flag@50 $abort_flag@35) (= $abort_code@49 $abort_code@34)) (and (= inline$$1_BitVector_shift_left$0$$t0@4 inline$$1_BitVector_shift_left$0$$t0@3) (= (ControlFlow 0 1967064) 1962691))) inline$$1_BitVector_shift_left$0$L7_correct))))
(let ((inline$$Lt$13$anon0_correct  (=> (= inline$$Lt$13$dst@1 (< inline$$1_BitVector_shift_left$0$$t13@1 |inline$$1_Vector_length'bool'$8$l@1|)) (and (=> (= (ControlFlow 0 1967050) 1967270) inline$$1_BitVector_shift_left$0$anon48_Then_correct) (=> (= (ControlFlow 0 1967050) 1967064) inline$$1_BitVector_shift_left$0$anon48_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon47_Else_correct  (=> (and (and (not $abort_flag@35) (= |inline$$1_Vector_length'bool'$8$l@1| |inline$$1_Vector_length'bool'$8$l@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t13@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t16@1)) (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t17@1) (= inline$$1_BitVector_shift_left$0$$t0@3 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) (|p#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@5|)))) (and (and (|$IsValid'$1_BitVector_BitVector'| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@3)) (|$IsValid'vec'bool''| (|v#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@1))) (and (not $abort_flag@35) (= (ControlFlow 0 1967056) 1967050)))) inline$$Lt$13$anon0_correct))))
(let ((|inline$$1_Vector_length'bool'$8$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$8$l@1| (|l#Vec_92615| inline$$1_BitVector_shift_left$0$$t10@1)) (and (=> (= (ControlFlow 0 1966926) 1967561) inline$$1_BitVector_shift_left$0$anon47_Then_correct) (=> (= (ControlFlow 0 1966926) 1967056) inline$$1_BitVector_shift_left$0$anon47_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon46_Then_correct  (=> inline$$Ge$2$dst@1 (=> (and (= inline$$1_BitVector_shift_left$0$$t10@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1))) (= (ControlFlow 0 1966932) 1966926)) |inline$$1_Vector_length'bool'$8$anon0_correct|))))
(let ((inline$$1_BitVector_shift_left$0$anon60_Else_correct  (=> (not inline$$Lt$8$dst@1) (=> (and (and (= $abort_flag@50 $abort_flag@36) (= $abort_code@49 $abort_code@35)) (and (= inline$$1_BitVector_shift_left$0$$t0@4 inline$$1_BitVector_shift_left$0$$t0@2) (= (ControlFlow 0 1962677) 1962691))) inline$$1_BitVector_shift_left$0$L7_correct))))
(let ((inline$$Lt$8$anon0_correct  (=> (= inline$$Lt$8$dst@1 (< inline$$1_BitVector_shift_left$0$$t29@1 inline$$1_BitVector_shift_left$0$$t30@2)) (and (=> (= (ControlFlow 0 1962663) 1963598) inline$$1_BitVector_shift_left$0$anon60_Then_correct) (=> (= (ControlFlow 0 1962663) 1962677) inline$$1_BitVector_shift_left$0$anon60_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon59_Else_correct  (=> (not $abort_flag@36) (=> (and (= inline$$Sub$4$dst@2 inline$$Sub$4$dst@2) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t29@1)) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t30@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t32@1)) (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t33@1) (= inline$$1_BitVector_shift_left$0$$t0@2 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1) |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@4|)))) (and (and (|$IsValid'$1_BitVector_BitVector'| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2)) (not $abort_flag@36)) (and (= inline$$1_BitVector_shift_left$0$$t30@2 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@2))) (= (ControlFlow 0 1962669) 1962663)))) inline$$Lt$8$anon0_correct)))))
(let ((inline$$Sub$4$anon3_Then$1_correct  (=> (= $abort_flag@36 true) (=> (and (= $abort_code@35 $EXEC_FAILURE_CODE) (= inline$$Sub$4$dst@2 inline$$Sub$4$dst@0)) (and (=> (= (ControlFlow 0 1962559) 1963831) inline$$1_BitVector_shift_left$0$anon59_Then_correct) (=> (= (ControlFlow 0 1962559) 1962669) inline$$1_BitVector_shift_left$0$anon59_Else_correct))))))
(let ((inline$$Sub$4$anon3_Then_correct  (=> (and (< inline$$1_BitVector_shift_left$0$$t28@1 inline$$1_BitVector_shift_left$0$$t1@1) (= (ControlFlow 0 1962557) 1962559)) inline$$Sub$4$anon3_Then$1_correct)))
(let ((inline$$Sub$4$anon3_Else_correct  (=> (<= inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t28@1) (=> (and (and (= inline$$Sub$4$dst@1 (- inline$$1_BitVector_shift_left$0$$t28@1 inline$$1_BitVector_shift_left$0$$t1@1)) (= $abort_flag@36 $abort_flag@35)) (and (= $abort_code@35 $abort_code@34) (= inline$$Sub$4$dst@2 inline$$Sub$4$dst@1))) (and (=> (= (ControlFlow 0 1962509) 1963831) inline$$1_BitVector_shift_left$0$anon59_Then_correct) (=> (= (ControlFlow 0 1962509) 1962669) inline$$1_BitVector_shift_left$0$anon59_Else_correct))))))
(let ((inline$$1_BitVector_shift_left$0$anon51_Else_correct  (=> (and (not inline$$Lt$7$dst@1) (= inline$$1_BitVector_shift_left$0$$t28@1 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)))) (and (=> (= (ControlFlow 0 1962565) 1962557) inline$$Sub$4$anon3_Then_correct) (=> (= (ControlFlow 0 1962565) 1962509) inline$$Sub$4$anon3_Else_correct)))))
(let ((inline$$Lt$7$anon0_correct  (=> (= inline$$Lt$7$dst@1 (< inline$$1_BitVector_shift_left$0$$t1@1 inline$$1_BitVector_shift_left$0$$t20@2)) (and (=> (= (ControlFlow 0 1962408) 1964493) inline$$1_BitVector_shift_left$0$anon51_Then_correct) (=> (= (ControlFlow 0 1962408) 1962565) inline$$1_BitVector_shift_left$0$anon51_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon46_Else_correct  (=> (and (not inline$$Ge$2$dst@1) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t1@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t20@1)) (and (|$IsValid'$1_BitVector_BitVector'| inline$$1_BitVector_shift_left$0$$t22@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t24@1))) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t25@1) (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t26@1)) (and (|$IsValid'u64'| inline$$1_BitVector_shift_left$0$$t27@1) (= inline$$1_BitVector_shift_left$0$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) (|p#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1) |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@2|)))) (and (and (|$IsValid'$1_BitVector_BitVector'| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1)) (not $abort_flag@35)) (and (= inline$$1_BitVector_shift_left$0$$t20@2 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t0@1))) (= (ControlFlow 0 1962414) 1962408)))) inline$$Lt$7$anon0_correct)))))
(let ((inline$$Ge$2$anon0_correct  (=> (= inline$$Ge$2$dst@1 (>= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_shift_left$0$$t8@1)) (and (=> (= (ControlFlow 0 1962288) 1966932) inline$$1_BitVector_shift_left$0$anon46_Then_correct) (=> (= (ControlFlow 0 1962288) 1962414) inline$$1_BitVector_shift_left$0$anon46_Else_correct)))))
(let ((inline$$1_BitVector_shift_left$0$anon0_correct  (=> (= (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_BitVector_shift_left$0$$t2@0)) 0) (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_shift_left$0$$t18@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_shift_left$0$$t19@0)) 0) (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1)))) (and (and (= |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_shift_left$0$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (and (= inline$$1_BitVector_shift_left$0$$t8@1 (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@1))) (= (ControlFlow 0 1962294) 1962288)))) inline$$Ge$2$anon0_correct))))
(let ((inline$$1_CRSN_shift_window_right$0$anon11_Else_correct  (=> (not inline$$1_CRSN_shift_window_right$0$$t7@1) (=> (and (= inline$$1_CRSN_shift_window_right$0$$t8@1 ($Mutation_572160 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3) (let ((l@@11 (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)) l@@11 2) (+ l@@11 1))) (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)))) (= (ControlFlow 0 1967567) 1962294)) inline$$1_BitVector_shift_left$0$anon0_correct))))
(let ((inline$$1_CRSN_shift_window_right$0$anon11_Then_correct  (=> (and inline$$1_CRSN_shift_window_right$0$$t7@1 (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@2| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3))) (=> (and (and (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@2| |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@2|) (= $abort_flag@55 $abort_flag@35)) (and (= $abort_code@54 $abort_code@34) (= (ControlFlow 0 1967854) 1967806))) inline$$1_CRSN_shift_window_right$0$L3_correct))))
(let ((inline$$1_CRSN_shift_window_right$0$anon10_Else_correct  (=> (and (and (not $abort_flag@35) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1)) (and (|$IsValid'u64'| 0) (= inline$$1_CRSN_shift_window_right$0$$t7@1 (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 0)))) (and (=> (= (ControlFlow 0 1961022) 1967854) inline$$1_CRSN_shift_window_right$0$anon11_Then_correct) (=> (= (ControlFlow 0 1961022) 1967567) inline$$1_CRSN_shift_window_right$0$anon11_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Else_correct  (=> (not $abort_flag@33) (=> (and (and (= inline$$Sub$3$dst@2 inline$$Sub$3$dst@2) (= $abort_code@34 $abort_code@32)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$Sub$3$dst@2) (= $abort_flag@35 $abort_flag@33))) (and (=> (= (ControlFlow 0 1960073) 1967868) inline$$1_CRSN_shift_window_right$0$anon10_Then_correct) (=> (= (ControlFlow 0 1960073) 1961022) inline$$1_CRSN_shift_window_right$0$anon10_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct  (=> (= $abort_code@34 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1) (=> (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$ret0@0) (= $abort_flag@35 true)) (and (=> (= (ControlFlow 0 1959816) 1967868) inline$$1_CRSN_shift_window_right$0$anon10_Then_correct) (=> (= (ControlFlow 0 1959816) 1961022) inline$$1_CRSN_shift_window_right$0$anon10_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Then_correct  (=> (and (and $abort_flag@34 (= $abort_code@33 $abort_code@33)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 $abort_code@33) (= (ControlFlow 0 1960970) 1959816))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_flag@34 true) (=> (and (= $abort_code@33 $EXEC_FAILURE_CODE) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 1960934) 1960970) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Then_correct) (=> (= (ControlFlow 0 1960934) 1960956) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 1) $MAX_U64) (= (ControlFlow 0 1960932) 1960934)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 1)) (= $abort_flag@34 $abort_flag@31)) (and (= $abort_code@33 $abort_code@30) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 1960880) 1960970) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Then_correct) (=> (= (ControlFlow 0 1960880) 1960956) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon22_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Else_correct  (=> (and (not inline$$Not$1$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 1960940) 1960932) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 1960940) 1960880) inline$$AddU64$1$anon3_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Then_correct  (=> (and (and $abort_flag@31 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 $abort_code@30) (= (ControlFlow 0 1960988) 1959816))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Then_correct  (=> (and (and $abort_flag@33 (= $abort_code@32 $abort_code@32)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 $abort_code@32) (= (ControlFlow 0 1960087) 1959816))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$Sub$3$anon3_Then$1_correct  (=> (= $abort_flag@33 true) (=> (and (= $abort_code@32 $EXEC_FAILURE_CODE) (= inline$$Sub$3$dst@2 inline$$Sub$3$dst@0)) (and (=> (= (ControlFlow 0 1960051) 1960087) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Then_correct) (=> (= (ControlFlow 0 1960051) 1960073) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Else_correct))))))
(let ((inline$$Sub$3$anon3_Then_correct  (=> (and (< inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1) (= (ControlFlow 0 1960049) 1960051)) inline$$Sub$3$anon3_Then$1_correct)))
(let ((inline$$Sub$3$anon3_Else_correct  (=> (<= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1) (=> (and (and (= inline$$Sub$3$dst@1 (- inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (= $abort_flag@33 $abort_flag@32)) (and (= $abort_code@32 $abort_code@31) (= inline$$Sub$3$dst@2 inline$$Sub$3$dst@1))) (and (=> (= (ControlFlow 0 1960001) 1960087) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Then_correct) (=> (= (ControlFlow 0 1960001) 1960073) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon23_Else_correct))))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Then_correct  (=> inline$$Not$1$dst@1 (=> (and (= $abort_flag@32 $abort_flag@31) (= $abort_code@31 $abort_code@30)) (and (=> (= (ControlFlow 0 1960974) 1960049) inline$$Sub$3$anon3_Then_correct) (=> (= (ControlFlow 0 1960974) 1960001) inline$$Sub$3$anon3_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (= inline$$Not$1$dst@1  (not inline$$1_BitVector_is_index_set$1$$ret0@1)) (and (=> (= (ControlFlow 0 1960767) 1960974) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Then_correct) (=> (= (ControlFlow 0 1960767) 1960940) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon21_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Else_correct  (=> (and (not $abort_flag@31) (= (ControlFlow 0 1960773) 1960767)) inline$$Not$1$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon10_Else_correct  (=> (not $abort_flag@30) (=> (and (and (= |inline$$1_Vector_borrow'bool'$1$dst@2| |inline$$1_Vector_borrow'bool'$1$dst@2|) (= $abort_flag@31 $abort_flag@30)) (and (= inline$$1_BitVector_is_index_set$1$$ret0@1 |inline$$1_Vector_borrow'bool'$1$dst@2|) (= $abort_code@30 $abort_code@29))) (and (=> (= (ControlFlow 0 1960695) 1960988) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Then_correct) (=> (= (ControlFlow 0 1960695) 1960773) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$1$L3_correct  (=> (= $abort_flag@31 true) (=> (and (= inline$$1_BitVector_is_index_set$1$$ret0@1 inline$$1_BitVector_is_index_set$1$$ret0@0) (= $abort_code@30 inline$$1_BitVector_is_index_set$1$$t6@1)) (and (=> (= (ControlFlow 0 1960528) 1960988) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Then_correct) (=> (= (ControlFlow 0 1960528) 1960773) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon20_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$1$anon10_Then_correct  (=> (and (and $abort_flag@30 (= $abort_code@29 $abort_code@29)) (and (= inline$$1_BitVector_is_index_set$1$$t6@1 $abort_code@29) (= (ControlFlow 0 1960709) 1960528))) inline$$1_BitVector_is_index_set$1$L3_correct)))
(let ((|inline$$1_Vector_borrow'bool'$1$anon3_Then$1_correct|  (=> (= $abort_code@29 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@30 true) (= |inline$$1_Vector_borrow'bool'$1$dst@2| |inline$$1_Vector_borrow'bool'$1$dst@0|)) (and (=> (= (ControlFlow 0 1960671) 1960709) inline$$1_BitVector_is_index_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1960671) 1960695) inline$$1_BitVector_is_index_set$1$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'bool'$1$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 inline$$1_BitVector_is_index_set$1$$t10@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (= (ControlFlow 0 1960669) 1960671)) |inline$$1_Vector_borrow'bool'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'bool'$1$anon3_Else_correct|  (=> (InRangeVec_16728 inline$$1_BitVector_is_index_set$1$$t10@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1) (=> (and (and (= |inline$$1_Vector_borrow'bool'$1$dst@1| (|Select__T@[Int]Bool_| (|v#Vec_92615| inline$$1_BitVector_is_index_set$1$$t10@1) inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (= $abort_code@29 $abort_code@28)) (and (= $abort_flag@30 $abort_flag@29) (= |inline$$1_Vector_borrow'bool'$1$dst@2| |inline$$1_Vector_borrow'bool'$1$dst@1|))) (and (=> (= (ControlFlow 0 1960619) 1960709) inline$$1_BitVector_is_index_set$1$anon10_Then_correct) (=> (= (ControlFlow 0 1960619) 1960695) inline$$1_BitVector_is_index_set$1$anon10_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$1$anon9_Then_correct  (=> (and inline$$Lt$6$dst@1 (= inline$$1_BitVector_is_index_set$1$$t10@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1))) (and (=> (= (ControlFlow 0 1960677) 1960669) |inline$$1_Vector_borrow'bool'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 1960677) 1960619) |inline$$1_Vector_borrow'bool'$1$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_is_index_set$1$anon9_Else_correct  (=> (and (and (not inline$$Lt$6$dst@1) (= inline$$1_BitVector_is_index_set$1$$t9@0 inline$$1_BitVector_is_index_set$1$$t9@0)) (and (= inline$$1_BitVector_is_index_set$1$$t6@1 inline$$1_BitVector_is_index_set$1$$t9@0) (= (ControlFlow 0 1960522) 1960528))) inline$$1_BitVector_is_index_set$1$L3_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_is_index_set$1$$t9@0) (= inline$$1_BitVector_is_index_set$1$$t9@0 7)) (and (= inline$$1_BitVector_is_index_set$1$$t9@0 inline$$1_BitVector_is_index_set$1$$t9@0) (= inline$$Lt$6$dst@1 inline$$Lt$6$dst@1))) (and (=> (= (ControlFlow 0 1960506) 1960677) inline$$1_BitVector_is_index_set$1$anon9_Then_correct) (=> (= (ControlFlow 0 1960506) 1960522) inline$$1_BitVector_is_index_set$1$anon9_Else_correct))))))
(let ((inline$$Lt$6$anon0_correct  (=> (and (= inline$$Lt$6$dst@1 (< inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 |inline$$1_Vector_length'bool'$3$l@1|)) (= (ControlFlow 0 1960470) 1960506)) inline$$1_BitVector_is_index_set$1$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon8_Else_correct  (=> (and (not $abort_flag@29) (= (ControlFlow 0 1960476) 1960470)) inline$$Lt$6$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$1$anon8_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@28 $abort_code@28)) (and (= inline$$1_BitVector_is_index_set$1$$t6@1 $abort_code@28) (= (ControlFlow 0 1960723) 1960528))) inline$$1_BitVector_is_index_set$1$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$3$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$3$l@1| (|l#Vec_92615| inline$$1_BitVector_is_index_set$1$$t4@1)) (and (=> (= (ControlFlow 0 1960416) 1960723) inline$$1_BitVector_is_index_set$1$anon8_Then_correct) (=> (= (ControlFlow 0 1960416) 1960476) inline$$1_BitVector_is_index_set$1$anon8_Else_correct)))))
(let ((inline$$1_BitVector_is_index_set$1$anon0_correct  (=> (and (and (= inline$$1_CRSN_shift_window_right$0$$t2@1 inline$$1_CRSN_shift_window_right$0$$t2@1) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (and (= inline$$1_BitVector_is_index_set$1$$t4@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1)) (= (ControlFlow 0 1960422) 1960416))) |inline$$1_Vector_length'bool'$3$anon0_correct|)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Then_correct  (=> (and inline$$Lt$5$dst@1 (= (ControlFlow 0 1960729) 1960422)) inline$$1_BitVector_is_index_set$1$anon0_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Else_correct  (=> (not inline$$Lt$5$dst@1) (=> (and (= $abort_flag@32 $abort_flag@29) (= $abort_code@31 $abort_code@28)) (and (=> (= (ControlFlow 0 1959918) 1960049) inline$$Sub$3$anon3_Then_correct) (=> (= (ControlFlow 0 1959918) 1960001) inline$$Sub$3$anon3_Else_correct))))))
(let ((inline$$Lt$5$anon0_correct  (=> (= inline$$Lt$5$dst@1 (< inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@2)) (and (=> (= (ControlFlow 0 1959904) 1960729) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Then_correct) (=> (= (ControlFlow 0 1959904) 1959918) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon19_Else_correct)))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Then_correct  (=> inline$$Lt$4$dst@1 (=> (and (and (and (= 0 0) (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t1@1)) (and (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@1) (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t14@1))) (and (and (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t15@1) (not $abort_flag@29)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t10@2 (|$length#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1)) (= (ControlFlow 0 1959910) 1959904)))) inline$$Lt$5$anon0_correct))))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Else_correct  (=> (and (and (not inline$$Lt$4$dst@1) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t9@1 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0) (= (ControlFlow 0 1959810) 1959816))) inline$$1_BitVector_longest_set_sequence_starting_at$0$L11_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0) (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0 7)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t8@0) (= inline$$Lt$4$dst@1 inline$$Lt$4$dst@1))) (and (=> (= (ControlFlow 0 1959794) 1959910) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Then_correct) (=> (= (ControlFlow 0 1959794) 1959810) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon18_Else_correct))))))
(let ((inline$$Lt$4$anon0_correct  (=> (and (= inline$$Lt$4$dst@1 (< 0 inline$$1_BitVector_longest_set_sequence_starting_at$0$$t5@1)) (= (ControlFlow 0 1959758) 1959794)) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0$1_correct)))
(let ((inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0_correct  (=> (and (and (= inline$$1_CRSN_shift_window_right$0$$t2@1 inline$$1_CRSN_shift_window_right$0$$t2@1) (= 0 0)) (and (= inline$$1_BitVector_longest_set_sequence_starting_at$0$$t5@1 (|$length#$1_BitVector_BitVector| inline$$1_CRSN_shift_window_right$0$$t2@1)) (= (ControlFlow 0 1959764) 1959758))) inline$$Lt$4$anon0_correct)))
(let ((inline$$1_CRSN_shift_window_right$0$anon0_correct  (=> (= (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_shift_window_right$0$$t8@0)) 0) (=> (and (= (|l#Vec_33444| (|p#$Mutation_18461| inline$$1_CRSN_shift_window_right$0$$t11@0)) 0) (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@1| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3))) (=> (and (and (= |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@1| |inline$$1_CRSN_shift_window_right$0$$temp_0'$1_CRSN_CRSN'@1|) (= inline$$1_CRSN_shift_window_right$0$$t2@1 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@3)))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 1960994) 1959764))) inline$$1_BitVector_longest_set_sequence_starting_at$0$anon0_correct)))))
(let ((inline$$1_CRSN_record$0$anon34_Else_correct  (=> (not $abort_flag@29) (=> (and (= inline$$1_CRSN_record$0$$t11@3 ($Mutation_577037 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2) (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2) ($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)) (|$size#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)) (|v#$Mutation_572160| inline$$1_BitVector_set$0$$ret0@1)))) (= (ControlFlow 0 1967874) 1960994)) inline$$1_CRSN_shift_window_right$0$anon0_correct))))
(let ((inline$$1_BitVector_set$0$anon10_Else_correct  (=> (not $abort_flag@28) (=> (and (= |inline$$1_BitVector_set$0$$temp_0'bool'@1| (|v#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$0$dst@2|)) (= |inline$$1_BitVector_set$0$$temp_0'bool'@1| |inline$$1_BitVector_set$0$$temp_0'bool'@1|)) (=> (and (and (and (= inline$$1_BitVector_set$0$$t12@1 ($Mutation_17352 (|l#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$0$dst@2|) (|p#$Mutation_17352| |inline$$1_Vector_borrow_mut'bool'$0$dst@2|) true)) (= inline$$1_BitVector_set$0$$t11@2 ($Mutation_456873 (|l#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|) (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|) (Vec_92615 (|Store__T@[Int]Bool_| (|v#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$0$$t12@1)) (|l#Vec_33444| (|p#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|))) (|v#$Mutation_17352| inline$$1_BitVector_set$0$$t12@1)) (|l#Vec_92615| (|v#$Mutation_456873| |inline$$1_Vector_borrow_mut'bool'$0$m'@1|)))))) (and (= inline$$1_BitVector_set$0$$t0@1 ($Mutation_572160 (|l#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1) (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1) ($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)) (|v#$Mutation_456873| inline$$1_BitVector_set$0$$t11@2)))) (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2| (|v#$Mutation_572160| inline$$1_BitVector_set$0$$t0@1)))) (and (and (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2| |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@2|) (= inline$$1_BitVector_set$0$$ret0@1 inline$$1_BitVector_set$0$$t0@1)) (and (= $abort_flag@29 $abort_flag@28) (= $abort_code@28 $abort_code@27)))) (and (=> (= (ControlFlow 0 1958796) 1967938) inline$$1_CRSN_record$0$anon34_Then_correct) (=> (= (ControlFlow 0 1958796) 1967874) inline$$1_CRSN_record$0$anon34_Else_correct)))))))
(let ((inline$$1_BitVector_set$0$L3_correct  (=> (= inline$$1_BitVector_set$0$$ret0@1 inline$$1_BitVector_set$0$$ret0@0) (=> (and (= $abort_flag@29 true) (= $abort_code@28 inline$$1_BitVector_set$0$$t7@1)) (and (=> (= (ControlFlow 0 1958504) 1967938) inline$$1_CRSN_record$0$anon34_Then_correct) (=> (= (ControlFlow 0 1958504) 1967874) inline$$1_CRSN_record$0$anon34_Else_correct))))))
(let ((inline$$1_BitVector_set$0$anon10_Then_correct  (=> (and (and $abort_flag@28 (= $abort_code@27 $abort_code@27)) (and (= inline$$1_BitVector_set$0$$t7@1 $abort_code@27) (= (ControlFlow 0 1958810) 1958504))) inline$$1_BitVector_set$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@27 $EXEC_FAILURE_CODE) (= $abort_flag@28 true)) (and (= |inline$$1_Vector_borrow_mut'bool'$0$dst@2| |inline$$1_Vector_borrow_mut'bool'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'bool'$0$m'@1| |inline$$1_Vector_borrow_mut'bool'$0$m'@0|))) (and (=> (= (ControlFlow 0 1958702) 1958810) inline$$1_BitVector_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1958702) 1958796) inline$$1_BitVector_set$0$anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$0$v@1| inline$$Sub$2$dst@2)) (= (ControlFlow 0 1958700) 1958702)) |inline$$1_Vector_borrow_mut'bool'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon3_Else_correct|  (=> (and (InRangeVec_16728 |inline$$1_Vector_borrow_mut'bool'$0$v@1| inline$$Sub$2$dst@2) (= |inline$$1_Vector_borrow_mut'bool'$0$dst@1| ($Mutation_17352 (|l#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1) (let ((l@@12 (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1)) l@@12 inline$$Sub$2$dst@2) (+ l@@12 1))) (|Select__T@[Int]Bool_| (|v#Vec_92615| |inline$$1_Vector_borrow_mut'bool'$0$v@1|) inline$$Sub$2$dst@2)))) (=> (and (and (= $abort_code@27 $abort_code@26) (= $abort_flag@28 $abort_flag@27)) (and (= |inline$$1_Vector_borrow_mut'bool'$0$dst@2| |inline$$1_Vector_borrow_mut'bool'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'bool'$0$m'@1| inline$$1_BitVector_set$0$$t11@1))) (and (=> (= (ControlFlow 0 1958650) 1958810) inline$$1_BitVector_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1958650) 1958796) inline$$1_BitVector_set$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'bool'$0$v@1| (|v#$Mutation_456873| inline$$1_BitVector_set$0$$t11@1)) (and (=> (= (ControlFlow 0 1958620) 1958700) |inline$$1_Vector_borrow_mut'bool'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 1958620) 1958650) |inline$$1_Vector_borrow_mut'bool'$0$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_set$0$anon9_Then_correct  (=> inline$$Lt$3$dst@1 (=> (and (= inline$$1_BitVector_set$0$$t11@1 ($Mutation_456873 (|l#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1) (let ((l@@13 (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)) l@@13 1) (+ l@@13 1))) (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)))) (= (ControlFlow 0 1958710) 1958620)) |inline$$1_Vector_borrow_mut'bool'$0$anon0_correct|))))
(let ((inline$$1_BitVector_set$0$anon9_Else_correct  (=> (and (and (not inline$$Lt$3$dst@1) (= inline$$1_BitVector_set$0$$t10@0 inline$$1_BitVector_set$0$$t10@0)) (and (= inline$$1_BitVector_set$0$$t7@1 inline$$1_BitVector_set$0$$t10@0) (= (ControlFlow 0 1958498) 1958504))) inline$$1_BitVector_set$0$L3_correct)))
(let ((inline$$1_BitVector_set$0$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_set$0$$t10@0) (= inline$$1_BitVector_set$0$$t10@0 7)) (and (= inline$$1_BitVector_set$0$$t10@0 inline$$1_BitVector_set$0$$t10@0) (= inline$$Lt$3$dst@1 inline$$Lt$3$dst@1))) (and (=> (= (ControlFlow 0 1958482) 1958710) inline$$1_BitVector_set$0$anon9_Then_correct) (=> (= (ControlFlow 0 1958482) 1958498) inline$$1_BitVector_set$0$anon9_Else_correct))))))
(let ((inline$$Lt$3$anon0_correct  (=> (and (= inline$$Lt$3$dst@1 (< inline$$Sub$2$dst@2 |inline$$1_Vector_length'bool'$2$l@1|)) (= (ControlFlow 0 1958446) 1958482)) inline$$1_BitVector_set$0$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_set$0$anon8_Else_correct  (=> (and (not $abort_flag@27) (= (ControlFlow 0 1958452) 1958446)) inline$$Lt$3$anon0_correct)))
(let ((inline$$1_BitVector_set$0$anon8_Then_correct  (=> (and (and $abort_flag@27 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_BitVector_set$0$$t7@1 $abort_code@26) (= (ControlFlow 0 1958824) 1958504))) inline$$1_BitVector_set$0$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$2$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$2$l@1| (|l#Vec_92615| inline$$1_BitVector_set$0$$t5@1)) (and (=> (= (ControlFlow 0 1958392) 1958824) inline$$1_BitVector_set$0$anon8_Then_correct) (=> (= (ControlFlow 0 1958392) 1958452) inline$$1_BitVector_set$0$anon8_Else_correct)))))
(let ((inline$$1_BitVector_set$0$anon0_correct  (=> (and (and (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$0$$t4@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_456873| inline$$1_BitVector_set$0$$t11@0)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_17352| inline$$1_BitVector_set$0$$t12@0)) 0) (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@1| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1)))) (and (and (= |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@1| |inline$$1_BitVector_set$0$$temp_0'$1_BitVector_BitVector'@1|) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@2)) (and (= inline$$1_BitVector_set$0$$t5@1 (|$bit_field#$1_BitVector_BitVector| (|v#$Mutation_572160| inline$$1_CRSN_record$0$$t14@1))) (= (ControlFlow 0 1958398) 1958392)))) |inline$$1_Vector_length'bool'$2$anon0_correct|)))
(let ((inline$$1_CRSN_record$0$anon33_Else_correct  (=> (and (and (not $abort_flag@27) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@2)) (and (= inline$$1_CRSN_record$0$$t14@1 ($Mutation_572160 (|l#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2) (let ((l@@14 (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)) l@@14 2) (+ l@@14 1))) (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2)))) (= (ControlFlow 0 1958830) 1958398))) inline$$1_BitVector_set$0$anon0_correct)))
(let ((inline$$Sub$2$anon3_Then$1_correct  (=> (= $abort_flag@27 true) (=> (and (= $abort_code@26 $EXEC_FAILURE_CODE) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@0)) (and (=> (= (ControlFlow 0 1957893) 1967952) inline$$1_CRSN_record$0$anon33_Then_correct) (=> (= (ControlFlow 0 1957893) 1958830) inline$$1_CRSN_record$0$anon33_Else_correct))))))
(let ((inline$$Sub$2$anon3_Then_correct  (=> (and (< _$t1 inline$$1_CRSN_record$0$$t12@1) (= (ControlFlow 0 1957891) 1957893)) inline$$Sub$2$anon3_Then$1_correct)))
(let ((inline$$Sub$2$anon3_Else_correct  (=> (<= inline$$1_CRSN_record$0$$t12@1 _$t1) (=> (and (and (= inline$$Sub$2$dst@1 (- _$t1 inline$$1_CRSN_record$0$$t12@1)) (= $abort_flag@27 $abort_flag@26)) (and (= $abort_code@26 $abort_code@25) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@1))) (and (=> (= (ControlFlow 0 1957843) 1967952) inline$$1_CRSN_record$0$anon33_Then_correct) (=> (= (ControlFlow 0 1957843) 1958830) inline$$1_CRSN_record$0$anon33_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon32_Else_correct  (=> (and (and (not $abort_flag@26) (= |inline$$1_CRSN_record$0$$temp_0'$1_CRSN_CRSN'@1| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2))) (and (= |inline$$1_CRSN_record$0$$temp_0'$1_CRSN_CRSN'@1| |inline$$1_CRSN_record$0$$temp_0'$1_CRSN_CRSN'@1|) (= inline$$1_CRSN_record$0$$t12@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_record$0$$t11@2))))) (and (=> (= (ControlFlow 0 1957899) 1957891) inline$$Sub$2$anon3_Then_correct) (=> (= (ControlFlow 0 1957899) 1957843) inline$$Sub$2$anon3_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon31_Then$1_correct  (=> (= inline$$1_CRSN_record$0$$t11@2 inline$$1_CRSN_record$0$$t11@0) (=> (and (= $abort_code@25 $EXEC_FAILURE_CODE) (= $abort_flag@26 true)) (and (=> (= (ControlFlow 0 1968018) 1967966) inline$$1_CRSN_record$0$anon32_Then_correct) (=> (= (ControlFlow 0 1968018) 1957899) inline$$1_CRSN_record$0$anon32_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon31_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0)) (= (ControlFlow 0 1968016) 1968018)) inline$$1_CRSN_record$0$anon31_Then$1_correct)))
(let ((inline$$1_CRSN_record$0$anon31_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0) (=> (and (and (= inline$$1_CRSN_record$0$$t11@1 ($Mutation_577037 ($Global inline$$1_CRSN_record$0$$t6@0) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0))) (= inline$$1_CRSN_record$0$$t11@2 inline$$1_CRSN_record$0$$t11@1)) (and (= $abort_code@25 $abort_code@22) (= $abort_flag@26 $abort_flag@23))) (and (=> (= (ControlFlow 0 1957736) 1967966) inline$$1_CRSN_record$0$anon32_Then_correct) (=> (= (ControlFlow 0 1957736) 1957899) inline$$1_CRSN_record$0$anon32_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon30_Then_correct  (=> inline$$1_CRSN_check$0$$ret0@1 (and (=> (= (ControlFlow 0 1957714) 1968016) inline$$1_CRSN_record$0$anon31_Then_correct) (=> (= (ControlFlow 0 1957714) 1957736) inline$$1_CRSN_record$0$anon31_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon39_Then_correct  (=> (and inline$$Gt$1$dst@1 (= true true)) (=> (and (and (= inline$$1_CRSN_record$0$$t16@1 true) (= $abort_flag@57 $abort_flag@24)) (and (= $abort_code@56 $abort_code@23) (= (ControlFlow 0 1957638) 1957528))) inline$$1_CRSN_record$0$L8_correct))))
(let ((inline$$1_CRSN_record$0$L5_correct  (=> (= false false) (=> (and (and (= inline$$1_CRSN_record$0$$t16@1 false) (= $abort_flag@57 $abort_flag@25)) (and (= $abort_code@56 $abort_code@24) (= (ControlFlow 0 1957524) 1957528))) inline$$1_CRSN_record$0$L8_correct))))
(let ((inline$$1_CRSN_record$0$anon39_Else_correct  (=> (and (and (not inline$$Gt$1$dst@1) (= $abort_flag@25 $abort_flag@24)) (and (= $abort_code@24 $abort_code@23) (= (ControlFlow 0 1957620) 1957524))) inline$$1_CRSN_record$0$L5_correct)))
(let ((inline$$Gt$1$anon0_correct  (=> (= inline$$Gt$1$dst@1 (> inline$$1_CRSN_record$0$$t19@1 _$t1)) (and (=> (= (ControlFlow 0 1957606) 1957638) inline$$1_CRSN_record$0$anon39_Then_correct) (=> (= (ControlFlow 0 1957606) 1957620) inline$$1_CRSN_record$0$anon39_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon38_Else_correct  (=> (and (and (not $abort_flag@24) (= inline$$1_CRSN_record$0$$t18@2 inline$$1_CRSN_record$0$$t18@2)) (and (= inline$$1_CRSN_record$0$$t19@1 (|$min_nonce#$1_CRSN_CRSN| inline$$1_CRSN_record$0$$t18@2)) (= (ControlFlow 0 1957612) 1957606))) inline$$Gt$1$anon0_correct)))
(let ((inline$$1_CRSN_record$0$anon37_Then$1_correct  (=> (= inline$$1_CRSN_record$0$$t18@2 inline$$1_CRSN_record$0$$t18@0) (=> (and (= $abort_code@23 $EXEC_FAILURE_CODE) (= $abort_flag@24 true)) (and (=> (= (ControlFlow 0 1957710) 1957652) inline$$1_CRSN_record$0$anon38_Then_correct) (=> (= (ControlFlow 0 1957710) 1957612) inline$$1_CRSN_record$0$anon38_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0)) (= (ControlFlow 0 1957708) 1957710)) inline$$1_CRSN_record$0$anon37_Then$1_correct)))
(let ((inline$$1_CRSN_record$0$anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0) (=> (and (and (= inline$$1_CRSN_record$0$$t18@1 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0)) (= inline$$1_CRSN_record$0$$t18@2 inline$$1_CRSN_record$0$$t18@1)) (and (= $abort_code@23 $abort_code@22) (= $abort_flag@24 $abort_flag@23))) (and (=> (= (ControlFlow 0 1957546) 1957652) inline$$1_CRSN_record$0$anon38_Then_correct) (=> (= (ControlFlow 0 1957546) 1957612) inline$$1_CRSN_record$0$anon38_Else_correct))))))
(let ((inline$$1_CRSN_record$0$anon36_Then_correct  (=> inline$$1_CRSN_record$0$$t17@1 (and (=> (= (ControlFlow 0 1957532) 1957708) inline$$1_CRSN_record$0$anon37_Then_correct) (=> (= (ControlFlow 0 1957532) 1957546) inline$$1_CRSN_record$0$anon37_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon36_Else_correct  (=> (and (and (not inline$$1_CRSN_record$0$$t17@1) (= $abort_flag@25 $abort_flag@23)) (and (= $abort_code@24 $abort_code@22) (= (ControlFlow 0 1957506) 1957524))) inline$$1_CRSN_record$0$L5_correct)))
(let ((inline$$1_CRSN_record$0$anon30_Else_correct  (=> (and (not inline$$1_CRSN_check$0$$ret0@1) (= inline$$1_CRSN_record$0$$t17@1 (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_record$0$$t6@0))) (and (=> (= (ControlFlow 0 1957500) 1957532) inline$$1_CRSN_record$0$anon36_Then_correct) (=> (= (ControlFlow 0 1957500) 1957506) inline$$1_CRSN_record$0$anon36_Else_correct)))))
(let ((inline$$1_CRSN_record$0$anon29_Else_correct  (=> (not $abort_flag@23) (and (=> (= (ControlFlow 0 1957488) 1957714) inline$$1_CRSN_record$0$anon30_Then_correct) (=> (= (ControlFlow 0 1957488) 1957500) inline$$1_CRSN_record$0$anon30_Else_correct)))))
(let ((inline$$1_CRSN_check$0$L9_correct  (=> (and (and (= inline$$1_CRSN_check$0$$t5@1 inline$$1_CRSN_check$0$$t5@1) (= $abort_flag@23 $abort_flag@22)) (and (= $abort_code@22 $abort_code@21) (= inline$$1_CRSN_check$0$$ret0@1 inline$$1_CRSN_check$0$$t5@1))) (and (=> (= (ControlFlow 0 1957256) 1968032) inline$$1_CRSN_record$0$anon29_Then_correct) (=> (= (ControlFlow 0 1957256) 1957488) inline$$1_CRSN_record$0$anon29_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon43_Else$1_correct  (=> (= inline$$Not$0$dst@1 inline$$Not$0$dst@1) (=> (and (and (= inline$$1_CRSN_check$0$$t5@1 inline$$Not$0$dst@1) (= $abort_code@21 $abort_code@20)) (and (= $abort_flag@22 $abort_flag@21) (= (ControlFlow 0 1957244) 1957256))) inline$$1_CRSN_check$0$L9_correct))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_BitVector_is_index_set$0$$ret0@1)) (= (ControlFlow 0 1957226) 1957244)) inline$$1_CRSN_check$0$anon43_Else$1_correct)))
(let ((inline$$1_CRSN_check$0$anon43_Else_correct  (=> (and (not $abort_flag@21) (= (ControlFlow 0 1957232) 1957226)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_CRSN_check$0$anon41_Then_correct  (=> (and inline$$1_CRSN_check$0$$t4@1 (= false false)) (=> (and (and (= inline$$1_CRSN_check$0$$t5@1 false) (= $abort_code@21 $abort_code@17)) (and (= $abort_flag@22 $abort_flag@18) (= (ControlFlow 0 1957306) 1957256))) inline$$1_CRSN_check$0$L9_correct))))
(let ((inline$$1_CRSN_check$0$L11_correct  (=> (= $abort_flag@23 true) (=> (and (= $abort_code@22 inline$$1_CRSN_check$0$$t13@1) (= inline$$1_CRSN_check$0$$ret0@1 inline$$1_CRSN_check$0$$ret0@0)) (and (=> (= (ControlFlow 0 1955409) 1968032) inline$$1_CRSN_record$0$anon29_Then_correct) (=> (= (ControlFlow 0 1955409) 1957488) inline$$1_CRSN_record$0$anon29_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon43_Then_correct  (=> (and (and $abort_flag@21 (= $abort_code@20 $abort_code@20)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@20) (= (ControlFlow 0 1957270) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon10_Else_correct  (=> (not $abort_flag@20) (=> (and (and (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@2|) (= $abort_code@20 $abort_code@19)) (and (= inline$$1_BitVector_is_index_set$0$$ret0@1 |inline$$1_Vector_borrow'bool'$0$dst@2|) (= $abort_flag@21 $abort_flag@20))) (and (=> (= (ControlFlow 0 1957154) 1957270) inline$$1_CRSN_check$0$anon43_Then_correct) (=> (= (ControlFlow 0 1957154) 1957232) inline$$1_CRSN_check$0$anon43_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$L3_correct  (=> (= $abort_code@20 inline$$1_BitVector_is_index_set$0$$t6@1) (=> (and (= inline$$1_BitVector_is_index_set$0$$ret0@1 inline$$1_BitVector_is_index_set$0$$ret0@0) (= $abort_flag@21 true)) (and (=> (= (ControlFlow 0 1956987) 1957270) inline$$1_CRSN_check$0$anon43_Then_correct) (=> (= (ControlFlow 0 1956987) 1957232) inline$$1_CRSN_check$0$anon43_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$anon10_Then_correct  (=> (and (and $abort_flag@20 (= $abort_code@19 $abort_code@19)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 $abort_code@19) (= (ControlFlow 0 1957168) 1956987))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Then$1_correct|  (=> (= $abort_flag@20 true) (=> (and (= $abort_code@19 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@0|)) (and (=> (= (ControlFlow 0 1957130) 1957168) inline$$1_BitVector_is_index_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1957130) 1957154) inline$$1_BitVector_is_index_set$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_16728 inline$$1_BitVector_is_index_set$0$$t10@1 inline$$Sub$1$dst@2)) (= (ControlFlow 0 1957128) 1957130)) |inline$$1_Vector_borrow'bool'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Else_correct|  (=> (InRangeVec_16728 inline$$1_BitVector_is_index_set$0$$t10@1 inline$$Sub$1$dst@2) (=> (and (and (= |inline$$1_Vector_borrow'bool'$0$dst@1| (|Select__T@[Int]Bool_| (|v#Vec_92615| inline$$1_BitVector_is_index_set$0$$t10@1) inline$$Sub$1$dst@2)) (= $abort_flag@20 $abort_flag@19)) (and (= $abort_code@19 $abort_code@18) (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@1|))) (and (=> (= (ControlFlow 0 1957078) 1957168) inline$$1_BitVector_is_index_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 1957078) 1957154) inline$$1_BitVector_is_index_set$0$anon10_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$anon9_Then_correct  (=> (and inline$$Lt$2$dst@1 (= inline$$1_BitVector_is_index_set$0$$t10@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_check$0$$t31@1))) (and (=> (= (ControlFlow 0 1957136) 1957128) |inline$$1_Vector_borrow'bool'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 1957136) 1957078) |inline$$1_Vector_borrow'bool'$0$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_is_index_set$0$anon9_Else_correct  (=> (and (and (not inline$$Lt$2$dst@1) (= inline$$1_BitVector_is_index_set$0$$t9@0 inline$$1_BitVector_is_index_set$0$$t9@0)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 inline$$1_BitVector_is_index_set$0$$t9@0) (= (ControlFlow 0 1956981) 1956987))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_is_index_set$0$$t9@0) (= inline$$1_BitVector_is_index_set$0$$t9@0 7)) (and (= inline$$1_BitVector_is_index_set$0$$t9@0 inline$$1_BitVector_is_index_set$0$$t9@0) (= inline$$Lt$2$dst@1 inline$$Lt$2$dst@1))) (and (=> (= (ControlFlow 0 1956965) 1957136) inline$$1_BitVector_is_index_set$0$anon9_Then_correct) (=> (= (ControlFlow 0 1956965) 1956981) inline$$1_BitVector_is_index_set$0$anon9_Else_correct))))))
(let ((inline$$Lt$2$anon0_correct  (=> (and (= inline$$Lt$2$dst@1 (< inline$$Sub$1$dst@2 |inline$$1_Vector_length'bool'$1$l@1|)) (= (ControlFlow 0 1956929) 1956965)) inline$$1_BitVector_is_index_set$0$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Else_correct  (=> (and (not $abort_flag@19) (= (ControlFlow 0 1956935) 1956929)) inline$$Lt$2$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Then_correct  (=> (and (and $abort_flag@19 (= $abort_code@18 $abort_code@18)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 $abort_code@18) (= (ControlFlow 0 1957182) 1956987))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$1$l@1| (|l#Vec_92615| inline$$1_BitVector_is_index_set$0$$t4@1)) (and (=> (= (ControlFlow 0 1956875) 1957182) inline$$1_BitVector_is_index_set$0$anon8_Then_correct) (=> (= (ControlFlow 0 1956875) 1956935) inline$$1_BitVector_is_index_set$0$anon8_Else_correct)))))
(let ((inline$$1_BitVector_is_index_set$0$anon0_correct  (=> (and (and (= inline$$1_CRSN_check$0$$t31@1 inline$$1_CRSN_check$0$$t31@1) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@2)) (and (= inline$$1_BitVector_is_index_set$0$$t4@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_check$0$$t31@1)) (= (ControlFlow 0 1956881) 1956875))) |inline$$1_Vector_length'bool'$1$anon0_correct|)))
(let ((inline$$1_CRSN_check$0$anon42_Else_correct  (=> (and (and (not $abort_flag@19) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@2)) (and (= inline$$1_CRSN_check$0$$t31@1 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2))) (= (ControlFlow 0 1957188) 1956881))) inline$$1_BitVector_is_index_set$0$anon0_correct)))
(let ((inline$$1_CRSN_check$0$anon42_Then_correct  (=> (and (and $abort_flag@19 (= $abort_code@18 $abort_code@18)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@18) (= (ControlFlow 0 1957284) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$Sub$1$anon3_Then$1_correct  (=> (= $abort_code@18 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@19 true) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@0)) (and (=> (= (ControlFlow 0 1956522) 1957284) inline$$1_CRSN_check$0$anon42_Then_correct) (=> (= (ControlFlow 0 1956522) 1957188) inline$$1_CRSN_check$0$anon42_Else_correct))))))
(let ((inline$$Sub$1$anon3_Then_correct  (=> (and (< _$t1 inline$$1_CRSN_check$0$$t29@1) (= (ControlFlow 0 1956520) 1956522)) inline$$Sub$1$anon3_Then$1_correct)))
(let ((inline$$Sub$1$anon3_Else_correct  (=> (<= inline$$1_CRSN_check$0$$t29@1 _$t1) (=> (and (and (= inline$$Sub$1$dst@1 (- _$t1 inline$$1_CRSN_check$0$$t29@1)) (= $abort_code@18 $abort_code@17)) (and (= $abort_flag@19 $abort_flag@18) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@1))) (and (=> (= (ControlFlow 0 1956472) 1957284) inline$$1_CRSN_check$0$anon42_Then_correct) (=> (= (ControlFlow 0 1956472) 1957188) inline$$1_CRSN_check$0$anon42_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon41_Else_correct  (=> (and (not inline$$1_CRSN_check$0$$t4@1) (= inline$$1_CRSN_check$0$$t29@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2)))) (and (=> (= (ControlFlow 0 1956528) 1956520) inline$$Sub$1$anon3_Then_correct) (=> (= (ControlFlow 0 1956528) 1956472) inline$$Sub$1$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon40_Else$1_correct  (=> (and (and (= inline$$Ge$1$dst@1 inline$$Ge$1$dst@1) (= $abort_flag@18 $abort_flag@17)) (and (= inline$$1_CRSN_check$0$$t4@1 inline$$Ge$1$dst@1) (= $abort_code@17 $abort_code@16))) (and (=> (= (ControlFlow 0 1956377) 1957306) inline$$1_CRSN_check$0$anon41_Then_correct) (=> (= (ControlFlow 0 1956377) 1956528) inline$$1_CRSN_check$0$anon41_Else_correct)))))
(let ((inline$$Ge$1$anon0_correct  (=> (and (= inline$$Ge$1$dst@1 (>= inline$$CastU128$2$dst@1 inline$$AddU128$0$dst@2)) (= (ControlFlow 0 1956359) 1956377)) inline$$1_CRSN_check$0$anon40_Else$1_correct)))
(let ((inline$$1_CRSN_check$0$anon40_Else_correct  (=> (and (not $abort_flag@17) (= (ControlFlow 0 1956365) 1956359)) inline$$Ge$1$anon0_correct)))
(let ((inline$$1_CRSN_check$0$anon35_Then_correct  (=> inline$$Lt$1$dst@1 (=> (and (and (= true true) (= $abort_flag@18 $abort_flag@12)) (and (= inline$$1_CRSN_check$0$$t4@1 true) (= $abort_code@17 $abort_code@12))) (and (=> (= (ControlFlow 0 1957394) 1957306) inline$$1_CRSN_check$0$anon41_Then_correct) (=> (= (ControlFlow 0 1957394) 1956528) inline$$1_CRSN_check$0$anon41_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon40_Then_correct  (=> (and (and $abort_flag@17 (= $abort_code@16 $abort_code@16)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@16) (= (ControlFlow 0 1957320) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$AddU128$0$anon3_Then$1_correct  (=> (= $abort_flag@17 true) (=> (and (= $abort_code@16 $EXEC_FAILURE_CODE) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@0)) (and (=> (= (ControlFlow 0 1956305) 1957320) inline$$1_CRSN_check$0$anon40_Then_correct) (=> (= (ControlFlow 0 1956305) 1956365) inline$$1_CRSN_check$0$anon40_Else_correct))))))
(let ((inline$$AddU128$0$anon3_Then_correct  (=> (and (> (+ inline$$CastU128$3$dst@1 inline$$CastU128$4$dst@1) $MAX_U128) (= (ControlFlow 0 1956303) 1956305)) inline$$AddU128$0$anon3_Then$1_correct)))
(let ((inline$$AddU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (+ inline$$CastU128$3$dst@1 inline$$CastU128$4$dst@1)) (=> (and (and (= inline$$AddU128$0$dst@1 (+ inline$$CastU128$3$dst@1 inline$$CastU128$4$dst@1)) (= $abort_flag@17 $abort_flag@16)) (and (= $abort_code@16 $abort_code@15) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@1))) (and (=> (= (ControlFlow 0 1956251) 1957320) inline$$1_CRSN_check$0$anon40_Then_correct) (=> (= (ControlFlow 0 1956251) 1956365) inline$$1_CRSN_check$0$anon40_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon39_Else_correct  (=> (not $abort_flag@16) (and (=> (= (ControlFlow 0 1956311) 1956303) inline$$AddU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 1956311) 1956251) inline$$AddU128$0$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon39_Then_correct  (=> (and (and $abort_flag@16 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@15) (= (ControlFlow 0 1957334) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$CastU128$4$anon3_Then$1_correct  (=> (= $abort_code@15 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@16 true) (= inline$$CastU128$4$dst@1 inline$$CastU128$4$dst@0)) (and (=> (= (ControlFlow 0 1956144) 1957334) inline$$1_CRSN_check$0$anon39_Then_correct) (=> (= (ControlFlow 0 1956144) 1956311) inline$$1_CRSN_check$0$anon39_Else_correct))))))
(let ((inline$$CastU128$4$anon3_Then_correct  (=> (and (> inline$$1_BitVector_length$0$$ret0@1 $MAX_U128) (= (ControlFlow 0 1956142) 1956144)) inline$$CastU128$4$anon3_Then$1_correct)))
(let ((inline$$CastU128$4$anon3_Else_correct  (=> (and (and (>= $MAX_U128 inline$$1_BitVector_length$0$$ret0@1) (= $abort_code@15 $abort_code@14)) (and (= $abort_flag@16 $abort_flag@15) (= inline$$CastU128$4$dst@1 inline$$1_BitVector_length$0$$ret0@1))) (and (=> (= (ControlFlow 0 1956094) 1957334) inline$$1_CRSN_check$0$anon39_Then_correct) (=> (= (ControlFlow 0 1956094) 1956311) inline$$1_CRSN_check$0$anon39_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon38_Else_correct  (=> (not $abort_flag@15) (and (=> (= (ControlFlow 0 1956150) 1956142) inline$$CastU128$4$anon3_Then_correct) (=> (= (ControlFlow 0 1956150) 1956094) inline$$CastU128$4$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon38_Then_correct  (=> (and (and $abort_flag@15 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@14) (= (ControlFlow 0 1957348) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_BitVector_length$0$anon3_Else_correct  (=> (and (and (not $abort_flag@14) (= |inline$$1_Vector_length'bool'$0$l@1| |inline$$1_Vector_length'bool'$0$l@1|)) (and (= $abort_flag@15 $abort_flag@14) (= inline$$1_BitVector_length$0$$ret0@1 |inline$$1_Vector_length'bool'$0$l@1|))) (and (=> (= (ControlFlow 0 1955993) 1957348) inline$$1_CRSN_check$0$anon38_Then_correct) (=> (= (ControlFlow 0 1955993) 1956150) inline$$1_CRSN_check$0$anon38_Else_correct)))))
(let ((inline$$1_BitVector_length$0$anon3_Then_correct  (=> (and (and $abort_flag@14 (= $abort_code@14 $abort_code@14)) (and (= $abort_flag@15 true) (= inline$$1_BitVector_length$0$$ret0@1 inline$$1_BitVector_length$0$$ret0@0))) (and (=> (= (ControlFlow 0 1956011) 1957348) inline$$1_CRSN_check$0$anon38_Then_correct) (=> (= (ControlFlow 0 1956011) 1956150) inline$$1_CRSN_check$0$anon38_Else_correct)))))
(let ((|inline$$1_Vector_length'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$0$l@1| (|l#Vec_92615| inline$$1_BitVector_length$0$$t1@1)) (and (=> (= (ControlFlow 0 1955969) 1956011) inline$$1_BitVector_length$0$anon3_Then_correct) (=> (= (ControlFlow 0 1955969) 1955993) inline$$1_BitVector_length$0$anon3_Else_correct)))))
(let ((inline$$1_BitVector_length$0$anon0_correct  (=> (= inline$$1_CRSN_check$0$$t23@1 inline$$1_CRSN_check$0$$t23@1) (=> (and (= inline$$1_BitVector_length$0$$t1@1 (|$bit_field#$1_BitVector_BitVector| inline$$1_CRSN_check$0$$t23@1)) (= (ControlFlow 0 1955975) 1955969)) |inline$$1_Vector_length'bool'$0$anon0_correct|))))
(let ((inline$$1_CRSN_check$0$anon37_Else_correct  (=> (not $abort_flag@14) (=> (and (= inline$$1_CRSN_check$0$$t23@1 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2))) (= (ControlFlow 0 1956017) 1955975)) inline$$1_BitVector_length$0$anon0_correct))))
(let ((inline$$1_CRSN_check$0$anon37_Then_correct  (=> (and (and $abort_flag@14 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@14) (= (ControlFlow 0 1957362) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$CastU128$3$anon3_Then$1_correct  (=> (= $abort_code@14 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@14 true) (= inline$$CastU128$3$dst@1 inline$$CastU128$3$dst@0)) (and (=> (= (ControlFlow 0 1955773) 1957362) inline$$1_CRSN_check$0$anon37_Then_correct) (=> (= (ControlFlow 0 1955773) 1956017) inline$$1_CRSN_check$0$anon37_Else_correct))))))
(let ((inline$$CastU128$3$anon3_Then_correct  (=> (and (> inline$$1_CRSN_check$0$$t21@1 $MAX_U128) (= (ControlFlow 0 1955771) 1955773)) inline$$CastU128$3$anon3_Then$1_correct)))
(let ((inline$$CastU128$3$anon3_Else_correct  (=> (and (and (>= $MAX_U128 inline$$1_CRSN_check$0$$t21@1) (= $abort_code@14 $abort_code@13)) (and (= $abort_flag@14 $abort_flag@13) (= inline$$CastU128$3$dst@1 inline$$1_CRSN_check$0$$t21@1))) (and (=> (= (ControlFlow 0 1955723) 1957362) inline$$1_CRSN_check$0$anon37_Then_correct) (=> (= (ControlFlow 0 1955723) 1956017) inline$$1_CRSN_check$0$anon37_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon36_Else_correct  (=> (and (not $abort_flag@13) (= inline$$1_CRSN_check$0$$t21@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2)))) (and (=> (= (ControlFlow 0 1955779) 1955771) inline$$CastU128$3$anon3_Then_correct) (=> (= (ControlFlow 0 1955779) 1955723) inline$$CastU128$3$anon3_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon36_Then_correct  (=> (and (and $abort_flag@13 (= $abort_code@13 $abort_code@13)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@13) (= (ControlFlow 0 1957376) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$CastU128$2$anon3_Then$1_correct  (=> (= $abort_flag@13 true) (=> (and (= $abort_code@13 $EXEC_FAILURE_CODE) (= inline$$CastU128$2$dst@1 inline$$CastU128$2$dst@0)) (and (=> (= (ControlFlow 0 1955634) 1957376) inline$$1_CRSN_check$0$anon36_Then_correct) (=> (= (ControlFlow 0 1955634) 1955779) inline$$1_CRSN_check$0$anon36_Else_correct))))))
(let ((inline$$CastU128$2$anon3_Then_correct  (=> (and (> _$t1 $MAX_U128) (= (ControlFlow 0 1955632) 1955634)) inline$$CastU128$2$anon3_Then$1_correct)))
(let ((inline$$CastU128$2$anon3_Else_correct  (=> (and (and (>= $MAX_U128 _$t1) (= $abort_flag@13 $abort_flag@12)) (and (= $abort_code@13 $abort_code@12) (= inline$$CastU128$2$dst@1 _$t1))) (and (=> (= (ControlFlow 0 1955584) 1957376) inline$$1_CRSN_check$0$anon36_Then_correct) (=> (= (ControlFlow 0 1955584) 1955779) inline$$1_CRSN_check$0$anon36_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon35_Else_correct  (=> (not inline$$Lt$1$dst@1) (and (=> (= (ControlFlow 0 1955640) 1955632) inline$$CastU128$2$anon3_Then_correct) (=> (= (ControlFlow 0 1955640) 1955584) inline$$CastU128$2$anon3_Else_correct)))))
(let ((inline$$Lt$1$anon0_correct  (=> (= inline$$Lt$1$dst@1 (< _$t1 inline$$1_CRSN_check$0$$t17@1)) (and (=> (= (ControlFlow 0 1955501) 1957394) inline$$1_CRSN_check$0$anon35_Then_correct) (=> (= (ControlFlow 0 1955501) 1955640) inline$$1_CRSN_check$0$anon35_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon34_Else_correct  (=> (not $abort_flag@12) (=> (and (and (= |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2)) (= |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1| |inline$$1_CRSN_check$0$$temp_0'$1_CRSN_CRSN'@1|)) (and (= inline$$1_CRSN_check$0$$t17@1 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_577037| inline$$1_CRSN_check$0$$t16@2))) (= (ControlFlow 0 1955507) 1955501))) inline$$Lt$1$anon0_correct))))
(let ((inline$$1_CRSN_check$0$anon34_Then_correct  (=> (and (and $abort_flag@12 (= $abort_code@12 $abort_code@12)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@12) (= (ControlFlow 0 1957408) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_CRSN_check$0$anon33_Then$1_correct  (=> (= $abort_code@12 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@12 true) (= inline$$1_CRSN_check$0$$t16@2 inline$$1_CRSN_check$0$$t16@0)) (and (=> (= (ControlFlow 0 1957460) 1957408) inline$$1_CRSN_check$0$anon34_Then_correct) (=> (= (ControlFlow 0 1957460) 1955507) inline$$1_CRSN_check$0$anon34_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon33_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0)) (= (ControlFlow 0 1957458) 1957460)) inline$$1_CRSN_check$0$anon33_Then$1_correct)))
(let ((inline$$1_CRSN_check$0$anon33_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0) (=> (and (and (= inline$$1_CRSN_check$0$$t16@1 ($Mutation_577037 ($Global inline$$1_CRSN_check$0$$t11@0) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0))) (= $abort_code@12 $abort_code@11)) (and (= $abort_flag@12 $abort_flag@11) (= inline$$1_CRSN_check$0$$t16@2 inline$$1_CRSN_check$0$$t16@1))) (and (=> (= (ControlFlow 0 1955435) 1957408) inline$$1_CRSN_check$0$anon34_Then_correct) (=> (= (ControlFlow 0 1955435) 1955507) inline$$1_CRSN_check$0$anon34_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon32_Then_correct  (=> inline$$1_CRSN_has_crsn$1$$t1@1 (and (=> (= (ControlFlow 0 1955413) 1957458) inline$$1_CRSN_check$0$anon33_Then_correct) (=> (= (ControlFlow 0 1955413) 1955435) inline$$1_CRSN_check$0$anon33_Else_correct)))))
(let ((inline$$1_CRSN_check$0$anon32_Else_correct  (=> (and (and (not inline$$1_CRSN_has_crsn$1$$t1@1) (= inline$$1_CRSN_check$0$$t15@0 inline$$1_CRSN_check$0$$t15@0)) (and (= inline$$1_CRSN_check$0$$t13@1 inline$$1_CRSN_check$0$$t15@0) (= (ControlFlow 0 1955403) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_CRSN_check$0$anon31_Else_correct  (=> (and (not $abort_flag@11) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_CRSN_check$0$$t15@0) (= inline$$1_CRSN_check$0$$t15@0 1)) (and (= inline$$1_CRSN_check$0$$t15@0 inline$$1_CRSN_check$0$$t15@0) (= inline$$1_CRSN_has_crsn$1$$t1@1 inline$$1_CRSN_has_crsn$1$$t1@1))) (and (=> (= (ControlFlow 0 1955387) 1955413) inline$$1_CRSN_check$0$anon32_Then_correct) (=> (= (ControlFlow 0 1955387) 1955403) inline$$1_CRSN_check$0$anon32_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon31_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_CRSN_check$0$$t13@1 $abort_code@11) (= (ControlFlow 0 1957474) 1955409))) inline$$1_CRSN_check$0$L11_correct)))
(let ((inline$$1_CRSN_has_crsn$1$anon0_correct  (=> (= inline$$1_CRSN_check$0$$t11@0 inline$$1_CRSN_check$0$$t11@0) (=> (and (= inline$$1_CRSN_has_crsn$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) inline$$1_CRSN_check$0$$t11@0)) (= inline$$1_CRSN_has_crsn$1$$t1@1 inline$$1_CRSN_has_crsn$1$$t1@1)) (and (=> (= (ControlFlow 0 1955345) 1957474) inline$$1_CRSN_check$0$anon31_Then_correct) (=> (= (ControlFlow 0 1955345) 1955387) inline$$1_CRSN_check$0$anon31_Else_correct))))))
(let ((inline$$1_CRSN_check$0$anon0_correct  (=> (and (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_check$0$$t7@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_check$0$$t16@0)) 0)) (=> (and (and (and (= inline$$1_CRSN_check$0$$t9@0 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (= inline$$1_CRSN_check$0$$t10@0 (- _$t1 (|$min_nonce#$1_CRSN_CRSN| inline$$1_CRSN_check$0$$t9@0)))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| inline$$1_CRSN_check$0$$t11@0) (= inline$$1_CRSN_check$0$$t11@0 (|$addr#$signer| _$t0))) (and (= inline$$1_CRSN_check$0$$t11@0 inline$$1_CRSN_check$0$$t11@0) (= (ControlFlow 0 1955351) 1955345)))) inline$$1_CRSN_has_crsn$1$anon0_correct))))
(let ((inline$$1_CRSN_record$0$anon0_correct  (=> (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t3@0)) 0) (=> (and (= (|l#Vec_33444| (|p#$Mutation_577037| inline$$1_CRSN_record$0$$t11@0)) 0) (= (|l#Vec_33444| (|p#$Mutation_572160| inline$$1_CRSN_record$0$$t14@0)) 0)) (=> (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (|$IsValid'address'| inline$$1_CRSN_record$0$$t6@0) (= inline$$1_CRSN_record$0$$t6@0 (|$addr#$signer| _$t0)))) (and (and (= inline$$1_CRSN_record$0$$t6@0 inline$$1_CRSN_record$0$$t6@0) (= inline$$1_CRSN_record$0$$t7@0 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)))) (and (= inline$$1_CRSN_record$0$$t8@0 (- _$t1 (|$min_nonce#$1_CRSN_CRSN| inline$$1_CRSN_record$0$$t7@0))) (= (ControlFlow 0 1957480) 1955351)))) inline$$1_CRSN_check$0$anon0_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon80_Then_correct|  (=> (and inline$$1_CRSN_has_crsn$0$$t1@1 (= (ControlFlow 0 1968038) 1957480)) inline$$1_CRSN_record$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon83_Then_correct|  (=> (and (and |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t54@1| (= $abort_code@58 $abort_code@11)) (and (= $abort_flag@59 $abort_flag@11) (= (ControlFlow 0 1951645) 1951812))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L13_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon83_Else_correct|  (=> (not |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t54@1|) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1951641) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon80_Else_correct|  (=> (and (and (and (not inline$$1_CRSN_has_crsn$0$$t1@1) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t53@1| (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)))) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t54@1| (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t53@1| _$t1)) (|$IsValid'u64'| 1003))) (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0| 7)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t56@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t54@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t54@1|)))) (and (=> (= (ControlFlow 0 1951625) 1951645) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon83_Then_correct|) (=> (= (ControlFlow 0 1951625) 1951641) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon83_Else_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon79_Else_correct|  (=> (not $abort_flag@11) (and (=> (= (ControlFlow 0 1951573) 1968038) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon80_Then_correct|) (=> (= (ControlFlow 0 1951573) 1951625) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon80_Else_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon79_Then_correct|  (=> $abort_flag@11 (=> (and (and (= $abort_code@11 $abort_code@11) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@11)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968126) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$1_CRSN_has_crsn$0$anon0_correct  (=> (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (=> (and (= inline$$1_CRSN_has_crsn$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_576150| $1_CRSN_CRSN_$memory) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|)) (= inline$$1_CRSN_has_crsn$0$$t1@1 inline$$1_CRSN_has_crsn$0$$t1@1)) (and (=> (= (ControlFlow 0 1951559) 1968126) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon79_Then_correct|) (=> (= (ControlFlow 0 1951559) 1951573) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon79_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon78_Then_correct|  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 1951565) 1951559)) inline$$1_CRSN_has_crsn$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon78_Else_correct|  (=> (not inline$$Lt$0$dst@1) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1951458) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Else$1_correct|  (=> (|$IsValid'u64'| 1011) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0| 8)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t48@0|) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 1951442) 1951565) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon78_Then_correct|) (=> (= (ControlFlow 0 1951442) 1951458) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon78_Else_correct|))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t43@1| inline$$CastU64$0$dst@1)) (= (ControlFlow 0 1951402) 1951442)) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Else$1_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Else_correct|  (=> (and (not $abort_flag@11) (= (ControlFlow 0 1951408) 1951402)) inline$$Lt$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Then_correct|  (=> $abort_flag@11 (=> (and (and (= $abort_code@11 $abort_code@11) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@11)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968140) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$CastU64$0$anon3_Then$1_correct  (=> (= $abort_flag@11 true) (=> (and (= $abort_code@11 $EXEC_FAILURE_CODE) (= inline$$CastU64$0$dst@1 inline$$CastU64$0$dst@0)) (and (=> (= (ControlFlow 0 1951348) 1968140) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Then_correct|) (=> (= (ControlFlow 0 1951348) 1951408) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Else_correct|))))))
(let ((inline$$CastU64$0$anon3_Then_correct  (=> (and (> 18446744073709551615 $MAX_U64) (= (ControlFlow 0 1951346) 1951348)) inline$$CastU64$0$anon3_Then$1_correct)))
(let ((inline$$CastU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 18446744073709551615) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@11 $abort_code@10) (= inline$$CastU64$0$dst@1 18446744073709551615))) (and (=> (= (ControlFlow 0 1951298) 1968140) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Then_correct|) (=> (= (ControlFlow 0 1951298) 1951408) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon77_Else_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon76_Else_correct|  (=> (not $abort_flag@10) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|)) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$temp_0'$1_DiemAccount_DiemAccount'@1|)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t43@1| (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2|))) (|$IsValid'u128'| 18446744073709551615))) (and (=> (= (ControlFlow 0 1951354) 1951346) inline$$CastU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 1951354) 1951298) inline$$CastU64$0$anon3_Else_correct))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon76_Then_correct|  (=> $abort_flag@10 (=> (and (and (= $abort_code@10 $abort_code@10) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@10)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968154) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon75_Then$1_correct|  (=> (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@0|) (=> (and (= $abort_code@10 $EXEC_FAILURE_CODE) (= $abort_flag@10 true)) (and (=> (= (ControlFlow 0 1968206) 1968154) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon76_Then_correct|) (=> (= (ControlFlow 0 1968206) 1951354) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon76_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon75_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|)) (= (ControlFlow 0 1968204) 1968206)) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon75_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon75_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@1| ($Mutation_657796 ($Global |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|))) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@2| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@1|)) (and (= $abort_code@10 $abort_code@9) (= $abort_flag@10 $abort_flag@9))) (and (=> (= (ControlFlow 0 1951197) 1968154) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon76_Then_correct|) (=> (= (ControlFlow 0 1951197) 1951354) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon76_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon74_Then_correct|  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (and (=> (= (ControlFlow 0 1951175) 1968204) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon75_Then_correct|) (=> (= (ControlFlow 0 1951175) 1951197) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon75_Else_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon74_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1951171) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon73_Else_correct|  (=> (and (not $abort_flag@9) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0| 5)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t41@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 1951155) 1951175) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon74_Then_correct|) (=> (= (ControlFlow 0 1951155) 1951171) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon74_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon73_Then_correct|  (=> $abort_flag@9 (=> (and (and (= $abort_code@9 $abort_code@9) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@9)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968220) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 1951113) 1968220) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon73_Then_correct|) (=> (= (ControlFlow 0 1951113) 1951155) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon73_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon72_Else_correct|  (=> (not $abort_flag@9) (=> (and (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@2) (= (ControlFlow 0 1951119) 1951113)) inline$$1_DiemAccount_exists_at$0$anon0_correct))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon72_Then_correct|  (=> $abort_flag@9 (=> (and (and (= $abort_code@9 $abort_code@9) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@9)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968234) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@9 true) (=> (and (= $abort_code@9 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 1950994) 1968234) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon72_Then_correct|) (=> (= (ControlFlow 0 1950994) 1951119) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon72_Else_correct|))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* 0 inline$$Sub$0$dst@2) $MAX_U64) (= (ControlFlow 0 1950992) 1950994)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* 0 inline$$Sub$0$dst@2)) (=> (and (and (= inline$$MulU64$0$dst@1 (* 0 inline$$Sub$0$dst@2)) (= $abort_flag@9 $abort_flag@8)) (and (= $abort_code@9 $abort_code@8) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 1950940) 1968234) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon72_Then_correct|) (=> (= (ControlFlow 0 1950940) 1951119) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon72_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon71_Then_correct|  (=> inline$$Le$0$dst@1 (and (=> (= (ControlFlow 0 1951000) 1950992) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 1951000) 1950940) inline$$MulU64$0$anon3_Else_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon71_Else_correct|  (=> (not inline$$Le$0$dst@1) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1950843) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Else$1_correct|  (=> (|$IsValid'u64'| 20) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0| 8)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t37@0|) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 1950827) 1951000) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon71_Then_correct|) (=> (= (ControlFlow 0 1950827) 1950843) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon71_Else_correct|))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= inline$$MulU128$0$dst@2 18446744073709551615)) (= (ControlFlow 0 1950787) 1950827)) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Else$1_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Else_correct|  (=> (not $abort_flag@8) (=> (and (|$IsValid'u128'| 18446744073709551615) (= (ControlFlow 0 1950793) 1950787)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Then_correct|  (=> $abort_flag@8 (=> (and (and (= $abort_code@8 $abort_code@8) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@8)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968248) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$MulU128$0$anon3_Then$1_correct  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@8 true) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@0)) (and (=> (= (ControlFlow 0 1950727) 1968248) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Then_correct|) (=> (= (ControlFlow 0 1950727) 1950793) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Else_correct|))))))
(let ((inline$$MulU128$0$anon3_Then_correct  (=> (and (> (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1) $MAX_U128) (= (ControlFlow 0 1950725) 1950727)) inline$$MulU128$0$anon3_Then$1_correct)))
(let ((inline$$MulU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (=> (and (and (= inline$$MulU128$0$dst@1 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@8 $abort_flag@7) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@1))) (and (=> (= (ControlFlow 0 1950673) 1968248) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Then_correct|) (=> (= (ControlFlow 0 1950673) 1950793) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon70_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon69_Else_correct|  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 1950733) 1950725) inline$$MulU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 1950733) 1950673) inline$$MulU128$0$anon3_Else_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon69_Then_correct|  (=> $abort_flag@7 (=> (and (and (= $abort_code@7 $abort_code@7) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@7)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968262) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_flag@7 true) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 1950566) 1968262) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon69_Then_correct|) (=> (= (ControlFlow 0 1950566) 1950733) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon69_Else_correct|))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> inline$$Sub$0$dst@2 $MAX_U128) (= (ControlFlow 0 1950564) 1950566)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 inline$$Sub$0$dst@2) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@7 $abort_code@6) (= inline$$CastU128$1$dst@1 inline$$Sub$0$dst@2))) (and (=> (= (ControlFlow 0 1950516) 1968262) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon69_Then_correct|) (=> (= (ControlFlow 0 1950516) 1950733) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon69_Else_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon68_Else_correct|  (=> (not $abort_flag@6) (and (=> (= (ControlFlow 0 1950572) 1950564) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 1950572) 1950516) inline$$CastU128$1$anon3_Else_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon68_Then_correct|  (=> $abort_flag@6 (=> (and (and (= $abort_code@6 $abort_code@6) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@6)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968276) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@6 true) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 1950433) 1968276) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon68_Then_correct|) (=> (= (ControlFlow 0 1950433) 1950572) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon68_Else_correct|))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> 0 $MAX_U128) (= (ControlFlow 0 1950431) 1950433)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 0) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$CastU128$0$dst@1 0))) (and (=> (= (ControlFlow 0 1950383) 1968276) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon68_Then_correct|) (=> (= (ControlFlow 0 1950383) 1950572) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon68_Else_correct|)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon67_Else_correct|  (=> (and (not $abort_flag@5) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 1950439) 1950431) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 1950439) 1950383) inline$$CastU128$0$anon3_Else_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon67_Then_correct|  (=> $abort_flag@5 (=> (and (and (= $abort_code@5 $abort_code@5) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| $abort_code@5)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1968290) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@5 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 1950292) 1968290) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon67_Then_correct|) (=> (= (ControlFlow 0 1950292) 1950439) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon67_Else_correct|))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< 0 0) (= (ControlFlow 0 1950290) 1950292)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 0 0) (=> (and (and (= inline$$Sub$0$dst@1 (- 0 0)) (= $abort_flag@5 $abort_flag@4)) (and (= $abort_code@5 $abort_code@4) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 1950242) 1968290) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon67_Then_correct|) (=> (= (ControlFlow 0 1950242) 1950439) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon67_Else_correct|))))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon66_Then_correct|  (=> inline$$Ge$0$dst@1 (and (=> (= (ControlFlow 0 1950298) 1950290) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 1950298) 1950242) inline$$Sub$0$anon3_Else_correct)))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon66_Else_correct|  (=> (not inline$$Ge$0$dst@1) (=> (and (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t29@1| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0|)) (and (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 1950151) 1950157))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$L21_correct|))))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 20) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0| 7)) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t28@0|) (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1))) (and (=> (= (ControlFlow 0 1950135) 1950298) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon66_Then_correct|) (=> (= (ControlFlow 0 1950135) 1950151) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon66_Else_correct|))))))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= 0 0)) (= (ControlFlow 0 1950099) 1950135)) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon0$1_correct|)))
(let ((|inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon0_correct|  (=> (and (and (and (and (= (|l#Vec_33444| (|p#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t19@0|)) 0) (= (|l#Vec_33444| (|p#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t22@0|)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t23@0|)) 0) (= (|l#Vec_33444| (|p#$Mutation_657796| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t42@0|)) 0))) (and (and (= (|l#Vec_33444| (|p#$Mutation_18461| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t60@0|)) 0) (= (|l#Vec_33444| (|p#$Mutation_668571| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t63@0|)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_546962| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t64@0|)) 0) (= _$t0 _$t0)))) (and (and (and (= _$t1 _$t1) (= 0 0)) (and (= 0 0) (= 0 0))) (and (and (|$IsValid'address'| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0| (|$addr#$signer| _$t0))) (and (= |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0| |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$$t25@0|) (= (ControlFlow 0 1950105) 1950099))))) inline$$Ge$0$anon0_correct)))
(let ((anon35_Then_correct  (=> inline$$1_Roles_has_diem_root_role$0$$ret0@1 (=> (and (and (|$IsValid'u64'| 0) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 1968294) 1950105))) |inline$$1_DiemAccount_epilogue_common'$1_XUS_XUS'$0$anon0_correct|))))
(let ((anon35_Else_correct true))
(let ((anon34_Else_correct  (=> (and (not $abort_flag@4) (|$IsValid'u64'| 1010)) (=> (and (and (|$IsValid'u64'| $t27) (= $t27 7)) (and (= $t27 $t27) (= inline$$1_Roles_has_diem_root_role$0$$ret0@1 inline$$1_Roles_has_diem_root_role$0$$ret0@1))) (and (=> (= (ControlFlow 0 1948070) 1968294) anon35_Then_correct) (=> (= (ControlFlow 0 1948070) 1948086) anon35_Else_correct))))))
(let ((anon34_Then_correct true))
(let ((inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@3) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_diem_root_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@4 $abort_flag@3))) (and (=> (= (ControlFlow 0 1948006) 1969053) anon34_Then_correct) (=> (= (ControlFlow 0 1948006) 1948070) anon34_Else_correct)))))
(let ((inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_Roles_has_diem_root_role$0$$ret0@1 inline$$1_Roles_has_diem_root_role$0$$ret0@0) (= $abort_flag@4 true))) (and (=> (= (ControlFlow 0 1948024) 1969053) anon34_Then_correct) (=> (= (ControlFlow 0 1948024) 1948070) anon34_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= $abort_code@4 $abort_code@2)) (and (= $abort_flag@3 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 1947930) 1948024) inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 1947930) 1948006) inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 1947866) 1948024) inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 1947866) 1948006) inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@1) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 0)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@3 $abort_code@2) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 1947912) 1947866)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 1947982) 1947930) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 1947982) 1947912) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 1947980) 1947982)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 1947884) 1947930) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 1947884) 1947912) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 1947870) 1947980) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 1947870) 1947884) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@3 $abort_code@1) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 1947854) 1947866))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0 _$t0) (= 0 0)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| _$t0))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 1947834) 1947870) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 1947834) 1947854) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_diem_root_role$0$anon0_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 1947988) 1947834)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((anon33_Then_correct  (=> (and $t22@0 (= (ControlFlow 0 1948030) 1947988)) inline$$1_Roles_has_diem_root_role$0$anon0_correct)))
(let ((anon33_Else_correct true))
(let ((anon32_Else_correct  (=> (and (not $abort_flag@0) (|$IsValid'address'| $t20)) (=> (and (and (and (= $t20 (|$addr#$signer| _$t0)) (|$IsValid'address'| 173345816)) (and (= $t22@0 (= $t20 173345816)) (|$IsValid'u64'| 1010))) (and (and (|$IsValid'u64'| $t24) (= $t24 7)) (and (= $t24 $t24) (= $t22@0 $t22@0)))) (and (=> (= (ControlFlow 0 1947330) 1948030) anon33_Then_correct) (=> (= (ControlFlow 0 1947330) 1947346) anon33_Else_correct))))))
(let ((anon32_Then_correct true))
(let ((|inline$$1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'$0$handle@1| (|v#$Mutation_464575| $t16@0)) (= $es@0 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'$0$handle@1|)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_421725| stream@@9)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@9) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t19@0))))
(Multiset_421725 (|Store__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@9) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| $t19@0) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'$0$handle@1| stream_new@@8)))))) (and (=> (= (ControlFlow 0 1947258) 1969067) anon32_Then_correct) (=> (= (ControlFlow 0 1947258) 1947330) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not $t18) (=> (and (and (|$IsValid'u64'| $t17) (= $t17 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t19@0 ($1_DiemAccount_AdminTransactionEvent $t17)) (= (ControlFlow 0 1947264) 1947258))) |inline$$1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'$0$anon0_correct|))))
(let ((anon31_Then_correct true))
(let ((anon30_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'$1_DiemAccount_DiemWriteSetManager'@0| (|v#$Mutation_1070810| $t14@1)) (= |$temp_0'$1_DiemAccount_DiemWriteSetManager'@0| |$temp_0'$1_DiemAccount_DiemWriteSetManager'@0|)) (and (= $t16@0 ($Mutation_464575 (|l#$Mutation_1070810| $t14@1) (let ((l@@15 (|l#Vec_33444| (|p#$Mutation_1070810| $t14@1))))
(Vec_33444 (|Store__T@[Int]Int_| (|v#Vec_33444| (|p#$Mutation_1070810| $t14@1)) l@@15 0) (+ l@@15 1))) (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| (|v#$Mutation_1070810| $t14@1)))) (= $t18  (not (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 1947161) 1969093) anon31_Then_correct) (=> (= (ControlFlow 0 1947161) 1947264) anon31_Else_correct))))))
(let ((anon30_Then_correct true))
(let ((anon29_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1969159) 1969107) anon30_Then_correct) (=> (= (ControlFlow 0 1969159) 1947161) anon30_Else_correct))))))
(let ((anon29_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (= (ControlFlow 0 1969157) 1969159)) anon29_Then$1_correct)))
(let ((anon29_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_1070810 ($Global 173345816) (Vec_33444 (MapConstVec_18066 DefaultVecElem_18066) 0) (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 1947117) 1969107) anon30_Then_correct) (=> (= (ControlFlow 0 1947117) 1947161) anon30_Else_correct))))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@5)) 0)) (= addr@@5 173345816)))
 :qid |DiemAccountbpl.103003:20|
 :skolemid |3602|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (and (and (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@6)) 1)) (= addr@@6 186537453)))
 :qid |DiemAccountbpl.103011:20|
 :skolemid |3603|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) 186537453)) 1)))) (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@7)) 2))))))
 :qid |DiemAccountbpl.103019:20|
 :skolemid |3604|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |DiemAccountbpl.103023:20|
 :skolemid |3605|
)))) (and (and (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@9)) 2))))))
 :qid |DiemAccountbpl.103027:20|
 :skolemid |3606|
)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@10)) 2))))))
 :qid |DiemAccountbpl.103031:20|
 :skolemid |3607|
))) (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |DiemAccountbpl.103035:20|
 :skolemid |3608|
)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@12)) 2)))))
 :qid |DiemAccountbpl.103039:20|
 :skolemid |3609|
))))) (=> (and (and (and (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@13)) 2)))))
 :qid |DiemAccountbpl.103043:20|
 :skolemid |3610|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_477551| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@14)) 4))))
 :qid |DiemAccountbpl.103047:20|
 :skolemid |3611|
))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_477156| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |DiemAccountbpl.103051:20|
 :skolemid |3612|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_477156| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@16) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@16)) 3))))
 :qid |DiemAccountbpl.103055:20|
 :skolemid |3613|
)))) (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_477156| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@17) (not (= (|l#Vec_421811| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_477156| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@17)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |DiemAccountbpl.103059:20|
 :skolemid |3614|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472200| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472200| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472379| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472452| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0 ($Range 0 (|l#Vec_422023| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_472379| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_472379| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@19))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_422023| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_472379| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@19))))) i1)))) 3))))
 :qid |DiemAccountbpl.103079:151|
 :skolemid |3615|
)))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472523| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472607| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472691| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472762| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472846| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_472930| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))))) (=> (and (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473098| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_477889| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DiemAccountbpl.103116:20|
 :skolemid |3616|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473182| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473266| $1_ChainId_ChainId_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473337| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473337| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@20) (or (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0) (and (not (= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0)) (= addr@@20 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0)))))))
 :qid |DiemAccountbpl.103144:20|
 :skolemid |3617|
))) (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@21) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@21) (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (and (not (= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (= addr@@21 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)))))))
 :qid |DiemAccountbpl.103148:20|
 :skolemid |3618|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473580| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@22)))
 :qid |DiemAccountbpl.103160:20|
 :skolemid |3619|
))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473580| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@23)  (and (= addr@@23 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@23))))
 :qid |DiemAccountbpl.103164:20|
 :skolemid |3620|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@24)  (and (= addr@@24 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@24))))
 :qid |DiemAccountbpl.103168:20|
 :skolemid |3621|
)))))) (and (and (and (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487325| $1_VASPDomain_VASPDomainManager_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@25)) 1))))
 :qid |DiemAccountbpl.103172:20|
 :skolemid |3622|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487410| $1_VASPDomain_VASPDomains_$memory) addr@@26)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@26)) 5))))
 :qid |DiemAccountbpl.103176:20|
 :skolemid |3623|
))) (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_478064| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@27)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@27)) 2)))))
 :qid |DiemAccountbpl.103180:20|
 :skolemid |3624|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487544| $1_DesignatedDealer_Dealer_$memory) addr@@28)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@28)) 2))))
 :qid |DiemAccountbpl.103184:20|
 :skolemid |3625|
)))) (and (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (= (|Select__T@[Int]Bool_| (|domain#$Memory_477889| $1_DualAttestation_Credential_$memory) addr@@29)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@29)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@29)) 5)))))
 :qid |DiemAccountbpl.103188:20|
 :skolemid |3626|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@30)))
 :qid |DiemAccountbpl.103192:20|
 :skolemid |3627|
))) (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_473408| $1_AccountFreezing_FreezingBit_$memory) addr@@31)))
 :qid |DiemAccountbpl.103196:20|
 :skolemid |3628|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) addr@@32)))
 :qid |DiemAccountbpl.103200:20|
 :skolemid |3629|
))))) (and (and (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (= (|Select__T@[Int]Bool_| (|domain#$Memory_472200| $1_SlidingNonce_SlidingNonce_$memory) addr@@33)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@33)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@33)) 1)))))
 :qid |DiemAccountbpl.103204:20|
 :skolemid |3630|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (= (|Select__T@[Int]Bool_| (|domain#$Memory_477156| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@34)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@34)) 3))))
 :qid |DiemAccountbpl.103208:20|
 :skolemid |3631|
))) (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (= (|Select__T@[Int]Bool_| (|domain#$Memory_477551| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@35)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@35)) 4))))
 :qid |DiemAccountbpl.103212:20|
 :skolemid |3632|
)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487799| $1_VASP_ParentVASP_$memory) addr@@36)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@36)) 5))))
 :qid |DiemAccountbpl.103216:20|
 :skolemid |3633|
)))) (and (and (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (= (|Select__T@[Int]Bool_| (|domain#$Memory_487899| $1_VASP_ChildVASP_$memory) addr@@37)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_472013| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) addr@@37)) 6))))
 :qid |DiemAccountbpl.103220:20|
 :skolemid |3634|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473722| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_473806| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_471884| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))))))) (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (|$IsValid'u64'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemAccountbpl.103244:20|
 :skolemid |3635|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemAccountbpl.103248:20|
 :skolemid |3636|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_472013| $1_Roles_RoleId_$memory) $a_0@@0))
)))) (and (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory) $a_0@@1)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@1))
 :qid |DiemAccountbpl.103252:20|
 :skolemid |3637|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_495874| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@2))
 :qid |DiemAccountbpl.103256:20|
 :skolemid |3638|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_495874| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) $a_0@@3)))
(|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| $rsc@@3))
 :qid |DiemAccountbpl.103260:20|
 :skolemid |3639|
 :pattern ( (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_473001| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) $a_0@@4)))
(|$IsValid'$1_CRSN_CRSN'| $rsc@@4))
 :qid |DiemAccountbpl.103264:20|
 :skolemid |3640|
 :pattern ( (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_576150| $1_CRSN_CRSN_$memory) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $a_0@@5)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@5) (and (<= (|l#Vec_421889| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@5))) 1) (<= (|l#Vec_421850| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@5))) 1))))
 :qid |DiemAccountbpl.103268:20|
 :skolemid |3641|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_487225| $1_DiemAccount_DiemAccount_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@6)))
(|$IsValid'$1_DiemAccount_DiemWriteSetManager'| $rsc@@6))
 :qid |DiemAccountbpl.103272:20|
 :skolemid |3642|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@7)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@7))
 :qid |DiemAccountbpl.103276:20|
 :skolemid |3643|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_478004| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (= $t9 (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_473651| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)))))) (and (and (and (= $t10 ($1_DiemAccount_AdminTransactionEvent (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_471307| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= $t11 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_472293| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t12 (|$events#$1_DiemConfig_Configuration| $t11)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= _$t0 _$t0) (|$IsValid'address'| 173345816))))))) (and (=> (= (ControlFlow 0 1947095) 1969157) anon29_Then_correct) (=> (= (ControlFlow 0 1947095) 1947117) anon29_Else_correct)))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_421725_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_421725| stream@@10) 0) (forall ((v@@73 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_421725| stream@@10) v@@73) 0)
 :qid |DiemAccountbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemAccountbpl.3705:13|
 :skolemid |136|
))) (= (ControlFlow 0 1945598) 1947095)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_33444| (|p#$Mutation_1070810| $t8)) 0) (= (|l#Vec_33444| (|p#$Mutation_1070810| $t14)) 0)) (and (= (|l#Vec_33444| (|p#$Mutation_464575| $t16)) 0) (= (ControlFlow 0 1945608) 1945598))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 2626409) 1945608) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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

